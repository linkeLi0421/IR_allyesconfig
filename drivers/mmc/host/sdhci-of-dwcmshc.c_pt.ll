; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-of-dwcmshc.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-dwcmshc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.clk_bulk_data = type { ptr, ptr }
%struct.rk3568_priv = type { [3 x %struct.clk_bulk_data], i8 }
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

@__initcall__kmod_sdhci_of_dwcmshc__273_523_sdhci_dwcmshc_driver_init6 = internal global ptr @sdhci_dwcmshc_driver_init, section ".initcall6.init", align 4
@sdhci_dwcmshc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dwcmshc_probe, ptr @dwcmshc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_dwcmshc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwcmshc_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_dwcmshc_driver_exit = internal global ptr @sdhci_dwcmshc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description274 = internal constant [73 x i8] c"sdhci_of_dwcmshc.description=SDHCI platform driver for Synopsys DWC MSHC\00", section ".modinfo", align 1
@__UNIQUE_ID_author275 = internal constant [59 x i8] c"sdhci_of_dwcmshc.author=Jisheng Zhang <jszhang@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [56 x i8] c"sdhci_of_dwcmshc.file=drivers/mmc/host/sdhci-of-dwcmshc\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [32 x i8] c"sdhci_of_dwcmshc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-dwcmshc\00", [18 x i8] zeroinitializer }, align 32
@sdhci_dwcmshc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3568-dwcmshc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_dwcmshc_rk3568_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,dwcmshc-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_dwcmshc_pdata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dwcmshc_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dwcmshc_suspend, ptr @dwcmshc_resume, ptr @dwcmshc_suspend, ptr @dwcmshc_resume, ptr @dwcmshc_suspend, ptr @dwcmshc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@dwcmshc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 357, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: No device match data found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dwcmshc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mmc/host/sdhci-of-dwcmshc.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwcmshc_probe._entry_ptr = internal global ptr @dwcmshc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@dwcmshc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get core clk: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dwcmshc_probe._entry_ptr.9 = internal global ptr @dwcmshc_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@sdhci_dwcmshc_rk3568_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_dwcmshc_rk3568_ops, i32 33558528, i32 32776 }, [20 x i8] zeroinitializer }, align 32
@sdhci_dwcmshc_rk3568_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwcmshc_rk3568_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @dwcmshc_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr @dwcmshc_adma_write_desc, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dwcmshc_rk3568_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fail to set clock %d\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwcmshc_rk3568_set_clock\00", [39 x i8] zeroinitializer }, align 32
@dwcmshc_rk3568_set_clock._entry_ptr = internal global ptr @dwcmshc_rk3568_set_clock._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dwcmshc_rk3568_set_clock._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DLL lock timeout!\0A\00", [45 x i8] zeroinitializer }, align 32
@dwcmshc_rk3568_set_clock._entry_ptr.15 = internal global ptr @dwcmshc_rk3568_set_clock._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"block\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@dwcmshc_rk3568_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 301, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clocks %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dwcmshc_rk3568_init\00", [44 x i8] zeroinitializer }, align 32
@dwcmshc_rk3568_init._entry_ptr = internal global ptr @dwcmshc_rk3568_init._entry, section ".printk_index", align 4
@dwcmshc_rk3568_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clocks %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dwcmshc_rk3568_init._entry_ptr.23 = internal global ptr @dwcmshc_rk3568_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip,txclk-tapnum\00", [42 x i8] zeroinitializer }, align 32
@sdhci_dwcmshc_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_dwcmshc_ops, i32 33554432, i32 8 }, [20 x i8] zeroinitializer }, align 32
@sdhci_dwcmshc_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_clock, ptr null, ptr null, ptr null, ptr null, ptr @dwcmshc_get_max_clock, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_reset, ptr null, ptr @dwcmshc_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr @dwcmshc_adma_write_desc, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"sdhci_dwcmshc_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 512, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 514, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"sdhci_dwcmshc_dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 324, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"dwcmshc_pmops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 510, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 357, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 378, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 381, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 388, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"sdhci_dwcmshc_rk3568_pdata\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"sdhci_dwcmshc_rk3568_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 267, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 204, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 234, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 295, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 296, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 297, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 301, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 307, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 311, i32 55 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"sdhci_dwcmshc_pdata\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 276, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"sdhci_dwcmshc_ops\00", align 1
@___asan_gen_.119 = private constant [39 x i8] c"../drivers/mmc/host/sdhci-of-dwcmshc.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 258, i32 31 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description274, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_sdhci_dwcmshc_driver_exit, ptr @__initcall__kmod_sdhci_of_dwcmshc__273_523_sdhci_dwcmshc_driver_init6, ptr @dwcmshc_probe._entry, ptr @dwcmshc_probe._entry.7, ptr @dwcmshc_probe._entry_ptr, ptr @dwcmshc_probe._entry_ptr.9, ptr @dwcmshc_rk3568_init._entry, ptr @dwcmshc_rk3568_init._entry.21, ptr @dwcmshc_rk3568_init._entry_ptr, ptr @dwcmshc_rk3568_init._entry_ptr.23, ptr @dwcmshc_rk3568_set_clock._entry, ptr @dwcmshc_rk3568_set_clock._entry.13, ptr @dwcmshc_rk3568_set_clock._entry_ptr, ptr @dwcmshc_rk3568_set_clock._entry_ptr.15, ptr @sdhci_dwcmshc_driver_exit, ptr @sdhci_dwcmshc_driver, ptr @.str, ptr @sdhci_dwcmshc_dt_ids, ptr @dwcmshc_pmops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @sdhci_dwcmshc_rk3568_pdata, ptr @sdhci_dwcmshc_rk3568_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @sdhci_dwcmshc_pdata, ptr @sdhci_dwcmshc_ops], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_dwcmshc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_dwcmshc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_dwcmshc_rk3568_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_dwcmshc_rk3568_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_rk3568_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_rk3568_set_clock._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_rk3568_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwcmshc_rk3568_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_dwcmshc_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_dwcmshc_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_dwcmshc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_dwcmshc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_dwcmshc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_dwcmshc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwcmshc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull %call, i32 noundef 12) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i64 @dma_get_required_mask(ptr noundef %dev1) #5
  %sub = add i64 %call9, 134217727
  %shr = lshr i64 %sub, 27
  %conv196 = trunc i64 %shr to i32
  %1 = tail call i32 @llvm.umin.i32(i32 %conv196, i32 128)
  %adma_table_cnt = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 78
  %2 = ptrtoint ptr %adma_table_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adma_table_cnt, align 4
  %add201 = add i32 %1, %3
  store i32 %add201, ptr %adma_table_cnt, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 81
  %private.i389 = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 11, i32 21
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool204.not = icmp eq ptr %5, null
  br i1 %tobool204.not, label %if.end8.if.end228_crit_edge, label %if.then205

if.end8.if.end228_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end228

if.then205:                                       ; preds = %if.end8
  %call206 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call206, ptr %private.i, align 128
  %cmp.i390 = icmp ugt ptr %call206, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i390, label %if.then209, label %if.end215

if.then209:                                       ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call206 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %7) #8
  br label %free_pltfm

if.end215:                                        ; preds = %if.then205
  %call.i = tail call i32 @clk_prepare(ptr noundef %call206) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end215.free_pltfm_crit_edge

if.end215.free_pltfm_crit_edge:                   ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_pltfm

if.end.i:                                         ; preds = %if.end215
  %call1.i = tail call i32 @clk_enable(ptr noundef %call206) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end220, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call206) #5
  br label %free_pltfm

if.end220:                                        ; preds = %if.end.i
  %call221 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %8 = ptrtoint ptr %private.i389 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call221, ptr %private.i389, align 4
  %cmp.i391 = icmp ugt ptr %call221, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i391, label %if.end220.if.end228_crit_edge, label %if.then224

if.end220.if.end228_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end228

if.then224:                                       ; preds = %if.end220
  %call.i392 = tail call i32 @clk_prepare(ptr noundef %call221) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i392)
  %tobool.not.i393 = icmp eq i32 %call.i392, 0
  br i1 %tobool.not.i393, label %if.end.i396, label %if.then224.if.end228_crit_edge

if.then224.if.end228_crit_edge:                   ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end228

if.end.i396:                                      ; preds = %if.then224
  %call1.i394 = tail call i32 @clk_enable(ptr noundef %call221) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i394)
  %tobool2.not.i395 = icmp eq i32 %call1.i394, 0
  br i1 %tobool2.not.i395, label %if.end.i396.if.end228_crit_edge, label %if.then3.i397

if.end.i396.if.end228_crit_edge:                  ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end228

if.then3.i397:                                    ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call221) #5
  br label %if.end228

if.end228:                                        ; preds = %if.then3.i397, %if.end.i396.if.end228_crit_edge, %if.then224.if.end228_crit_edge, %if.end220.if.end228_crit_edge, %if.end8.if.end228_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 10
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 8
  %call229 = tail call i32 @mmc_of_parse(ptr noundef %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %if.end228.err_clk_crit_edge

if.end228.err_clk_crit_edge:                      ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end232:                                        ; preds = %if.end228
  tail call void @sdhci_get_property(ptr noundef %pdev) #5
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 9
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool.not.i400 = icmp eq ptr %14, null
  br i1 %tobool.not.i400, label %if.else.i, label %if.then.i, !prof !77

if.then.i:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  %call.i401 = tail call i32 %14(ptr noundef %call4, i32 noundef 232) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %16, i32 232
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !78
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i402 = phi i32 [ %call.i401, %if.then.i ], [ %18, %if.else.i ]
  %and234 = and i32 %retval.0.i402, 4095
  %vendor_specific_area1 = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 11, i32 22
  %19 = ptrtoint ptr %vendor_specific_area1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and234, ptr %vendor_specific_area1, align 4
  %request = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 11, i32 2
  %20 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dwcmshc_request, ptr %request, align 4
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 11, i32 18
  %21 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @dwcmshc_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  %cmp236 = icmp eq ptr %call, @sdhci_dwcmshc_rk3568_pdata
  br i1 %cmp236, label %if.then238, label %sdhci_readl.exit.if.end249_crit_edge

sdhci_readl.exit.if.end249_crit_edge:             ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end249

if.then238:                                       ; preds = %sdhci_readl.exit
  %call.i403 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool241.not = icmp eq ptr %call.i403, null
  br i1 %tobool241.not, label %if.then238.err_clk_crit_edge, label %if.end243

if.then238.err_clk_crit_edge:                     ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end243:                                        ; preds = %if.then238
  %priv244 = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 1, i32 11, i32 23
  %22 = ptrtoint ptr %priv244 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i403, ptr %priv244, align 4
  %23 = ptrtoint ptr %call.i403 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.16, ptr %call.i403, align 4
  %arrayidx3.i = getelementptr [3 x %struct.clk_bulk_data], ptr %call.i403, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.17, ptr %arrayidx3.i, align 4
  %arrayidx6.i = getelementptr [3 x %struct.clk_bulk_data], ptr %call.i403, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.18, ptr %arrayidx6.i, align 4
  %26 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  %call.i404 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %29, i32 noundef 3, ptr noundef nonnull %call.i403) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i404)
  %tobool.not.i405 = icmp eq i32 %call.i404, 0
  br i1 %tobool.not.i405, label %if.end.i406, label %do.end.i

do.end.i:                                         ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19, i32 noundef %call.i404) #8
  br label %err_clk

if.end.i406:                                      ; preds = %if.end243
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef nonnull %call.i403) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i406.do.end18.i_crit_edge

if.end.i406.do.end18.i_crit_edge:                 ; preds = %if.end.i406
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18.i

if.end.i.i:                                       ; preds = %if.end.i406
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef nonnull %call.i403) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end21.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull %call.i403) #5
  br label %do.end18.i

do.end18.i:                                       ; preds = %if.then3.i.i, %if.end.i406.do.end18.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i406.do.end18.i_crit_edge ]
  %34 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i.ph.i) #8
  br label %err_clk

if.end21.i:                                       ; preds = %if.end.i.i
  %38 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmc, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 128
  %of_node.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node.i, align 8
  %txclk_tapnum.i = getelementptr inbounds %struct.rk3568_priv, ptr %call.i403, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %43, ptr noundef nonnull @.str.24, ptr noundef %txclk_tapnum.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool25.not.i, label %if.end21.i.if.end28.i_crit_edge, label %if.then26.i

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %txclk_tapnum.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %txclk_tapnum.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end21.i.if.end28.i_crit_edge
  %45 = ptrtoint ptr %vendor_specific_area1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vendor_specific_area1, align 4
  %add.i = add i32 %46, 8
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i48.i = icmp eq ptr %50, null
  br i1 %tobool.not.i48.i, label %do.body.i.i, label %if.then.i.i, !prof !77

if.then.i.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %50(ptr noundef %call4, i32 noundef 0, i32 noundef %add.i) #5
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 4
  %51 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !81
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i.i
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %write_l.i51.i = getelementptr inbounds %struct.sdhci_ops, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %write_l.i51.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_l.i51.i, align 4
  %tobool.not.i52.i = icmp eq ptr %56, null
  br i1 %tobool.not.i52.i, label %do.body.i56.i, label %if.then.i53.i, !prof !77

if.then.i53.i:                                    ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %56(ptr noundef %call4, i32 noundef 0, i32 noundef 2056) #5
  br label %sdhci_writel.exit58.i

do.body.i56.i:                                    ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i54.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 4
  %57 = ptrtoint ptr %ioaddr.i54.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i54.i, align 16
  %add.ptr.i55.i = getelementptr i8, ptr %58, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #5, !srcloc !81
  br label %sdhci_writel.exit58.i

sdhci_writel.exit58.i:                            ; preds = %do.body.i56.i, %if.then.i53.i
  %59 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i, align 4
  %write_l.i60.i = getelementptr inbounds %struct.sdhci_ops, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %write_l.i60.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_l.i60.i, align 4
  %tobool.not.i61.i = icmp eq ptr %62, null
  br i1 %tobool.not.i61.i, label %do.body.i65.i, label %if.then.i62.i, !prof !77

if.then.i62.i:                                    ; preds = %sdhci_writel.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %62(ptr noundef %call4, i32 noundef 0, i32 noundef 2060) #5
  br label %if.end249

do.body.i65.i:                                    ; preds = %sdhci_writel.exit58.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i63.i = getelementptr inbounds %struct.sdhci_host, ptr %call4, i32 0, i32 4
  %63 = ptrtoint ptr %ioaddr.i63.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr.i63.i, align 16
  %add.ptr.i64.i = getelementptr i8, ptr %64, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64.i, i32 0) #5, !srcloc !81
  br label %if.end249

if.end249:                                        ; preds = %do.body.i65.i, %if.then.i62.i, %sdhci_readl.exit.if.end249_crit_edge
  %rk_priv.0 = phi ptr [ null, %sdhci_readl.exit.if.end249_crit_edge ], [ %call.i403, %if.then.i62.i ], [ %call.i403, %do.body.i65.i ]
  %65 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %caps, align 32
  %or251 = or i32 %68, 512
  store i32 %or251, ptr %caps, align 32
  %call252 = tail call i32 @sdhci_add_host(ptr noundef %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %if.end249.cleanup_crit_edge, label %if.end249.err_clk_crit_edge

if.end249.err_clk_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk

if.end249.cleanup_crit_edge:                      ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_clk:                                          ; preds = %if.end249.err_clk_crit_edge, %do.end18.i, %do.end.i, %if.then238.err_clk_crit_edge, %if.end228.err_clk_crit_edge
  %rk_priv.1 = phi ptr [ null, %if.end228.err_clk_crit_edge ], [ %rk_priv.0, %if.end249.err_clk_crit_edge ], [ null, %if.then238.err_clk_crit_edge ], [ %call.i403, %do.end.i ], [ %call.i403, %do.end18.i ]
  %err.0 = phi i32 [ %call229, %if.end228.err_clk_crit_edge ], [ %call252, %if.end249.err_clk_crit_edge ], [ -12, %if.then238.err_clk_crit_edge ], [ %call.i404, %do.end.i ], [ %retval.0.i.ph.i, %do.end18.i ]
  %69 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %70) #5
  tail call void @clk_unprepare(ptr noundef %70) #5
  %71 = ptrtoint ptr %private.i389 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %private.i389, align 4
  tail call void @clk_disable(ptr noundef %72) #5
  tail call void @clk_unprepare(ptr noundef %72) #5
  %tobool258.not = icmp eq ptr %rk_priv.1, null
  br i1 %tobool258.not, label %err_clk.free_pltfm_crit_edge, label %if.then259

err_clk.free_pltfm_crit_edge:                     ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_pltfm

if.then259:                                       ; preds = %err_clk
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef nonnull %rk_priv.1) #5
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull %rk_priv.1) #5
  br label %free_pltfm

free_pltfm:                                       ; preds = %if.then259, %err_clk.free_pltfm_crit_edge, %if.then3.i, %if.end215.free_pltfm_crit_edge, %if.then209
  %err.1 = phi i32 [ %7, %if.then209 ], [ %err.0, %if.then259 ], [ %err.0, %err_clk.free_pltfm_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end215.free_pltfm_crit_edge ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %free_pltfm, %if.end249.cleanup_crit_edge, %if.then6, %do.end
  %retval.0 = phi i32 [ %0, %if.then6 ], [ %err.1, %free_pltfm ], [ -19, %do.end ], [ 0, %if.end249.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwcmshc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i9 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %priv3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 4
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef 0) #5
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %private.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i9, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef nonnull %3) #5
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwcmshc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %3)
  %tobool2.not.i = icmp ult i32 %3, 65536
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and3.i = and i32 %5, -129
  store i32 %and3.i, ptr %flags.i, align 4
  br label %dwcmshc_check_auto_cmd23.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %flags4.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags4.i, align 4
  %or.i = or i32 %7, 128
  store i32 %or.i, ptr %flags4.i, align 4
  br label %dwcmshc_check_auto_cmd23.exit

dwcmshc_check_auto_cmd23.exit:                    ; preds = %if.else.i, %if.then.i
  tail call void @sdhci_request(ptr noundef %mmc, ptr noundef %mrq) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwcmshc_hs400_enhanced_strobe(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %vendor_specific_area1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1
  %0 = ptrtoint ptr %vendor_specific_area1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor_specific_area1, align 4
  %add = add i32 %1, 44
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !77

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %5(ptr noundef %private.i, i32 noundef %add) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !78
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %10 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enhanced_strobe, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %and = and i32 %retval.0.i, -257
  %masksel = select i1 %tobool.not, i32 0, i32 256
  %vendor.0 = or i32 %masksel, %and
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i12 = icmp eq ptr %15, null
  br i1 %tobool.not.i12, label %do.body.i, label %if.then.i13, !prof !77

if.then.i13:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %15(ptr noundef %private.i, i32 noundef %vendor.0, i32 noundef %add) #5
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %vendor.0) #5
  %ioaddr.i14 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %ioaddr.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i14, align 16
  %add.ptr.i15 = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %16) #5, !srcloc !81
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i13
  ret void
}

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
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwcmshc_rk3568_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %priv2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual_clock, align 8
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !77

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %8(ptr noundef %host, i32 noundef 671088640, i32 noundef 2052) #5
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %10, i32 2052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 40) #5, !srcloc !81
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %sdhci_writel.exit.cleanup_crit_edge, label %if.end

sdhci_writel.exit.cleanup_crit_edge:              ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %clock)
  %cmp3 = icmp ult i32 %clock, 400001
  %spec.store.select = select i1 %cmp3, i32 375000, i32 %clock
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 128
  %call6 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %spec.store.select) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %do.end

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %spec.store.select) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end.if.end9_crit_edge
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %spec.store.select) #5
  %vendor_specific_area1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %17 = ptrtoint ptr %vendor_specific_area1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vendor_specific_area1, align 4
  %add = add i32 %18, 8
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i132 = icmp eq ptr %22, null
  br i1 %tobool.not.i132, label %if.else.i, label %if.then.i133, !prof !77

if.then.i133:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %22(ptr noundef %host, i32 noundef %add) #5
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i134 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i134 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i134, align 16
  %add.ptr.i135 = getelementptr i8, ptr %24, i32 %add
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #5, !srcloc !78
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i133
  %retval.0.i = phi i32 [ %call.i, %if.then.i133 ], [ %26, %if.else.i ]
  %and = and i32 %retval.0.i, -2
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %write_l.i137 = getelementptr inbounds %struct.sdhci_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %write_l.i137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_l.i137, align 4
  %tobool.not.i138 = icmp eq ptr %30, null
  br i1 %tobool.not.i138, label %do.body.i142, label %if.then.i139, !prof !77

if.then.i139:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %30(ptr noundef %host, i32 noundef %and, i32 noundef %add) #5
  br label %sdhci_writel.exit143

do.body.i142:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  %ioaddr.i140 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %32 = ptrtoint ptr %ioaddr.i140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr.i140, align 16
  %add.ptr.i141 = getelementptr i8, ptr %33, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %31) #5, !srcloc !81
  br label %sdhci_writel.exit143

sdhci_writel.exit143:                             ; preds = %do.body.i142, %if.then.i139
  %34 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops.i, align 4
  %write_l.i145 = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %write_l.i145 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_l.i145, align 4
  %tobool.not.i146 = icmp eq ptr %37, null
  br i1 %cmp3, label %if.then12, label %if.end13

if.then12:                                        ; preds = %sdhci_writel.exit143
  br i1 %tobool.not.i146, label %do.body.i150, label %if.then.i147, !prof !77

if.then.i147:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %37(ptr noundef %host, i32 noundef 0, i32 noundef 2048) #5
  br label %cleanup

do.body.i150:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i148 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %38 = ptrtoint ptr %ioaddr.i148 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr.i148, align 16
  %add.ptr.i149 = getelementptr i8, ptr %39, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 0) #5, !srcloc !81
  br label %cleanup

if.end13:                                         ; preds = %sdhci_writel.exit143
  br i1 %tobool.not.i146, label %do.body.i158, label %if.then.i155, !prof !77

if.then.i155:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %37(ptr noundef %host, i32 noundef 2, i32 noundef 2048) #5
  br label %sdhci_writel.exit159

do.body.i158:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i156 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %40 = ptrtoint ptr %ioaddr.i156 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i156, align 16
  %add.ptr.i157 = getelementptr i8, ptr %41, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 33554432) #5, !srcloc !81
  br label %sdhci_writel.exit159

sdhci_writel.exit159:                             ; preds = %do.body.i158, %if.then.i155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748) #5
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %write_l.i161 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_l.i161 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_l.i161, align 4
  %tobool.not.i162 = icmp eq ptr %46, null
  br i1 %tobool.not.i162, label %do.body.i166, label %if.then.i163, !prof !77

if.then.i163:                                     ; preds = %sdhci_writel.exit159
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %46(ptr noundef %host, i32 noundef 0, i32 noundef 2048) #5
  br label %sdhci_writel.exit167

do.body.i166:                                     ; preds = %sdhci_writel.exit159
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i164 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %47 = ptrtoint ptr %ioaddr.i164 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr.i164, align 16
  %add.ptr.i165 = getelementptr i8, ptr %48, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i165, i32 0) #5, !srcloc !81
  br label %sdhci_writel.exit167

sdhci_writel.exit167:                             ; preds = %do.body.i166, %if.then.i163
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %write_l.i169 = getelementptr inbounds %struct.sdhci_ops, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %write_l.i169 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_l.i169, align 4
  %tobool.not.i170 = icmp eq ptr %52, null
  br i1 %tobool.not.i170, label %do.body.i174, label %if.then.i171, !prof !77

if.then.i171:                                     ; preds = %sdhci_writel.exit167
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %52(ptr noundef %host, i32 noundef 328193, i32 noundef 2048) #5
  br label %sdhci_writel.exit175

do.body.i174:                                     ; preds = %sdhci_writel.exit167
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %ioaddr.i172 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %53 = ptrtoint ptr %ioaddr.i172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i172, align 16
  %add.ptr.i173 = getelementptr i8, ptr %54, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 16909568) #5, !srcloc !81
  br label %sdhci_writel.exit175

sdhci_writel.exit175:                             ; preds = %do.body.i174, %if.then.i171
  %call14 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call14, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 232) #5
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %55 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr, align 16
  %add.ptr205 = getelementptr i8, ptr %56, i32 2112
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #5, !srcloc !78
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %59 = and i32 %58, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %59)
  %60 = icmp eq i32 %59, 256
  br i1 %60, label %sdhci_writel.exit175.for.end_crit_edge, label %sdhci_writel.exit175.land.lhs.true37_crit_edge

sdhci_writel.exit175.land.lhs.true37_crit_edge:   ; preds = %sdhci_writel.exit175
  br label %land.lhs.true37

sdhci_writel.exit175.for.end_crit_edge:           ; preds = %sdhci_writel.exit175
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true37:                                  ; preds = %if.then51.land.lhs.true37_crit_edge, %sdhci_writel.exit175.land.lhs.true37_crit_edge
  %call38 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %if.then41, label %if.then51

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr, align 16
  %add.ptr45 = getelementptr i8, ptr %62, i32 2112
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #5, !srcloc !78
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  br label %for.end

if.then51:                                        ; preds = %land.lhs.true37
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #5
  %65 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %66, i32 2112
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !78
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %69 = and i32 %68, 768
  %70 = icmp eq i32 %69, 256
  br i1 %70, label %if.then51.for.end_crit_edge, label %if.then51.land.lhs.true37_crit_edge

if.then51.land.lhs.true37_crit_edge:              ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true37

if.then51.for.end_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.then51.for.end_crit_edge, %if.then41, %sdhci_writel.exit175.for.end_crit_edge
  %extra.0 = phi i32 [ %64, %if.then41 ], [ %58, %sdhci_writel.exit175.for.end_crit_edge ], [ %68, %if.then51.for.end_crit_edge ]
  %71 = and i32 %extra.0, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %71)
  %72 = icmp eq i32 %71, 256
  br i1 %72, label %if.end66, label %do.end63

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end66:                                         ; preds = %for.end
  %77 = ptrtoint ptr %vendor_specific_area1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %vendor_specific_area1, align 4
  %add68 = add i32 %78, 64
  %79 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i, align 4
  %write_l.i178 = getelementptr inbounds %struct.sdhci_ops, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %write_l.i178 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_l.i178, align 4
  %tobool.not.i179 = icmp eq ptr %82, null
  br i1 %tobool.not.i179, label %do.body.i183, label %if.then.i180, !prof !77

if.then.i180:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %82(ptr noundef %host, i32 noundef 1900544, i32 noundef %add68) #5
  br label %sdhci_writel.exit184

do.body.i183:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i182 = getelementptr i8, ptr %84, i32 %add68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 7424) #5, !srcloc !81
  br label %sdhci_writel.exit184

sdhci_writel.exit184:                             ; preds = %do.body.i183, %if.then.i180
  %85 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmc, align 8
  %timing = getelementptr inbounds %struct.mmc_host, ptr %86, i32 0, i32 28, i32 7
  %87 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %timing, align 4
  %.off = add i8 %88, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then78, label %sdhci_writel.exit184.if.end80_crit_edge

sdhci_writel.exit184.if.end80_crit_edge:          ; preds = %sdhci_writel.exit184
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then78:                                        ; preds = %sdhci_writel.exit184
  call void @__sanitizer_cov_trace_pc() #7
  %txclk_tapnum79 = getelementptr inbounds %struct.rk3568_priv, ptr %1, i32 0, i32 1
  %89 = ptrtoint ptr %txclk_tapnum79 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %txclk_tapnum79, align 4
  %phi.cast = zext i8 %90 to i32
  %phi.bo = or i32 %phi.cast, 150994944
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %sdhci_writel.exit184.if.end80_crit_edge
  %txclk_tapnum.0 = phi i32 [ %phi.bo, %if.then78 ], [ 150994952, %sdhci_writel.exit184.if.end80_crit_edge ]
  %91 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i, align 4
  %write_l.i186 = getelementptr inbounds %struct.sdhci_ops, ptr %92, i32 0, i32 3
  %93 = ptrtoint ptr %write_l.i186 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_l.i186, align 4
  %tobool.not.i187 = icmp eq ptr %94, null
  br i1 %tobool.not.i187, label %do.body.i191, label %if.then.i188, !prof !77

if.then.i188:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %94(ptr noundef %host, i32 noundef %txclk_tapnum.0, i32 noundef 2056) #5
  br label %sdhci_writel.exit192

do.body.i191:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %txclk_tapnum.0) #5
  %96 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i190 = getelementptr i8, ptr %97, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i190, i32 %95) #5, !srcloc !81
  br label %sdhci_writel.exit192

sdhci_writel.exit192:                             ; preds = %do.body.i191, %if.then.i188
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %write_l.i194 = getelementptr inbounds %struct.sdhci_ops, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %write_l.i194 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %write_l.i194, align 4
  %tobool.not.i195 = icmp eq ptr %101, null
  br i1 %tobool.not.i195, label %do.body.i199, label %if.then.i196, !prof !77

if.then.i196:                                     ; preds = %sdhci_writel.exit192
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %101(ptr noundef %host, i32 noundef 150994952, i32 noundef 2060) #5
  br label %cleanup

do.body.i199:                                     ; preds = %sdhci_writel.exit192
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i198 = getelementptr i8, ptr %103, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 134217737) #5, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %do.body.i199, %if.then.i196, %do.end63, %do.body.i150, %if.then.i147, %sdhci_writel.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwcmshc_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !77

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 62) #5
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 62
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #5, !srcloc !85
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i, -8
  %9 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %timing, label %sdhci_readw.exit.if.end51_crit_edge [
    i32 9, label %sdhci_readw.exit.if.then_crit_edge
    i32 6, label %sdhci_readw.exit.if.then_crit_edge73
    i32 10, label %if.then43
    i32 4, label %sdhci_readw.exit.if.then19_crit_edge
    i32 1, label %sdhci_readw.exit.if.then19_crit_edge74
    i32 5, label %if.then26
    i32 7, label %sdhci_readw.exit.if.then36_crit_edge
    i32 8, label %sdhci_readw.exit.if.then36_crit_edge75
  ]

sdhci_readw.exit.if.then36_crit_edge75:           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

sdhci_readw.exit.if.then36_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then36

sdhci_readw.exit.if.then19_crit_edge74:           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

sdhci_readw.exit.if.then19_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then19

sdhci_readw.exit.if.then_crit_edge73:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

sdhci_readw.exit.if.then_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

sdhci_readw.exit.if.end51_crit_edge:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then:                                          ; preds = %sdhci_readw.exit.if.then_crit_edge, %sdhci_readw.exit.if.then_crit_edge73
  %10 = or i16 %8, 3
  br label %if.end51

if.then19:                                        ; preds = %sdhci_readw.exit.if.then19_crit_edge, %sdhci_readw.exit.if.then19_crit_edge74
  %11 = or i16 %8, 1
  br label %if.end51

if.then26:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = or i16 %8, 2
  br label %if.end51

if.then36:                                        ; preds = %sdhci_readw.exit.if.then36_crit_edge, %sdhci_readw.exit.if.then36_crit_edge75
  %13 = or i16 %8, 4
  br label %if.end51

if.then43:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = or i16 %retval.0.i, 7
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then36, %if.then26, %if.then19, %if.then, %sdhci_readw.exit.if.end51_crit_edge
  %ctrl_2.0 = phi i16 [ %10, %if.then ], [ %11, %if.then19 ], [ %12, %if.then26 ], [ %13, %if.then36 ], [ %14, %if.then43 ], [ %8, %sdhci_readw.exit.if.end51_crit_edge ]
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i69 = icmp eq ptr %18, null
  br i1 %tobool.not.i69, label %do.body.i, label %if.then.i70, !prof !77

if.then.i70:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %18(ptr noundef %host, i16 noundef zeroext %ctrl_2.0, i32 noundef 62) #5
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %19 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.0) #5
  %ioaddr.i71 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i71 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i71, align 16
  %add.ptr.i72 = getelementptr i8, ptr %21, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i72, i16 %19) #5, !srcloc !88
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwcmshc_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %addr, i32 noundef %len, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  %add = add i32 %addr, -1
  %sub = add i32 %add, %len
  %0 = xor i32 %sub, %addr
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %0)
  %cmp = icmp ult i32 %0, 134217728
  %1 = or i1 %tobool.not, %cmp
  br i1 %1, label %if.then, label %if.end, !prof !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sdhci_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %addr, i32 noundef %len, i32 noundef %cmd) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %addr, 134217727
  %sub4 = sub nuw nsw i32 134217728, %and
  tail call void @sdhci_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %addr, i32 noundef %sub4, i32 noundef %cmd) #5
  %add5 = add i32 %sub4, %addr
  %sub6 = sub i32 %len, %sub4
  tail call void @sdhci_adma_write_desc(ptr noundef %host, ptr noundef %desc, i32 noundef %add5, i32 noundef %sub6, i32 noundef %cmd) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_adma_write_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwcmshc_get_max_clock(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 81
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef %host) #5
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwcmshc_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 4
  %call4 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i23 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %private.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i23, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef nonnull %3) #5
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwcmshc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i35 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %priv3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %2 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv3, align 4
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 128
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %private.i35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i35, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %if.end
  %call.i36 = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i40, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i40:                                       ; preds = %if.then6
  %call1.i38 = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not.i39 = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not.i39, label %if.end.i40.if.end12_crit_edge, label %if.then3.i41

if.end.i40.if.end12_crit_edge:                    ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then3.i41:                                     ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end.i40.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %if.end12.if.end19_crit_edge, label %if.then14

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  %call.i44 = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %if.end.i48, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i48:                                       ; preds = %if.then14
  %call1.i46 = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %if.end.i48.if.end19_crit_edge, label %if.then3.i49

if.end.i48.if.end19_crit_edge:                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then3.i49:                                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull %3) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end.i48.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %call20 = tail call i32 @sdhci_resume_host(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then3.i49, %if.then14.cleanup_crit_edge, %if.then3.i41, %if.then6.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i38, %if.then3.i41 ], [ %call.i36, %if.then6.cleanup_crit_edge ], [ %call1.i46, %if.then3.i49 ], [ %call.i44, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_sdhci_of_dwcmshc__273_523_sdhci_dwcmshc_driver_init6, !1, !"__initcall__kmod_sdhci_of_dwcmshc__273_523_sdhci_dwcmshc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 523, i32 1}
!2 = !{ptr @__exitcall_sdhci_dwcmshc_driver_exit, !1, !"__exitcall_sdhci_dwcmshc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description274, !4, !"__UNIQUE_ID_description274", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 525, i32 1}
!5 = !{ptr @__UNIQUE_ID_author275, !6, !"__UNIQUE_ID_author275", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 526, i32 1}
!7 = !{ptr @__UNIQUE_ID_file276, !8, !"__UNIQUE_ID_file276", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 527, i32 1}
!9 = !{ptr @__UNIQUE_ID_license277, !8, !"__UNIQUE_ID_license277", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 514, i32 11}
!12 = !{ptr @sdhci_dwcmshc_driver, !13, !"sdhci_dwcmshc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 512, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 357, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dwcmshc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dwcmshc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 378, i32 39}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 381, i32 4}
!26 = !{ptr @dwcmshc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dwcmshc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 388, i32 37}
!30 = !{ptr @sdhci_dwcmshc_rk3568_pdata, !31, !"sdhci_dwcmshc_rk3568_pdata", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 282, i32 38}
!32 = !{ptr @sdhci_dwcmshc_rk3568_ops, !33, !"sdhci_dwcmshc_rk3568_ops", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 267, i32 31}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 204, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dwcmshc_rk3568_set_clock._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @dwcmshc_rk3568_set_clock._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 234, i32 3}
!41 = !{ptr @dwcmshc_rk3568_set_clock._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @dwcmshc_rk3568_set_clock._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 295, i32 30}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 296, i32 30}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 297, i32 30}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 301, i32 3}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @dwcmshc_rk3568_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @dwcmshc_rk3568_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 307, i32 3}
!56 = !{ptr @dwcmshc_rk3568_init._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dwcmshc_rk3568_init._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 311, i32 55}
!60 = !{ptr @sdhci_dwcmshc_dt_ids, !61, !"sdhci_dwcmshc_dt_ids", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 324, i32 34}
!62 = !{ptr @sdhci_dwcmshc_pdata, !63, !"sdhci_dwcmshc_pdata", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 276, i32 38}
!64 = !{ptr @sdhci_dwcmshc_ops, !65, !"sdhci_dwcmshc_ops", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 258, i32 31}
!66 = !{ptr @dwcmshc_pmops, !67, !"dwcmshc_pmops", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/sdhci-of-dwcmshc.c", i32 510, i32 8}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 6915520}
!79 = !{i64 2155304110}
!80 = !{i64 2155302140}
!81 = !{i64 6915102}
!82 = !{i8 0, i8 2}
!83 = !{i64 2155312277}
!84 = !{i64 2155312775}
!85 = !{i64 6914682}
!86 = !{i64 2155304814}
!87 = !{i64 2155302746}
!88 = !{i64 6914482}
