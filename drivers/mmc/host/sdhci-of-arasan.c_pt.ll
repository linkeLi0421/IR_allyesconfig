; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-of-arasan.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-arasan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_arasan_of_data = type { ptr, ptr, ptr }
%struct.sdhci_arasan_soc_ctl_map = type { %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field, %struct.sdhci_arasan_soc_ctl_field, i8 }
%struct.sdhci_arasan_soc_ctl_field = type { i32, i16, i16 }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.sdhci_arasan_clk_ops = type { ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.sdhci_arasan_data = type { ptr, ptr, ptr, i8, i8, %struct.sdhci_arasan_clk_data, ptr, ptr, ptr, i32 }
%struct.sdhci_arasan_clk_data = type { %struct.clk_hw, ptr, %struct.clk_hw, ptr, [11 x i32], [11 x i32], ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }

@__initcall__kmod_sdhci_of_arasan__303_1765_sdhci_arasan_driver_init6 = internal global ptr @sdhci_arasan_driver_init, section ".initcall6.init", align 4
@sdhci_arasan_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_arasan_probe, ptr @sdhci_arasan_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_arasan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_arasan_driver_exit = internal global ptr @sdhci_arasan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [67 x i8] c"sdhci_of_arasan.description=Driver for the Arasan SDHCI Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [69 x i8] c"sdhci_of_arasan.author=Soeren Brinkmann <soren.brinkmann@xilinx.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [54 x i8] c"sdhci_of_arasan.file=drivers/mmc/host/sdhci-of-arasan\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [28 x i8] c"sdhci_of_arasan.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdhci-arasan\00", [19 x i8] zeroinitializer }, align 32
@sdhci_arasan_of_match = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_rk3399_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-sdhci-5.1-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_lgm_emmc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-sdhci-5.1-sdxc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_lgm_sdxc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-sdhci-5.1-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_keembay_emmc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-sdhci-5.1-sd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_keembay_sd_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-sdhci-5.1-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intel_keembay_sdio_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,thunderbay-sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_thunderbay_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,sdhci-8.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_generic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,sdhci-5.1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_generic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arasan,sdhci-4.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_generic_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-8.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_zynqmp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,versal-8.9a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_arasan_versal_data }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@sdhci_arasan_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_arasan_suspend, ptr @sdhci_arasan_resume, ptr @sdhci_arasan_suspend, ptr @sdhci_arasan_resume, ptr @sdhci_arasan_suspend, ptr @sdhci_arasan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arasan,soc-ctl-syscon\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can't get syscon\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_ahb clock not found.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_xin\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_xin clock not found.\0A\00", [38 x i8] zeroinitializer }, align 32
@sdhci_arasan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1622, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable AHB clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhci_arasan_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mmc/host/sdhci-of-arasan.c\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_arasan_probe._entry_ptr = internal global ptr @sdhci_arasan_probe._entry, section ".printk_index", align 4
@sdhci_arasan_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1631, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set SD clock rate\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_arasan_probe._entry_ptr.14 = internal global ptr @sdhci_arasan_probe._entry.12, section ".printk_index", align 4
@sdhci_arasan_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 1638, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to enable SD clock.\0A\00", [36 x i8] zeroinitializer }, align 32
@sdhci_arasan_probe._entry_ptr.17 = internal global ptr @sdhci_arasan_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"xlnx,fails-without-test-cd\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xlnx,int-clock-stable-broken\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rockchip,rk3399-sdhci-5.1\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"intel,keembay-sdhci-5.1-emmc\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"intel,keembay-sdhci-5.1-sd\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"intel,keembay-sdhci-5.1-sdio\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"intel,thunderbay-sdhci-5.1\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,zynqmp-8.9a\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"parsing dt failed.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arasan,sdhci-5.1\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy_arasan\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No phy for arasan,sdhci-5.1.\0A\00", [34 x i8] zeroinitializer }, align 32
@sdhci_arasan_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.9, i32 1696, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_init err.\0A\00", [17 x i8] zeroinitializer }, align 32
@sdhci_arasan_probe._entry_ptr.32 = internal global ptr @sdhci_arasan_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"disable-cqe-dcmd\00", [47 x i8] zeroinitializer }, align 32
@sdhci_arasan_update_clockmultiplier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.9, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: Have regmap, but no soc-ctl-syscon\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sdhci_arasan_update_clockmultiplier\00", [60 x i8] zeroinitializer }, align 32
@sdhci_arasan_update_clockmultiplier._entry_ptr = internal global ptr @sdhci_arasan_update_clockmultiplier._entry, section ".printk_index", align 4
@sdhci_arasan_syscon_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.9, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Regmap write fail: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdhci_arasan_syscon_write\00", [38 x i8] zeroinitializer }, align 32
@sdhci_arasan_syscon_write._entry_ptr = internal global ptr @sdhci_arasan_syscon_write._entry, section ".printk_index", align 4
@sdhci_arasan_update_support64b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.38, ptr @.str.9, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdhci_arasan_update_support64b\00", [33 x i8] zeroinitializer }, align 32
@sdhci_arasan_update_support64b._entry_ptr = internal global ptr @sdhci_arasan_update_support64b._entry, section ".printk_index", align 4
@sdhci_arasan_update_baseclkfreq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.39, ptr @.str.9, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdhci_arasan_update_baseclkfreq\00", [32 x i8] zeroinitializer }, align 32
@sdhci_arasan_update_baseclkfreq._entry_ptr = internal global ptr @sdhci_arasan_update_baseclkfreq._entry, section ".printk_index", align 4
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sdhci_arasan_register_sdcardclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.9, i32 1346, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DT has #clock-cells but no clock-output-names\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdhci_arasan_register_sdcardclk\00", [32 x i8] zeroinitializer }, align 32
@sdhci_arasan_register_sdcardclk._entry_ptr = internal global ptr @sdhci_arasan_register_sdcardclk._entry, section ".printk_index", align 4
@sdhci_arasan_register_sdcardclk._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.9, i32 1366, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add sdcard clock provider\0A\00", [59 x i8] zeroinitializer }, align 32
@sdhci_arasan_register_sdcardclk._entry_ptr.46 = internal global ptr @sdhci_arasan_register_sdcardclk._entry.44, section ".printk_index", align 4
@sdhci_arasan_register_sampleclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.47, ptr @.str.9, i32 1398, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdhci_arasan_register_sampleclk\00", [32 x i8] zeroinitializer }, align 32
@sdhci_arasan_register_sampleclk._entry_ptr = internal global ptr @sdhci_arasan_register_sampleclk._entry, section ".printk_index", align 4
@sdhci_arasan_register_sampleclk._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.9, i32 1418, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to add sample clock provider\0A\00", [59 x i8] zeroinitializer }, align 32
@sdhci_arasan_register_sampleclk._entry_ptr.50 = internal global ptr @sdhci_arasan_register_sampleclk._entry.48, section ".printk_index", align 4
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlnx,mio-bank\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,versal-8.9a\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-phase-legacy\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-phase-mmc-hs\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-phase-sd-hs\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-uhs-sdr12\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-uhs-sdr25\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-uhs-sdr50\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk-phase-uhs-sdr104\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-uhs-ddr50\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-mmc-ddr52\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-mmc-hs200\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-phase-mmc-hs400\00", [44 x i8] zeroinitializer }, align 32
@arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.66, ptr @.str.9, ptr @.str.67, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_of_arasan\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arasan_dt_read_clk_phase\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Using predefined clock phase for %s = %d %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sdhci_arasan_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @sdhci_arasan_dumpregs, ptr null, ptr null, ptr @sdhci_arasan_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sdhci_arasan_rk3399_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @rk3399_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@intel_lgm_emmc_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @intel_lgm_emmc_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@intel_lgm_sdxc_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @intel_lgm_sdxc_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@intel_keembay_emmc_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_emmc_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@intel_keembay_sd_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_sd_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@intel_keembay_sdio_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_sdio_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_thunderbay_data = internal constant { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr @thunderbay_soc_ctl_map, ptr @sdhci_arasan_thunderbay_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_generic_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr null, ptr @sdhci_arasan_pdata, ptr @arasan_clk_ops }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_zynqmp_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr null, ptr @sdhci_arasan_zynqmp_pdata, ptr @zynqmp_clk_ops }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_versal_data = internal global { %struct.sdhci_arasan_of_data, [20 x i8] } { %struct.sdhci_arasan_of_data { ptr null, ptr @sdhci_arasan_zynqmp_pdata, ptr @versal_clk_ops }, [20 x i8] zeroinitializer }, align 32
@rk3399_soc_ctl_map = internal constant { %struct.sdhci_arasan_soc_ctl_map, [36 x i8] } { %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 61440, i16 8, i16 8 }, %struct.sdhci_arasan_soc_ctl_field { i32 61484, i16 8, i16 0 }, %struct.sdhci_arasan_soc_ctl_field zeroinitializer, i8 1 }, [36 x i8] zeroinitializer }, align 32
@sdhci_arasan_cqe_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_cqe_ops, i32 33554432, i32 32776 }, [20 x i8] zeroinitializer }, align 32
@arasan_clk_ops = internal constant { %struct.sdhci_arasan_clk_ops, [24 x i8] } { %struct.sdhci_arasan_clk_ops { ptr @arasan_sdcardclk_ops, ptr @arasan_sampleclk_ops }, [24 x i8] zeroinitializer }, align 32
@sdhci_arasan_cqe_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr @sdhci_arasan_cqhci_irq, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_arasan_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_arasan_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.9, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Cannot power on phy.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdhci_arasan_set_clock\00", [41 x i8] zeroinitializer }, align 32
@sdhci_arasan_set_clock._entry_ptr = internal global ptr @sdhci_arasan_set_clock._entry, section ".printk_index", align 4
@sdhci_arasan_set_clock._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.9, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_arasan_set_clock._entry_ptr.71 = internal global ptr @sdhci_arasan_set_clock._entry.70, section ".printk_index", align 4
@arasan_sdcardclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sdcardclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arasan_sampleclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sampleclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@intel_lgm_emmc_soc_ctl_map = internal constant { %struct.sdhci_arasan_soc_ctl_map, [36 x i8] } { %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 160, i16 8, i16 2 }, %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 -1, i16 -1 }, %struct.sdhci_arasan_soc_ctl_field zeroinitializer, i8 0 }, [36 x i8] zeroinitializer }, align 32
@intel_lgm_sdxc_soc_ctl_map = internal constant { %struct.sdhci_arasan_soc_ctl_map, [36 x i8] } { %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 128, i16 8, i16 2 }, %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 -1, i16 -1 }, %struct.sdhci_arasan_soc_ctl_field zeroinitializer, i8 0 }, [36 x i8] zeroinitializer }, align 32
@intel_keembay_soc_ctl_map = internal constant { %struct.sdhci_arasan_soc_ctl_map, [36 x i8] } { %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 1, i16 24 }, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sdhci_keembay_emmc_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_cqe_ops, i32 101188480, i32 35592 }, [20 x i8] zeroinitializer }, align 32
@sdhci_keembay_sd_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 101188480, i32 33560 }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_set_clock, ptr @sdhci_set_power_and_bus_voltage, ptr null, ptr null, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr @sdhci_pltfm_clk_get_max_clock, ptr null, ptr null, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_arasan_reset, ptr null, ptr @sdhci_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdhci_keembay_sdio_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 101188480, i32 33289 }, [20 x i8] zeroinitializer }, align 32
@thunderbay_soc_ctl_map = internal constant { %struct.sdhci_arasan_soc_ctl_map, [36 x i8] } { %struct.sdhci_arasan_soc_ctl_map { %struct.sdhci_arasan_soc_ctl_field { i32 0, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 8, i16 14 }, %struct.sdhci_arasan_soc_ctl_field { i32 4, i16 1, i16 24 }, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sdhci_arasan_thunderbay_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_cqe_ops, i32 100663296, i32 35080 }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 33554432, i32 33032 }, [20 x i8] zeroinitializer }, align 32
@sdhci_arasan_zynqmp_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_arasan_ops, i32 0, i32 33032 }, [20 x i8] zeroinitializer }, align 32
@zynqmp_clk_ops = internal constant { %struct.sdhci_arasan_clk_ops, [24 x i8] } { %struct.sdhci_arasan_clk_ops { ptr @zynqmp_sdcardclk_ops, ptr @zynqmp_sampleclk_ops }, [24 x i8] zeroinitializer }, align 32
@zynqmp_sdcardclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sdcardclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_zynqmp_sdcardclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@zynqmp_sampleclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sampleclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_zynqmp_sampleclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sdhci_zynqmp_sdcardclk_set_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.9, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Error setting Output Tap Delay\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdhci_zynqmp_sdcardclk_set_phase\00", [63 x i8] zeroinitializer }, align 32
@sdhci_zynqmp_sdcardclk_set_phase._entry_ptr = internal global ptr @sdhci_zynqmp_sdcardclk_set_phase._entry, section ".printk_index", align 4
@sdhci_zynqmp_sampleclk_set_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.9, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Error setting Input Tap Delay\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sdhci_zynqmp_sampleclk_set_phase\00", [63 x i8] zeroinitializer }, align 32
@sdhci_zynqmp_sampleclk_set_phase._entry_ptr = internal global ptr @sdhci_zynqmp_sampleclk_set_phase._entry, section ".printk_index", align 4
@versal_clk_ops = internal constant { %struct.sdhci_arasan_clk_ops, [24 x i8] } { %struct.sdhci_arasan_clk_ops { ptr @versal_sdcardclk_ops, ptr @versal_sampleclk_ops }, [24 x i8] zeroinitializer }, align 32
@versal_sdcardclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sdcardclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_versal_sdcardclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@versal_sampleclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_arasan_sampleclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_versal_sampleclk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sdhci_arasan_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.9, i32 507, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot power off phy.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdhci_arasan_suspend\00", [43 x i8] zeroinitializer }, align 32
@sdhci_arasan_suspend._entry_ptr = internal global ptr @sdhci_arasan_suspend._entry, section ".printk_index", align 4
@sdhci_arasan_suspend._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.9, i32 509, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot resume host.\0A\00", [43 x i8] zeroinitializer }, align 32
@sdhci_arasan_suspend._entry_ptr.81 = internal global ptr @sdhci_arasan_suspend._entry.79, section ".printk_index", align 4
@sdhci_arasan_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.9, i32 539, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable AHB clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdhci_arasan_resume\00", [44 x i8] zeroinitializer }, align 32
@sdhci_arasan_resume._entry_ptr = internal global ptr @sdhci_arasan_resume._entry, section ".printk_index", align 4
@sdhci_arasan_resume._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.9, i32 545, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot enable SD clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@sdhci_arasan_resume._entry_ptr.86 = internal global ptr @sdhci_arasan_resume._entry.84, section ".printk_index", align 4
@sdhci_arasan_resume._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.9, i32 552, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot power on phy.\0A\00", [42 x i8] zeroinitializer }, align 32
@sdhci_arasan_resume._entry_ptr.89 = internal global ptr @sdhci_arasan_resume._entry.87, section ".printk_index", align 4
@sdhci_arasan_resume._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.83, ptr @.str.9, i32 560, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@sdhci_arasan_resume._entry_ptr.91 = internal global ptr @sdhci_arasan_resume._entry.90, section ".printk_index", align 4
@switch.table.sdhci_versal_sdcardclk_set_phase = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 30, i32 30, i32 0, i32 30, i32 15, i32 8, i32 30, i32 30, i32 8], [60 x i8] zeroinitializer }, align 32
@switch.table.sdhci_versal_sampleclk_set_phase = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 120, i32 120, i32 0, i32 120, i32 60, i32 30, i32 120, i32 120, i32 30], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"sdhci_arasan_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1754, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1756, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [22 x i8] c"sdhci_arasan_of_match\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1264, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"sdhci_arasan_dev_pm_ops\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 571, i32 8 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1592, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1600, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1607, i32 44 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1610, i32 9 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1614, i32 30 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1616, i32 46 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1622, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1631, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1638, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1642, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1645, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1650, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1653, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1654, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1655, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1656, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1669, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1681, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1686, i32 34 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1687, i32 41 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1690, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1696, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1707, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 972, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 254, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1467, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1011, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1505, i32 31 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1343, i32 42 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1346, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1366, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1398, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1418, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1085, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1097, i32 44 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1110, i32 6 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1112, i32 6 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1114, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1116, i32 6 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1118, i32 6 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1120, i32 6 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1122, i32 6 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1124, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1126, i32 6 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1128, i32 6 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1130, i32 6 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1047, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [23 x i8] c"sdhci_arasan_cqhci_ops\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 442, i32 36 }
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"sdhci_arasan_rk3399_data\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1201, i32 36 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c"intel_lgm_emmc_data\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1207, i32 36 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c"intel_lgm_sdxc_data\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1213, i32 36 }
@___asan_gen_.320 = private unnamed_addr constant [24 x i8] c"intel_keembay_emmc_data\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1246, i32 36 }
@___asan_gen_.323 = private unnamed_addr constant [22 x i8] c"intel_keembay_sd_data\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1252, i32 36 }
@___asan_gen_.326 = private unnamed_addr constant [24 x i8] c"intel_keembay_sdio_data\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1258, i32 36 }
@___asan_gen_.329 = private unnamed_addr constant [29 x i8] c"sdhci_arasan_thunderbay_data\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1151, i32 42 }
@___asan_gen_.332 = private unnamed_addr constant [26 x i8] c"sdhci_arasan_generic_data\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1146, i32 36 }
@___asan_gen_.335 = private unnamed_addr constant [25 x i8] c"sdhci_arasan_zynqmp_data\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1231, i32 36 }
@___asan_gen_.338 = private unnamed_addr constant [25 x i8] c"sdhci_arasan_versal_data\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1241, i32 36 }
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"rk3399_soc_ctl_map\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 176, i32 46 }
@___asan_gen_.344 = private unnamed_addr constant [23 x i8] c"sdhci_arasan_cqe_pdata\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 459, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant [15 x i8] c"arasan_clk_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1141, i32 42 }
@___asan_gen_.350 = private unnamed_addr constant [21 x i8] c"sdhci_arasan_cqe_ops\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 448, i32 31 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 284, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 339, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant [21 x i8] c"arasan_sdcardclk_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 597, i32 29 }
@___asan_gen_.368 = private unnamed_addr constant [21 x i8] c"arasan_sampleclk_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 624, i32 29 }
@___asan_gen_.371 = private unnamed_addr constant [27 x i8] c"intel_lgm_emmc_soc_ctl_map\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 182, i32 46 }
@___asan_gen_.374 = private unnamed_addr constant [27 x i8] c"intel_lgm_sdxc_soc_ctl_map\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 188, i32 46 }
@___asan_gen_.377 = private unnamed_addr constant [26 x i8] c"intel_keembay_soc_ctl_map\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 201, i32 46 }
@___asan_gen_.380 = private unnamed_addr constant [25 x i8] c"sdhci_keembay_emmc_pdata\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1157, i32 38 }
@___asan_gen_.383 = private unnamed_addr constant [23 x i8] c"sdhci_keembay_sd_pdata\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1172, i32 38 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"sdhci_arasan_ops\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 400, i32 31 }
@___asan_gen_.389 = private unnamed_addr constant [25 x i8] c"sdhci_keembay_sdio_pdata\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1187, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant [23 x i8] c"thunderbay_soc_ctl_map\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 194, i32 46 }
@___asan_gen_.395 = private unnamed_addr constant [30 x i8] c"sdhci_arasan_thunderbay_pdata\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 466, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant [19 x i8] c"sdhci_arasan_pdata\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1133, i32 38 }
@___asan_gen_.401 = private unnamed_addr constant [26 x i8] c"sdhci_arasan_zynqmp_pdata\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1219, i32 38 }
@___asan_gen_.404 = private unnamed_addr constant [15 x i8] c"zynqmp_clk_ops\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1226, i32 42 }
@___asan_gen_.407 = private unnamed_addr constant [21 x i8] c"zynqmp_sdcardclk_ops\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 689, i32 29 }
@___asan_gen_.410 = private unnamed_addr constant [21 x i8] c"zynqmp_sampleclk_ops\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 755, i32 29 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 681, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 750, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [15 x i8] c"versal_clk_ops\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1236, i32 42 }
@___asan_gen_.434 = private unnamed_addr constant [21 x i8] c"versal_sdcardclk_ops\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 822, i32 29 }
@___asan_gen_.437 = private unnamed_addr constant [21 x i8] c"versal_sampleclk_ops\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 893, i32 29 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 507, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 509, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 539, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 545, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 552, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.477 = private constant [38 x i8] c"../drivers/mmc/host/sdhci-of-arasan.c\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 560, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant [46 x i8] c"switch.table.sdhci_versal_sdcardclk_set_phase\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [46 x i8] c"switch.table.sdhci_versal_sampleclk_set_phase\00", align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_sdhci_arasan_driver_exit, ptr @__initcall__kmod_sdhci_of_arasan__303_1765_sdhci_arasan_driver_init6, ptr @sdhci_arasan_driver_exit, ptr @sdhci_arasan_probe._entry, ptr @sdhci_arasan_probe._entry.12, ptr @sdhci_arasan_probe._entry.15, ptr @sdhci_arasan_probe._entry.30, ptr @sdhci_arasan_probe._entry_ptr, ptr @sdhci_arasan_probe._entry_ptr.14, ptr @sdhci_arasan_probe._entry_ptr.17, ptr @sdhci_arasan_probe._entry_ptr.32, ptr @sdhci_arasan_register_sampleclk._entry, ptr @sdhci_arasan_register_sampleclk._entry.48, ptr @sdhci_arasan_register_sampleclk._entry_ptr, ptr @sdhci_arasan_register_sampleclk._entry_ptr.50, ptr @sdhci_arasan_register_sdcardclk._entry, ptr @sdhci_arasan_register_sdcardclk._entry.44, ptr @sdhci_arasan_register_sdcardclk._entry_ptr, ptr @sdhci_arasan_register_sdcardclk._entry_ptr.46, ptr @sdhci_arasan_resume._entry, ptr @sdhci_arasan_resume._entry.84, ptr @sdhci_arasan_resume._entry.87, ptr @sdhci_arasan_resume._entry.90, ptr @sdhci_arasan_resume._entry_ptr, ptr @sdhci_arasan_resume._entry_ptr.86, ptr @sdhci_arasan_resume._entry_ptr.89, ptr @sdhci_arasan_resume._entry_ptr.91, ptr @sdhci_arasan_set_clock._entry, ptr @sdhci_arasan_set_clock._entry.70, ptr @sdhci_arasan_set_clock._entry_ptr, ptr @sdhci_arasan_set_clock._entry_ptr.71, ptr @sdhci_arasan_suspend._entry, ptr @sdhci_arasan_suspend._entry.79, ptr @sdhci_arasan_suspend._entry_ptr, ptr @sdhci_arasan_suspend._entry_ptr.81, ptr @sdhci_arasan_syscon_write._entry, ptr @sdhci_arasan_syscon_write._entry_ptr, ptr @sdhci_arasan_update_baseclkfreq._entry, ptr @sdhci_arasan_update_baseclkfreq._entry_ptr, ptr @sdhci_arasan_update_clockmultiplier._entry, ptr @sdhci_arasan_update_clockmultiplier._entry_ptr, ptr @sdhci_arasan_update_support64b._entry, ptr @sdhci_arasan_update_support64b._entry_ptr, ptr @sdhci_zynqmp_sampleclk_set_phase._entry, ptr @sdhci_zynqmp_sampleclk_set_phase._entry_ptr, ptr @sdhci_zynqmp_sdcardclk_set_phase._entry, ptr @sdhci_zynqmp_sdcardclk_set_phase._entry_ptr, ptr @sdhci_arasan_driver, ptr @.str, ptr @sdhci_arasan_of_match, ptr @sdhci_arasan_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @sdhci_arasan_cqhci_ops, ptr @sdhci_arasan_rk3399_data, ptr @intel_lgm_emmc_data, ptr @intel_lgm_sdxc_data, ptr @intel_keembay_emmc_data, ptr @intel_keembay_sd_data, ptr @intel_keembay_sdio_data, ptr @sdhci_arasan_thunderbay_data, ptr @sdhci_arasan_generic_data, ptr @sdhci_arasan_zynqmp_data, ptr @sdhci_arasan_versal_data, ptr @rk3399_soc_ctl_map, ptr @sdhci_arasan_cqe_pdata, ptr @arasan_clk_ops, ptr @sdhci_arasan_cqe_ops, ptr @.str.68, ptr @.str.69, ptr @arasan_sdcardclk_ops, ptr @arasan_sampleclk_ops, ptr @intel_lgm_emmc_soc_ctl_map, ptr @intel_lgm_sdxc_soc_ctl_map, ptr @intel_keembay_soc_ctl_map, ptr @sdhci_keembay_emmc_pdata, ptr @sdhci_keembay_sd_pdata, ptr @sdhci_arasan_ops, ptr @sdhci_keembay_sdio_pdata, ptr @thunderbay_soc_ctl_map, ptr @sdhci_arasan_thunderbay_pdata, ptr @sdhci_arasan_pdata, ptr @sdhci_arasan_zynqmp_pdata, ptr @zynqmp_clk_ops, ptr @zynqmp_sdcardclk_ops, ptr @zynqmp_sampleclk_ops, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @versal_clk_ops, ptr @versal_sdcardclk_ops, ptr @versal_sampleclk_ops, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.88, ptr @switch.table.sdhci_versal_sdcardclk_set_phase, ptr @switch.table.sdhci_versal_sampleclk_set_phase], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_of_match to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_update_clockmultiplier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_syscon_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_update_support64b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_update_baseclkfreq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_register_sdcardclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_register_sdcardclk._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_register_sampleclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_register_sampleclk._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_rk3399_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_lgm_emmc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_lgm_sdxc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_keembay_emmc_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_keembay_sd_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_keembay_sdio_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_thunderbay_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_generic_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_zynqmp_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_versal_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_soc_ctl_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_cqe_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_clk_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_cqe_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_set_clock._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_sdcardclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arasan_sampleclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_lgm_emmc_soc_ctl_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_lgm_sdxc_soc_ctl_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_keembay_soc_ctl_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_keembay_emmc_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_keembay_sd_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_keembay_sdio_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_soc_ctl_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_thunderbay_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_zynqmp_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_clk_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_sdcardclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_sampleclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_zynqmp_sdcardclk_set_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_zynqmp_sampleclk_set_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versal_clk_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versal_sdcardclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @versal_sampleclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_suspend._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_resume._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_resume._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_arasan_resume._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdhci_versal_sdcardclk_set_phase to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sdhci_versal_sampleclk_set_phase to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_arasan_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_arasan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_arasan_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %sampleclk_init.i.i = alloca %struct.clk_init_data, align 4
  %parent_clk_name.i22.i = alloca ptr, align 4
  %sdcardclk_init.i.i = alloca %struct.clk_init_data, align 4
  %parent_clk_name.i.i = alloca ptr, align 4
  %num_clks.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %pdata = getelementptr inbounds %struct.sdhci_arasan_of_data, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %call2 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef %3, i32 noundef 160) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 81
  %private.i246 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 21
  %5 = ptrtoint ptr %private.i246 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %private.i246, align 4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %soc_ctl_map8 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 20
  %8 = ptrtoint ptr %soc_ctl_map8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %soc_ctl_map8, align 4
  %clk_ops = getelementptr inbounds %struct.sdhci_arasan_of_data, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %clk_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_ops, align 4
  %clk_ops9 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 18
  %11 = ptrtoint ptr %clk_ops9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %clk_ops9, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %12 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.end20

of_parse_phandle.exit:                            ; preds = %if.end
  %13 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.end20_crit_edge, label %if.then11

of_parse_phandle.exit.if.end20_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then11:                                        ; preds = %of_parse_phandle.exit
  %call12 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %14) #8
  %soc_ctl_base = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 19
  %15 = ptrtoint ptr %soc_ctl_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %soc_ctl_base, align 4
  call void @of_node_put(ptr noundef nonnull %14) #8
  %16 = ptrtoint ptr %soc_ctl_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc_ctl_base, align 4
  %cmp.i247 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %if.then15, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %17 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @.str.2) #8
  br label %err_pltfm_free

if.end20:                                         ; preds = %if.then11.if.end20_crit_edge, %of_parse_phandle.exit.if.end20_crit_edge, %of_parse_phandle.exit.thread
  call void @sdhci_get_property(ptr noundef %pdev) #8
  %call21 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 22
  %19 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %clk_ahb, align 4
  %cmp.i248 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call21 to i32
  %call27 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %20, ptr noundef nonnull @.str.4) #8
  br label %err_pltfm_free

if.end28:                                         ; preds = %if.end20
  %call29 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  %cmp.i249 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call29 to i32
  %call33 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %21, ptr noundef nonnull @.str.6) #8
  br label %err_pltfm_free

if.end34:                                         ; preds = %if.end28
  %22 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ahb, align 4
  %call.i250 = call i32 @clk_prepare(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool.not.i251 = icmp eq i32 %call.i250, 0
  br i1 %tobool.not.i251, label %if.end.i252, label %if.end34.do.end_crit_edge

if.end34.do.end_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i252:                                      ; preds = %if.end34
  %call1.i = call i32 @clk_enable(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end39, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %23) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end34.do.end_crit_edge
  %retval.0.i253.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i250, %if.end34.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #11
  br label %err_pltfm_free

if.end39:                                         ; preds = %if.end.i252
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 1
  %24 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool40.not = icmp eq i32 %25, 0
  br i1 %tobool40.not, label %if.end39.if.end53_crit_edge, label %land.lhs.true

if.end39.if.end53_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end39
  %call42 = call i32 @clk_get_rate(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call42)
  %cmp.not = icmp eq i32 %25, %call42
  br i1 %cmp.not, label %land.lhs.true.if.end53_crit_edge, label %if.then43

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then43:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock, align 4
  %call45 = call i32 @clk_set_rate(ptr noundef %call29, i32 noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.if.end53_crit_edge, label %do.end50

if.then43.if.end53_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.end50:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %clk_dis_ahb

if.end53:                                         ; preds = %if.then43.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end39.if.end53_crit_edge
  %call.i254 = call i32 @clk_prepare(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %tobool.not.i255 = icmp eq i32 %call.i254, 0
  br i1 %tobool.not.i255, label %if.end.i258, label %if.end53.do.end59_crit_edge

if.end53.do.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59

if.end.i258:                                      ; preds = %if.end53
  %call1.i256 = call i32 @clk_enable(ptr noundef %call29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i256)
  %tobool2.not.i257 = icmp eq i32 %call1.i256, 0
  br i1 %tobool2.not.i257, label %if.end60, label %if.then3.i259

if.then3.i259:                                    ; preds = %if.end.i258
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %call29) #8
  br label %do.end59

do.end59:                                         ; preds = %if.then3.i259, %if.end53.do.end59_crit_edge
  %retval.0.i260.ph = phi i32 [ %call1.i256, %if.then3.i259 ], [ %call.i254, %if.end53.do.end59_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %clk_dis_ahb

if.end60:                                         ; preds = %if.end.i258
  %call.i262 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i262, null
  br i1 %tobool.i.not, label %if.end60.if.end63_crit_edge, label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 21
  %28 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quirks, align 4
  %or = or i32 %29, 1
  store i32 %or, ptr %quirks, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  %call.i263 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #8
  %tobool.i264.not = icmp eq ptr %call.i263, null
  br i1 %tobool.i264.not, label %if.end63.if.end68_crit_edge, label %if.then65

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %quirks66 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 21
  %30 = ptrtoint ptr %quirks66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks66, align 4
  %or67 = or i32 %31, 2
  store i32 %or67, ptr %quirks66, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end63.if.end68_crit_edge
  %32 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call29, ptr %private.i, align 128
  %call69 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end68.if.end72_crit_edge, label %if.then71

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then71:                                        ; preds = %if.end68
  %33 = ptrtoint ptr %soc_ctl_map8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc_ctl_map8, align 4
  %tobool.not.i265 = icmp eq ptr %34, null
  br i1 %tobool.not.i265, label %if.then71.if.end72_crit_edge, label %if.end.i266

if.then71.if.end72_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.end.i266:                                      ; preds = %if.then71
  %soc_ctl_base.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 19
  %35 = ptrtoint ptr %soc_ctl_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %soc_ctl_base.i, align 4
  %tobool3.not.i = icmp eq ptr %36, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i266
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %37 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc.i, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %do.end.i.dev_name.exit.i_crit_edge ]
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %retval.0.i.i) #11
  br label %if.end72

if.end7.i:                                        ; preds = %if.end.i266
  call void @__sanitizer_cov_trace_pc() #10
  %clockmultiplier.i = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %34, i32 0, i32 1
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %call2, ptr noundef %clockmultiplier.i, i32 noundef 0) #8
  br label %if.end72

if.end72:                                         ; preds = %if.end7.i, %dev_name.exit.i, %if.then71.if.end72_crit_edge, %if.end68.if.end72_crit_edge
  %call73 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %lor.lhs.false, label %if.end72.if.then83_crit_edge

if.end72.if.then83_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

lor.lhs.false:                                    ; preds = %if.end72
  %call75 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %lor.lhs.false.if.then83_crit_edge

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

lor.lhs.false77:                                  ; preds = %lor.lhs.false
  %call78 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false80, label %lor.lhs.false77.if.then83_crit_edge

lor.lhs.false77.if.then83_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

lor.lhs.false80:                                  ; preds = %lor.lhs.false77
  %call81 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %lor.lhs.false80.if.end85_crit_edge, label %lor.lhs.false80.if.then83_crit_edge

lor.lhs.false80.if.then83_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then83

lor.lhs.false80.if.end85_crit_edge:               ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end85

if.then83:                                        ; preds = %lor.lhs.false80.if.then83_crit_edge, %lor.lhs.false77.if.then83_crit_edge, %lor.lhs.false.if.then83_crit_edge, %if.end72.if.then83_crit_edge
  %43 = ptrtoint ptr %soc_ctl_map8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc_ctl_map8, align 4
  %tobool.not.i268 = icmp eq ptr %44, null
  br i1 %tobool.not.i268, label %if.then83.sdhci_arasan_update_support64b.exit_crit_edge, label %if.end.i271

if.then83.sdhci_arasan_update_support64b.exit_crit_edge: ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_update_support64b.exit

if.end.i271:                                      ; preds = %if.then83
  %soc_ctl_base.i269 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 19
  %45 = ptrtoint ptr %soc_ctl_base.i269 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc_ctl_base.i269, align 4
  %tobool3.not.i270 = icmp eq ptr %46, null
  br i1 %tobool3.not.i270, label %do.end.i275, label %if.end7.i282

do.end.i275:                                      ; preds = %if.end.i271
  %mmc.i272 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %47 = ptrtoint ptr %mmc.i272 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmc.i272, align 8
  %init_name.i.i273 = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %init_name.i.i273 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i273, align 8
  %tobool.not.i.i274 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i274, label %if.end.i.i277, label %do.end.i275.dev_name.exit.i280_crit_edge

do.end.i275.dev_name.exit.i280_crit_edge:         ; preds = %do.end.i275
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i280

if.end.i.i277:                                    ; preds = %do.end.i275
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i276 = getelementptr inbounds %struct.mmc_host, ptr %48, i32 0, i32 1
  %51 = ptrtoint ptr %class_dev.i276 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %class_dev.i276, align 4
  br label %dev_name.exit.i280

dev_name.exit.i280:                               ; preds = %if.end.i.i277, %do.end.i275.dev_name.exit.i280_crit_edge
  %retval.0.i.i278 = phi ptr [ %52, %if.end.i.i277 ], [ %50, %do.end.i275.dev_name.exit.i280_crit_edge ]
  %call6.i279 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %retval.0.i.i278) #11
  br label %sdhci_arasan_update_clockmultiplier.exit283

if.end7.i282:                                     ; preds = %if.end.i271
  call void @__sanitizer_cov_trace_pc() #10
  %clockmultiplier.i281 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %44, i32 0, i32 1
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %call2, ptr noundef %clockmultiplier.i281, i32 noundef 0) #8
  br label %sdhci_arasan_update_clockmultiplier.exit283

sdhci_arasan_update_clockmultiplier.exit283:      ; preds = %if.end7.i282, %dev_name.exit.i280
  %53 = ptrtoint ptr %soc_ctl_map8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load ptr, ptr %soc_ctl_map8, align 4
  %tobool.not.i285 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i285, label %sdhci_arasan_update_clockmultiplier.exit283.sdhci_arasan_update_support64b.exit_crit_edge, label %if.end.i288

sdhci_arasan_update_clockmultiplier.exit283.sdhci_arasan_update_support64b.exit_crit_edge: ; preds = %sdhci_arasan_update_clockmultiplier.exit283
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_update_support64b.exit

if.end.i288:                                      ; preds = %sdhci_arasan_update_clockmultiplier.exit283
  %54 = ptrtoint ptr %soc_ctl_base.i269 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %soc_ctl_base.i269, align 4
  %tobool3.not.i287 = icmp eq ptr %55, null
  br i1 %tobool3.not.i287, label %do.end.i292, label %if.end7.i298

do.end.i292:                                      ; preds = %if.end.i288
  %mmc.i289 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %56 = ptrtoint ptr %mmc.i289 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmc.i289, align 8
  %init_name.i.i290 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %init_name.i.i290 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i290, align 8
  %tobool.not.i.i291 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i291, label %if.end.i.i294, label %do.end.i292.dev_name.exit.i297_crit_edge

do.end.i292.dev_name.exit.i297_crit_edge:         ; preds = %do.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i297

if.end.i.i294:                                    ; preds = %do.end.i292
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i293 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %class_dev.i293 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %class_dev.i293, align 4
  br label %dev_name.exit.i297

dev_name.exit.i297:                               ; preds = %if.end.i.i294, %do.end.i292.dev_name.exit.i297_crit_edge
  %retval.0.i.i295 = phi ptr [ %61, %if.end.i.i294 ], [ %59, %do.end.i292.dev_name.exit.i297_crit_edge ]
  %call6.i296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %retval.0.i.i295) #11
  br label %sdhci_arasan_update_support64b.exit

if.end7.i298:                                     ; preds = %if.end.i288
  call void @__sanitizer_cov_trace_pc() #10
  %support64b.i = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %.pr, i32 0, i32 2
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %call2, ptr noundef %support64b.i, i32 noundef 0) #8
  br label %sdhci_arasan_update_support64b.exit

sdhci_arasan_update_support64b.exit:              ; preds = %if.end7.i298, %dev_name.exit.i297, %sdhci_arasan_update_clockmultiplier.exit283.sdhci_arasan_update_support64b.exit_crit_edge, %if.then83.sdhci_arasan_update_support64b.exit_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %62 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmc, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %caps, align 32
  %or84 = or i32 %65, 512
  store i32 %or84, ptr %caps, align 32
  br label %if.end85

if.end85:                                         ; preds = %sdhci_arasan_update_support64b.exit, %lor.lhs.false80.if.end85_crit_edge
  %66 = ptrtoint ptr %soc_ctl_map8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %soc_ctl_map8, align 4
  %68 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %private.i, align 128
  %call3.i = call i32 @clk_get_rate(ptr noundef %69) #8
  %add.i = add i32 %call3.i, 500000
  %conv.i = zext i32 %add.i to i64
  %70 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv.i) #12, !srcloc !270
  %71 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv.i, i64 %70, i32 0) #12, !srcloc !271
  %asmresult10.i.i = extractvalue { i64, i32 } %71, 0
  %div166288.i = lshr i64 %asmresult10.i.i, 18
  %conv189.i = trunc i64 %div166288.i to i32
  %tobool190.not.i = icmp eq ptr %67, null
  br i1 %tobool190.not.i, label %if.end85.sdhci_arasan_update_baseclkfreq.exit_crit_edge, label %if.end192.i

if.end85.sdhci_arasan_update_baseclkfreq.exit_crit_edge: ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_update_baseclkfreq.exit

if.end192.i:                                      ; preds = %if.end85
  %soc_ctl_base.i300 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 19
  %72 = ptrtoint ptr %soc_ctl_base.i300 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %soc_ctl_base.i300, align 4
  %tobool193.not.i = icmp eq ptr %73, null
  br i1 %tobool193.not.i, label %do.end.i304, label %if.end198.i

do.end.i304:                                      ; preds = %if.end192.i
  %mmc.i301 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %74 = ptrtoint ptr %mmc.i301 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmc.i301, align 8
  %init_name.i.i302 = getelementptr inbounds %struct.mmc_host, ptr %75, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %init_name.i.i302 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i302, align 8
  %tobool.not.i.i303 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i303, label %if.end.i.i306, label %do.end.i304.dev_name.exit.i308_crit_edge

do.end.i304.dev_name.exit.i308_crit_edge:         ; preds = %do.end.i304
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i308

if.end.i.i306:                                    ; preds = %do.end.i304
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i305 = getelementptr inbounds %struct.mmc_host, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %class_dev.i305 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %class_dev.i305, align 4
  br label %dev_name.exit.i308

dev_name.exit.i308:                               ; preds = %if.end.i.i306, %do.end.i304.dev_name.exit.i308_crit_edge
  %retval.0.i.i307 = phi ptr [ %79, %if.end.i.i306 ], [ %77, %do.end.i304.dev_name.exit.i308_crit_edge ]
  %call197.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %retval.0.i.i307) #11
  br label %sdhci_arasan_update_baseclkfreq.exit

if.end198.i:                                      ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sdhci_arasan_syscon_write(ptr noundef %call2, ptr noundef nonnull %67, i32 noundef %conv189.i) #8
  br label %sdhci_arasan_update_baseclkfreq.exit

sdhci_arasan_update_baseclkfreq.exit:             ; preds = %if.end198.i, %dev_name.exit.i308, %if.end85.sdhci_arasan_update_baseclkfreq.exit_crit_edge
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_clks.i) #8
  %82 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %num_clks.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %81, ptr noundef nonnull @.str.40, ptr noundef nonnull %num_clks.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i309 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i309, label %sdhci_arasan_update_baseclkfreq.exit.sdhci_arasan_register_sdclk.exit.thread_crit_edge, label %if.end.i311

sdhci_arasan_update_baseclkfreq.exit.sdhci_arasan_register_sdclk.exit.thread_crit_edge: ; preds = %sdhci_arasan_update_baseclkfreq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sdclk.exit.thread

if.end.i311:                                      ; preds = %sdhci_arasan_update_baseclkfreq.exit
  %83 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sdcardclk_init.i.i) #8
  %85 = call ptr @memset(ptr %sdcardclk_init.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk_name.i.i) #8
  %call.i.i21.i = call i32 @of_property_read_string_helper(ptr noundef %84, ptr noundef nonnull @.str.41, ptr noundef nonnull %sdcardclk_init.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i21.i)
  %tobool.not.i.i310 = icmp sgt i32 %call.i.i21.i, -1
  br i1 %tobool.not.i.i310, label %if.end.i.i312, label %if.end.i311.sdhci_arasan_register_sdclk.exit.thread333_crit_edge

if.end.i311.sdhci_arasan_register_sdclk.exit.thread333_crit_edge: ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sdclk.exit.thread333

if.end.i.i312:                                    ; preds = %if.end.i311
  %clk_data1.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 12
  %call2.i.i = call ptr @__clk_get_name(ptr noundef %call29) #8
  %86 = ptrtoint ptr %parent_clk_name.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call2.i.i, ptr %parent_clk_name.i.i, align 4
  %parent_names.i.i = getelementptr inbounds %struct.clk_init_data, ptr %sdcardclk_init.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %parent_clk_name.i.i, ptr %parent_names.i.i, align 4
  %num_parents.i.i = getelementptr inbounds %struct.clk_init_data, ptr %sdcardclk_init.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %num_parents.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %sdcardclk_init.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 64, ptr %flags.i.i, align 4
  %90 = ptrtoint ptr %clk_ops9 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk_ops9, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %sdcardclk_init.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %ops.i.i, align 4
  %init.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13
  %95 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %sdcardclk_init.i.i, ptr %init.i.i, align 4
  %call4.i.i = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %clk_data1.i.i) #8
  %sdcardclk.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 1
  %96 = ptrtoint ptr %sdcardclk.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call4.i.i, ptr %sdcardclk.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %sdhci_arasan_register_sdcardclk.exit.i, label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i312
  %97 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %init.i.i, align 4
  %call14.i.i = call i32 @of_clk_add_provider(ptr noundef %84, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call4.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %sdhci_arasan_register_sdcardclk.exit.thread48.i, label %if.end10.i.i.sdhci_arasan_register_sdclk.exit.thread333_crit_edge

if.end10.i.i.sdhci_arasan_register_sdclk.exit.thread333_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sdclk.exit.thread333

sdhci_arasan_register_sdcardclk.exit.thread48.i:  ; preds = %if.end10.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sdcardclk_init.i.i) #8
  %98 = ptrtoint ptr %num_clks.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_clks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool4.not.i = icmp eq i32 %99, 0
  br i1 %tobool4.not.i, label %sdhci_arasan_register_sdcardclk.exit.thread48.i.sdhci_arasan_register_sdclk.exit.thread_crit_edge, label %if.then5.i

sdhci_arasan_register_sdcardclk.exit.thread48.i.sdhci_arasan_register_sdclk.exit.thread_crit_edge: ; preds = %sdhci_arasan_register_sdcardclk.exit.thread48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sdclk.exit.thread

sdhci_arasan_register_sdclk.exit.thread333:       ; preds = %if.end10.i.i.sdhci_arasan_register_sdclk.exit.thread333_crit_edge, %if.end.i311.sdhci_arasan_register_sdclk.exit.thread333_crit_edge
  %.str.42.sink.i = phi ptr [ @.str.42, %if.end.i311.sdhci_arasan_register_sdclk.exit.thread333_crit_edge ], [ @.str.45, %if.end10.i.i.sdhci_arasan_register_sdclk.exit.thread333_crit_edge ]
  %retval.0.i.ph.i = phi i32 [ %call.i.i21.i, %if.end.i311.sdhci_arasan_register_sdclk.exit.thread333_crit_edge ], [ %call14.i.i, %if.end10.i.i.sdhci_arasan_register_sdclk.exit.thread333_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.42.sink.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sdcardclk_init.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clks.i) #8
  br label %clk_disable_all

sdhci_arasan_register_sdcardclk.exit.i:           ; preds = %if.end.i.i312
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %call4.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sdcardclk_init.i.i) #8
  br label %sdhci_arasan_register_sdclk.exit

if.then5.i:                                       ; preds = %sdhci_arasan_register_sdcardclk.exit.thread48.i
  %101 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sampleclk_init.i.i) #8
  %103 = call ptr @memset(ptr %sampleclk_init.i.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk_name.i22.i) #8
  %call.i.i24.i = call i32 @of_property_read_string_helper(ptr noundef %102, ptr noundef nonnull @.str.41, ptr noundef nonnull %sampleclk_init.i.i, i32 noundef 1, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i24.i)
  %tobool.not.i25.i = icmp sgt i32 %call.i.i24.i, -1
  br i1 %tobool.not.i25.i, label %if.end.i36.i, label %if.then5.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge

if.then5.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sampleclk.exit.thread.i

if.end.i36.i:                                     ; preds = %if.then5.i
  %call2.i27.i = call ptr @__clk_get_name(ptr noundef %call29) #8
  %104 = ptrtoint ptr %parent_clk_name.i22.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call2.i27.i, ptr %parent_clk_name.i22.i, align 4
  %parent_names.i28.i = getelementptr inbounds %struct.clk_init_data, ptr %sampleclk_init.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %parent_names.i28.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %parent_clk_name.i22.i, ptr %parent_names.i28.i, align 4
  %num_parents.i29.i = getelementptr inbounds %struct.clk_init_data, ptr %sampleclk_init.i.i, i32 0, i32 5
  %106 = ptrtoint ptr %num_parents.i29.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %num_parents.i29.i, align 4
  %flags.i30.i = getelementptr inbounds %struct.clk_init_data, ptr %sampleclk_init.i.i, i32 0, i32 6
  %107 = ptrtoint ptr %flags.i30.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 64, ptr %flags.i30.i, align 4
  %108 = ptrtoint ptr %clk_ops9 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clk_ops9, align 4
  %sampleclk_ops.i.i = getelementptr inbounds %struct.sdhci_arasan_clk_ops, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %sampleclk_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sampleclk_ops.i.i, align 4
  %ops.i32.i = getelementptr inbounds %struct.clk_init_data, ptr %sampleclk_init.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %ops.i32.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %ops.i32.i, align 4
  %sampleclk_hw.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 2
  %init.i33.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 4
  %113 = ptrtoint ptr %init.i33.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %sampleclk_init.i.i, ptr %init.i33.i, align 4
  %call4.i34.i = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %sampleclk_hw.i.i) #8
  %sampleclk.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 5
  %114 = ptrtoint ptr %sampleclk.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call4.i34.i, ptr %sampleclk.i.i, align 4
  %cmp.i.i35.i = icmp ugt ptr %call4.i34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i35.i, label %sdhci_arasan_register_sampleclk.exit.i, label %if.end10.i40.i

if.end10.i40.i:                                   ; preds = %if.end.i36.i
  %115 = ptrtoint ptr %init.i33.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %init.i33.i, align 4
  %call14.i38.i = call i32 @of_clk_add_provider(ptr noundef %102, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call4.i34.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i38.i)
  %tobool15.not.i39.i = icmp eq i32 %call14.i38.i, 0
  br i1 %tobool15.not.i39.i, label %sdhci_arasan_register_sampleclk.exit.thread54.i, label %if.end10.i40.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge

if.end10.i40.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge: ; preds = %if.end10.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sampleclk.exit.thread.i

sdhci_arasan_register_sampleclk.exit.thread54.i:  ; preds = %if.end10.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sampleclk_init.i.i) #8
  br label %sdhci_arasan_register_sdclk.exit.thread

sdhci_arasan_register_sampleclk.exit.thread.i:    ; preds = %if.end10.i40.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge, %if.then5.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge
  %.str.42.sink57.i = phi ptr [ @.str.42, %if.then5.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge ], [ @.str.49, %if.end10.i40.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge ]
  %retval.0.i42.ph.i = phi i32 [ %call.i.i24.i, %if.then5.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge ], [ %call14.i38.i, %if.end10.i40.i.sdhci_arasan_register_sampleclk.exit.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.42.sink57.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sampleclk_init.i.i) #8
  br label %if.then8.i

sdhci_arasan_register_sampleclk.exit.i:           ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %call4.i34.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sampleclk_init.i.i) #8
  br label %if.then8.i

if.then8.i:                                       ; preds = %sdhci_arasan_register_sampleclk.exit.i, %sdhci_arasan_register_sampleclk.exit.thread.i
  %retval.0.i4253.i = phi i32 [ %retval.0.i42.ph.i, %sdhci_arasan_register_sampleclk.exit.thread.i ], [ %116, %sdhci_arasan_register_sampleclk.exit.i ]
  %117 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %of_node, align 8
  %call.i.i = call ptr @of_find_property(ptr noundef %118, ptr noundef nonnull @.str.40, ptr noundef null) #8
  %tobool.not.i44.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i44.i, label %if.then8.i.sdhci_arasan_register_sdclk.exit_crit_edge, label %if.end.i45.i

if.then8.i.sdhci_arasan_register_sdclk.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_register_sdclk.exit

if.end.i45.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %of_node, align 8
  call void @of_clk_del_provider(ptr noundef %120) #8
  br label %sdhci_arasan_register_sdclk.exit

sdhci_arasan_register_sdclk.exit.thread:          ; preds = %sdhci_arasan_register_sampleclk.exit.thread54.i, %sdhci_arasan_register_sdcardclk.exit.thread48.i.sdhci_arasan_register_sdclk.exit.thread_crit_edge, %sdhci_arasan_update_baseclkfreq.exit.sdhci_arasan_register_sdclk.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clks.i) #8
  br label %if.end89

sdhci_arasan_register_sdclk.exit:                 ; preds = %if.end.i45.i, %if.then8.i.sdhci_arasan_register_sdclk.exit_crit_edge, %sdhci_arasan_register_sdcardclk.exit.i
  %retval.0.i313 = phi i32 [ %100, %sdhci_arasan_register_sdcardclk.exit.i ], [ %retval.0.i4253.i, %if.then8.i.sdhci_arasan_register_sdclk.exit_crit_edge ], [ %retval.0.i4253.i, %if.end.i45.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_clks.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i313)
  %tobool87.not = icmp eq i32 %retval.0.i313, 0
  br i1 %tobool87.not, label %sdhci_arasan_register_sdclk.exit.if.end89_crit_edge, label %sdhci_arasan_register_sdclk.exit.clk_disable_all_crit_edge

sdhci_arasan_register_sdclk.exit.clk_disable_all_crit_edge: ; preds = %sdhci_arasan_register_sdclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable_all

sdhci_arasan_register_sdclk.exit.if.end89_crit_edge: ; preds = %sdhci_arasan_register_sdclk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.end89:                                         ; preds = %sdhci_arasan_register_sdclk.exit.if.end89_crit_edge, %sdhci_arasan_register_sdclk.exit.thread
  %call90 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.if.end97_crit_edge, label %if.then92

if.end89.if.end97_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 11, i32 12
  %121 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @arasan_zynqmp_execute_tuning, ptr %execute_tuning, align 4
  %quirks93 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 13, i32 21
  %122 = ptrtoint ptr %quirks93 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %quirks93, align 4
  %or94 = or i32 %123, 4
  store i32 %or94, ptr %quirks93, align 4
  %quirks95 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %124 = ptrtoint ptr %quirks95 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %quirks95, align 4
  %or96 = or i32 %125, 268435456
  store i32 %or96, ptr %quirks95, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %if.end89.if.end97_crit_edge
  %clk_data = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 12
  call fastcc void @arasan_dt_parse_clk_phases(ptr noundef %dev1, ptr noundef %clk_data)
  %mmc98 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %126 = ptrtoint ptr %mmc98 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mmc98, align 8
  %call99 = call i32 @mmc_of_parse(ptr noundef %127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end103, label %if.then101

if.then101:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %call102 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call99, ptr noundef nonnull @.str.26) #8
  br label %unreg_clk

if.end103:                                        ; preds = %if.end97
  %phy = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 23
  %128 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 -19 to ptr), ptr %phy, align 4
  %call105 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end103.if.end135_crit_edge, label %if.then107

if.end103.if.end135_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then107:                                       ; preds = %if.end103
  %call108 = call ptr @devm_phy_get(ptr noundef %dev1, ptr noundef nonnull @.str.28) #8
  %129 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call108, ptr %phy, align 4
  %cmp.i314 = icmp ugt ptr %call108, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %if.then112, label %if.end116

if.then112:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %call108 to i32
  %call115 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %130, ptr noundef nonnull @.str.29) #8
  br label %unreg_clk

if.end116:                                        ; preds = %if.then107
  %call118 = call i32 @phy_init(ptr noundef %call108) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %do.end123, label %if.end124

do.end123:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #11
  br label %unreg_clk

if.end124:                                        ; preds = %if.end116
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 11, i32 18
  %131 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @sdhci_arasan_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 11, i32 10
  %132 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @sdhci_arasan_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %has_cqe = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i246, i32 0, i32 4
  %133 = ptrtoint ptr %has_cqe to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %has_cqe, align 1
  %134 = ptrtoint ptr %mmc98 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmc98, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %135, i32 0, i32 17
  %136 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %caps2, align 4
  %or128 = or i32 %137, 8388608
  store i32 %or128, ptr %caps2, align 4
  %call.i315 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef null) #8
  %tobool.i316.not = icmp eq ptr %call.i315, null
  br i1 %tobool.i316.not, label %if.then130, label %if.end124.if.end135_crit_edge

if.end124.if.end135_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %mmc98 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmc98, align 8
  %caps2132 = getelementptr inbounds %struct.mmc_host, ptr %139, i32 0, i32 17
  %140 = ptrtoint ptr %caps2132 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %caps2132, align 4
  %or133 = or i32 %141, 16777216
  store i32 %or133, ptr %caps2132, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then130, %if.end124.if.end135_crit_edge, %if.end103.if.end135_crit_edge
  %call136 = call fastcc i32 @sdhci_arasan_add_host(ptr noundef %private.i246)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end135.cleanup_crit_edge, label %err_add_host

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_add_host:                                     ; preds = %if.end135
  %142 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %phy, align 4
  %cmp.i317 = icmp ugt ptr %143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %err_add_host.unreg_clk_crit_edge, label %if.then142

err_add_host.unreg_clk_crit_edge:                 ; preds = %err_add_host
  call void @__sanitizer_cov_trace_pc() #10
  br label %unreg_clk

if.then142:                                       ; preds = %err_add_host
  call void @__sanitizer_cov_trace_pc() #10
  %call144 = call i32 @phy_exit(ptr noundef %143) #8
  br label %unreg_clk

unreg_clk:                                        ; preds = %if.then142, %err_add_host.unreg_clk_crit_edge, %do.end123, %if.then112, %if.then101
  %ret.0 = phi i32 [ %call102, %if.then101 ], [ %call115, %if.then112 ], [ %call118, %do.end123 ], [ %call136, %err_add_host.unreg_clk_crit_edge ], [ %call136, %if.then142 ]
  %144 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %of_node, align 8
  %call.i319 = call ptr @of_find_property(ptr noundef %145, ptr noundef nonnull @.str.40, ptr noundef null) #8
  %tobool.not.i320 = icmp eq ptr %call.i319, null
  br i1 %tobool.not.i320, label %unreg_clk.clk_disable_all_crit_edge, label %if.end.i321

unreg_clk.clk_disable_all_crit_edge:              ; preds = %unreg_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_disable_all

if.end.i321:                                      ; preds = %unreg_clk
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %of_node, align 8
  call void @of_clk_del_provider(ptr noundef %147) #8
  br label %clk_disable_all

clk_disable_all:                                  ; preds = %if.end.i321, %unreg_clk.clk_disable_all_crit_edge, %sdhci_arasan_register_sdclk.exit.clk_disable_all_crit_edge, %sdhci_arasan_register_sdclk.exit.thread333
  %ret.1 = phi i32 [ %retval.0.i313, %sdhci_arasan_register_sdclk.exit.clk_disable_all_crit_edge ], [ %retval.0.i.ph.i, %sdhci_arasan_register_sdclk.exit.thread333 ], [ %ret.0, %unreg_clk.clk_disable_all_crit_edge ], [ %ret.0, %if.end.i321 ]
  call void @clk_disable(ptr noundef %call29) #8
  call void @clk_unprepare(ptr noundef %call29) #8
  br label %clk_dis_ahb

clk_dis_ahb:                                      ; preds = %clk_disable_all, %do.end59, %do.end50
  %ret.2 = phi i32 [ %call45, %do.end50 ], [ %retval.0.i260.ph, %do.end59 ], [ %ret.1, %clk_disable_all ]
  %148 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %clk_ahb, align 4
  call void @clk_disable(ptr noundef %149) #8
  call void @clk_unprepare(ptr noundef %149) #8
  br label %err_pltfm_free

err_pltfm_free:                                   ; preds = %clk_dis_ahb, %do.end, %if.then31, %if.then24, %if.then15
  %ret.3 = phi i32 [ %call18, %if.then15 ], [ %call27, %if.then24 ], [ %call33, %if.then31 ], [ %retval.0.i253.ph, %do.end ], [ %ret.2, %clk_dis_ahb ]
  call void @sdhci_pltfm_free(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pltfm_free, %if.end135.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %ret.3, %err_pltfm_free ], [ 0, %if.end135.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_ahb3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %2 = ptrtoint ptr %clk_ahb3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ahb3, align 4
  %phy = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %private.i18 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %is_phy_on = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i18, i32 0, i32 3
  %6 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_phy_on, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @phy_power_off(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %call9 = tail call i32 @phy_exit(ptr noundef %9) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.40, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end10.sdhci_arasan_unregister_sdclk.exit_crit_edge, label %if.end.i

if.end10.sdhci_arasan_unregister_sdclk.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdhci_arasan_unregister_sdclk.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %13) #8
  br label %sdhci_arasan_unregister_sdclk.exit

sdhci_arasan_unregister_sdclk.exit:               ; preds = %if.end.i, %if.end10.sdhci_arasan_unregister_sdclk.exit_crit_edge
  %call11 = tail call i32 @sdhci_pltfm_unregister(ptr noundef %pdev) #8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  ret i32 %call11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arasan_zynqmp_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %clk_data = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 2
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %clk_data) #8
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 7
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp = icmp eq i8 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @arasan_zynqmp_dll_reset(ptr noundef %private.i)
  %call6 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @arasan_zynqmp_dll_reset(ptr noundef %private.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arasan_dt_parse_clk_phases(ptr noundef %dev, ptr noundef %clk_data) unnamed_addr #2 align 64 {
entry:
  %clk_phase.i184 = alloca [2 x i32], align 8
  %clk_phase.i171 = alloca [2 x i32], align 8
  %clk_phase.i158 = alloca [2 x i32], align 8
  %clk_phase.i145 = alloca [2 x i32], align 8
  %clk_phase.i132 = alloca [2 x i32], align 8
  %clk_phase.i119 = alloca [2 x i32], align 8
  %clk_phase.i106 = alloca [2 x i32], align 8
  %clk_phase.i93 = alloca [2 x i32], align 8
  %clk_phase.i80 = alloca [2 x i32], align 8
  %clk_phase.i67 = alloca [2 x i32], align 8
  %clk_phase.i = alloca [2 x i32], align 8
  %mio_bank = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mio_bank) #8
  %0 = ptrtoint ptr %mio_bank to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mio_bank, align 4
  %set_clk_delays = getelementptr inbounds %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 6
  %1 = ptrtoint ptr %set_clk_delays to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sdhci_arasan_set_clk_delays, ptr %set_clk_delays, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %3, ptr noundef nonnull @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef nonnull %mio_bank, i32 noundef 1, i32 noundef 0) #8
  %6 = ptrtoint ptr %mio_bank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mio_bank, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %spec.select = select i1 %cmp, i32 90, i32 135
  %arrayidx7 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx9, align 4
  %arrayidx7.1 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 63, ptr %arrayidx7.1, align 4
  %arrayidx9.1 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 72, ptr %arrayidx9.1, align 4
  %arrayidx7.2 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 63, ptr %arrayidx7.2, align 4
  %arrayidx9.2 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 60, ptr %arrayidx9.2, align 4
  %arrayidx7.3 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx7.3, align 4
  %arrayidx9.3 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx9.3, align 4
  %arrayidx7.4 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 63, ptr %arrayidx7.4, align 4
  %arrayidx9.4 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 4
  %17 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 60, ptr %arrayidx9.4, align 4
  %arrayidx7.5 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx7.5, align 4
  %arrayidx9.5 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 72, ptr %arrayidx9.5, align 4
  %arrayidx7.6 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx7.6, align 4
  %arrayidx9.6 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 6
  %21 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %arrayidx9.6, align 4
  %arrayidx7.7 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 7
  %22 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 183, ptr %arrayidx7.7, align 4
  %arrayidx9.7 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 7
  %23 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 48, ptr %arrayidx9.7, align 4
  %arrayidx7.8 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 8
  %24 = ptrtoint ptr %arrayidx7.8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 54, ptr %arrayidx7.8, align 4
  %arrayidx9.8 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 8
  %25 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 72, ptr %arrayidx9.8, align 4
  %arrayidx7.9 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %arrayidx7.9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx7.9, align 4
  %arrayidx9.9 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 9
  %27 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select, ptr %arrayidx9.9, align 4
  %arrayidx7.10 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 10
  %28 = ptrtoint ptr %arrayidx7.10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx7.10, align 4
  %arrayidx9.10 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 10
  %29 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx9.10, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call12 = call i32 @of_device_is_compatible(ptr noundef %31, ptr noundef nonnull @.str.53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end10.if.end27_crit_edge, label %if.then14

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx20 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 0
  %32 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 0
  %33 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx23, align 4
  %arrayidx20.1 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 132, ptr %arrayidx20.1, align 4
  %arrayidx23.1 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 60, ptr %arrayidx23.1, align 4
  %arrayidx20.2 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 2
  %36 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 132, ptr %arrayidx20.2, align 4
  %arrayidx23.2 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 2
  %37 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 48, ptr %arrayidx23.2, align 4
  %arrayidx20.3 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 3
  %38 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx20.3, align 4
  %arrayidx23.3 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx23.3, align 4
  %arrayidx20.4 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 4
  %40 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 132, ptr %arrayidx20.4, align 4
  %arrayidx23.4 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 4
  %41 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 48, ptr %arrayidx23.4, align 4
  %arrayidx20.5 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 5
  %42 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %arrayidx20.5, align 4
  %arrayidx23.5 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 5
  %43 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 72, ptr %arrayidx23.5, align 4
  %arrayidx20.6 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %arrayidx20.6, align 4
  %arrayidx23.6 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 6
  %45 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 90, ptr %arrayidx23.6, align 4
  %arrayidx20.7 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 7
  %46 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 162, ptr %arrayidx20.7, align 4
  %arrayidx23.7 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 7
  %47 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 36, ptr %arrayidx23.7, align 4
  %arrayidx20.8 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %arrayidx20.8 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 90, ptr %arrayidx20.8, align 4
  %arrayidx23.8 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 8
  %49 = ptrtoint ptr %arrayidx23.8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 60, ptr %arrayidx23.8, align 4
  %arrayidx20.9 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 9
  %50 = ptrtoint ptr %arrayidx20.9 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx20.9, align 4
  %arrayidx23.9 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 9
  %51 = ptrtoint ptr %arrayidx23.9 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 90, ptr %arrayidx23.9, align 4
  %arrayidx20.10 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 10
  %52 = ptrtoint ptr %arrayidx20.10 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx20.10, align 4
  %arrayidx23.10 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 10
  %53 = ptrtoint ptr %arrayidx23.10 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx23.10, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %if.end10.if.end27_crit_edge
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i) #8
  %56 = ptrtoint ptr %clk_phase.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %clk_phase.i, align 8
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %55, ptr noundef nonnull @.str.54, ptr noundef nonnull %clk_phase.i, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i)) #8
          to label %arasan_dt_read_clk_phase.exit [label %if.then4.i], !srcloc !273

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 0
  %57 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx5.i, align 4
  %arrayidx6.i = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 0
  %59 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx6.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.54, i32 noundef %58, i32 noundef %60) #8
  br label %arasan_dt_read_clk_phase.exit

if.end7.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %clk_phase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clk_phase.i, align 8
  %arrayidx10.i = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 0
  %63 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr inbounds [2 x i32], ptr %clk_phase.i, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 0
  %66 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx13.i, align 4
  br label %arasan_dt_read_clk_phase.exit

arasan_dt_read_clk_phase.exit:                    ; preds = %if.end7.i, %if.then4.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i) #8
  %67 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i67) #8
  %69 = ptrtoint ptr %clk_phase.i67 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %clk_phase.i67, align 8
  %call.i69 = call i32 @of_property_read_variable_u32_array(ptr noundef %68, ptr noundef nonnull @.str.55, ptr noundef nonnull %clk_phase.i67, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %do.body.i71, label %if.end7.i78

do.body.i71:                                      ; preds = %arasan_dt_read_clk_phase.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i74)) #8
          to label %arasan_dt_read_clk_phase.exit79 [label %if.then4.i74], !srcloc !273

if.then4.i74:                                     ; preds = %do.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i72 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %arrayidx5.i72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx5.i72, align 4
  %arrayidx6.i73 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 1
  %72 = ptrtoint ptr %arrayidx6.i73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx6.i73, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.55, i32 noundef %71, i32 noundef %73) #8
  br label %arasan_dt_read_clk_phase.exit79

if.end7.i78:                                      ; preds = %arasan_dt_read_clk_phase.exit
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %clk_phase.i67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %clk_phase.i67, align 8
  %arrayidx10.i75 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %arrayidx10.i75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %arrayidx10.i75, align 4
  %arrayidx11.i76 = getelementptr inbounds [2 x i32], ptr %clk_phase.i67, i32 0, i32 1
  %77 = ptrtoint ptr %arrayidx11.i76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx11.i76, align 4
  %arrayidx13.i77 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %arrayidx13.i77 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx13.i77, align 4
  br label %arasan_dt_read_clk_phase.exit79

arasan_dt_read_clk_phase.exit79:                  ; preds = %if.end7.i78, %if.then4.i74, %do.body.i71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i67) #8
  %80 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i80) #8
  %82 = ptrtoint ptr %clk_phase.i80 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 0, ptr %clk_phase.i80, align 8
  %call.i82 = call i32 @of_property_read_variable_u32_array(ptr noundef %81, ptr noundef nonnull @.str.56, ptr noundef nonnull %clk_phase.i80, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %do.body.i84, label %if.end7.i91

do.body.i84:                                      ; preds = %arasan_dt_read_clk_phase.exit79
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i87)) #8
          to label %arasan_dt_read_clk_phase.exit92 [label %if.then4.i87], !srcloc !273

if.then4.i87:                                     ; preds = %do.body.i84
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i85 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 2
  %83 = ptrtoint ptr %arrayidx5.i85 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx5.i85, align 4
  %arrayidx6.i86 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 2
  %85 = ptrtoint ptr %arrayidx6.i86 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx6.i86, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.56, i32 noundef %84, i32 noundef %86) #8
  br label %arasan_dt_read_clk_phase.exit92

if.end7.i91:                                      ; preds = %arasan_dt_read_clk_phase.exit79
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %clk_phase.i80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %clk_phase.i80, align 8
  %arrayidx10.i88 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 2
  %89 = ptrtoint ptr %arrayidx10.i88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx10.i88, align 4
  %arrayidx11.i89 = getelementptr inbounds [2 x i32], ptr %clk_phase.i80, i32 0, i32 1
  %90 = ptrtoint ptr %arrayidx11.i89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx11.i89, align 4
  %arrayidx13.i90 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 2
  %92 = ptrtoint ptr %arrayidx13.i90 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx13.i90, align 4
  br label %arasan_dt_read_clk_phase.exit92

arasan_dt_read_clk_phase.exit92:                  ; preds = %if.end7.i91, %if.then4.i87, %do.body.i84
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i80) #8
  %93 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i93) #8
  %95 = ptrtoint ptr %clk_phase.i93 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 0, ptr %clk_phase.i93, align 8
  %call.i95 = call i32 @of_property_read_variable_u32_array(ptr noundef %94, ptr noundef nonnull @.str.57, ptr noundef nonnull %clk_phase.i93, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %cmp.i96 = icmp slt i32 %call.i95, 0
  br i1 %cmp.i96, label %do.body.i97, label %if.end7.i104

do.body.i97:                                      ; preds = %arasan_dt_read_clk_phase.exit92
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i100)) #8
          to label %arasan_dt_read_clk_phase.exit105 [label %if.then4.i100], !srcloc !273

if.then4.i100:                                    ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i98 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 3
  %96 = ptrtoint ptr %arrayidx5.i98 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx5.i98, align 4
  %arrayidx6.i99 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 3
  %98 = ptrtoint ptr %arrayidx6.i99 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx6.i99, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.57, i32 noundef %97, i32 noundef %99) #8
  br label %arasan_dt_read_clk_phase.exit105

if.end7.i104:                                     ; preds = %arasan_dt_read_clk_phase.exit92
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %clk_phase.i93 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %clk_phase.i93, align 8
  %arrayidx10.i101 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 3
  %102 = ptrtoint ptr %arrayidx10.i101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx10.i101, align 4
  %arrayidx11.i102 = getelementptr inbounds [2 x i32], ptr %clk_phase.i93, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx11.i102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx11.i102, align 4
  %arrayidx13.i103 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 3
  %105 = ptrtoint ptr %arrayidx13.i103 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx13.i103, align 4
  br label %arasan_dt_read_clk_phase.exit105

arasan_dt_read_clk_phase.exit105:                 ; preds = %if.end7.i104, %if.then4.i100, %do.body.i97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i93) #8
  %106 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i106) #8
  %108 = ptrtoint ptr %clk_phase.i106 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 0, ptr %clk_phase.i106, align 8
  %call.i108 = call i32 @of_property_read_variable_u32_array(ptr noundef %107, ptr noundef nonnull @.str.58, ptr noundef nonnull %clk_phase.i106, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp.i109 = icmp slt i32 %call.i108, 0
  br i1 %cmp.i109, label %do.body.i110, label %if.end7.i117

do.body.i110:                                     ; preds = %arasan_dt_read_clk_phase.exit105
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i113)) #8
          to label %arasan_dt_read_clk_phase.exit118 [label %if.then4.i113], !srcloc !273

if.then4.i113:                                    ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i111 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 4
  %109 = ptrtoint ptr %arrayidx5.i111 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx5.i111, align 4
  %arrayidx6.i112 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 4
  %111 = ptrtoint ptr %arrayidx6.i112 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx6.i112, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.58, i32 noundef %110, i32 noundef %112) #8
  br label %arasan_dt_read_clk_phase.exit118

if.end7.i117:                                     ; preds = %arasan_dt_read_clk_phase.exit105
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %clk_phase.i106 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %clk_phase.i106, align 8
  %arrayidx10.i114 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 4
  %115 = ptrtoint ptr %arrayidx10.i114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx10.i114, align 4
  %arrayidx11.i115 = getelementptr inbounds [2 x i32], ptr %clk_phase.i106, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx11.i115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx11.i115, align 4
  %arrayidx13.i116 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 4
  %118 = ptrtoint ptr %arrayidx13.i116 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx13.i116, align 4
  br label %arasan_dt_read_clk_phase.exit118

arasan_dt_read_clk_phase.exit118:                 ; preds = %if.end7.i117, %if.then4.i113, %do.body.i110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i106) #8
  %119 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i119) #8
  %121 = ptrtoint ptr %clk_phase.i119 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 0, ptr %clk_phase.i119, align 8
  %call.i121 = call i32 @of_property_read_variable_u32_array(ptr noundef %120, ptr noundef nonnull @.str.59, ptr noundef nonnull %clk_phase.i119, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp slt i32 %call.i121, 0
  br i1 %cmp.i122, label %do.body.i123, label %if.end7.i130

do.body.i123:                                     ; preds = %arasan_dt_read_clk_phase.exit118
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i126)) #8
          to label %arasan_dt_read_clk_phase.exit131 [label %if.then4.i126], !srcloc !273

if.then4.i126:                                    ; preds = %do.body.i123
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i124 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 5
  %122 = ptrtoint ptr %arrayidx5.i124 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx5.i124, align 4
  %arrayidx6.i125 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 5
  %124 = ptrtoint ptr %arrayidx6.i125 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx6.i125, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.59, i32 noundef %123, i32 noundef %125) #8
  br label %arasan_dt_read_clk_phase.exit131

if.end7.i130:                                     ; preds = %arasan_dt_read_clk_phase.exit118
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %clk_phase.i119 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %clk_phase.i119, align 8
  %arrayidx10.i127 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 5
  %128 = ptrtoint ptr %arrayidx10.i127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %arrayidx10.i127, align 4
  %arrayidx11.i128 = getelementptr inbounds [2 x i32], ptr %clk_phase.i119, i32 0, i32 1
  %129 = ptrtoint ptr %arrayidx11.i128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx11.i128, align 4
  %arrayidx13.i129 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 5
  %131 = ptrtoint ptr %arrayidx13.i129 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx13.i129, align 4
  br label %arasan_dt_read_clk_phase.exit131

arasan_dt_read_clk_phase.exit131:                 ; preds = %if.end7.i130, %if.then4.i126, %do.body.i123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i119) #8
  %132 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i132) #8
  %134 = ptrtoint ptr %clk_phase.i132 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %clk_phase.i132, align 8
  %call.i134 = call i32 @of_property_read_variable_u32_array(ptr noundef %133, ptr noundef nonnull @.str.60, ptr noundef nonnull %clk_phase.i132, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp.i135 = icmp slt i32 %call.i134, 0
  br i1 %cmp.i135, label %do.body.i136, label %if.end7.i143

do.body.i136:                                     ; preds = %arasan_dt_read_clk_phase.exit131
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i139)) #8
          to label %arasan_dt_read_clk_phase.exit144 [label %if.then4.i139], !srcloc !273

if.then4.i139:                                    ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i137 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 6
  %135 = ptrtoint ptr %arrayidx5.i137 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx5.i137, align 4
  %arrayidx6.i138 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 6
  %137 = ptrtoint ptr %arrayidx6.i138 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx6.i138, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.60, i32 noundef %136, i32 noundef %138) #8
  br label %arasan_dt_read_clk_phase.exit144

if.end7.i143:                                     ; preds = %arasan_dt_read_clk_phase.exit131
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %clk_phase.i132 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %clk_phase.i132, align 8
  %arrayidx10.i140 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 6
  %141 = ptrtoint ptr %arrayidx10.i140 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx10.i140, align 4
  %arrayidx11.i141 = getelementptr inbounds [2 x i32], ptr %clk_phase.i132, i32 0, i32 1
  %142 = ptrtoint ptr %arrayidx11.i141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx11.i141, align 4
  %arrayidx13.i142 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 6
  %144 = ptrtoint ptr %arrayidx13.i142 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx13.i142, align 4
  br label %arasan_dt_read_clk_phase.exit144

arasan_dt_read_clk_phase.exit144:                 ; preds = %if.end7.i143, %if.then4.i139, %do.body.i136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i132) #8
  %145 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i145) #8
  %147 = ptrtoint ptr %clk_phase.i145 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 0, ptr %clk_phase.i145, align 8
  %call.i147 = call i32 @of_property_read_variable_u32_array(ptr noundef %146, ptr noundef nonnull @.str.61, ptr noundef nonnull %clk_phase.i145, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp.i148 = icmp slt i32 %call.i147, 0
  br i1 %cmp.i148, label %do.body.i149, label %if.end7.i156

do.body.i149:                                     ; preds = %arasan_dt_read_clk_phase.exit144
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i152)) #8
          to label %arasan_dt_read_clk_phase.exit157 [label %if.then4.i152], !srcloc !273

if.then4.i152:                                    ; preds = %do.body.i149
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i150 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 7
  %148 = ptrtoint ptr %arrayidx5.i150 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx5.i150, align 4
  %arrayidx6.i151 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 7
  %150 = ptrtoint ptr %arrayidx6.i151 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx6.i151, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.61, i32 noundef %149, i32 noundef %151) #8
  br label %arasan_dt_read_clk_phase.exit157

if.end7.i156:                                     ; preds = %arasan_dt_read_clk_phase.exit144
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %clk_phase.i145 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %clk_phase.i145, align 8
  %arrayidx10.i153 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 7
  %154 = ptrtoint ptr %arrayidx10.i153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx10.i153, align 4
  %arrayidx11.i154 = getelementptr inbounds [2 x i32], ptr %clk_phase.i145, i32 0, i32 1
  %155 = ptrtoint ptr %arrayidx11.i154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx11.i154, align 4
  %arrayidx13.i155 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 7
  %157 = ptrtoint ptr %arrayidx13.i155 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %arrayidx13.i155, align 4
  br label %arasan_dt_read_clk_phase.exit157

arasan_dt_read_clk_phase.exit157:                 ; preds = %if.end7.i156, %if.then4.i152, %do.body.i149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i145) #8
  %158 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i158) #8
  %160 = ptrtoint ptr %clk_phase.i158 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 0, ptr %clk_phase.i158, align 8
  %call.i160 = call i32 @of_property_read_variable_u32_array(ptr noundef %159, ptr noundef nonnull @.str.62, ptr noundef nonnull %clk_phase.i158, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %cmp.i161 = icmp slt i32 %call.i160, 0
  br i1 %cmp.i161, label %do.body.i162, label %if.end7.i169

do.body.i162:                                     ; preds = %arasan_dt_read_clk_phase.exit157
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i165)) #8
          to label %arasan_dt_read_clk_phase.exit170 [label %if.then4.i165], !srcloc !273

if.then4.i165:                                    ; preds = %do.body.i162
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i163 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 8
  %161 = ptrtoint ptr %arrayidx5.i163 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx5.i163, align 4
  %arrayidx6.i164 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 8
  %163 = ptrtoint ptr %arrayidx6.i164 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx6.i164, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef %162, i32 noundef %164) #8
  br label %arasan_dt_read_clk_phase.exit170

if.end7.i169:                                     ; preds = %arasan_dt_read_clk_phase.exit157
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %clk_phase.i158 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %clk_phase.i158, align 8
  %arrayidx10.i166 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 8
  %167 = ptrtoint ptr %arrayidx10.i166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %arrayidx10.i166, align 4
  %arrayidx11.i167 = getelementptr inbounds [2 x i32], ptr %clk_phase.i158, i32 0, i32 1
  %168 = ptrtoint ptr %arrayidx11.i167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx11.i167, align 4
  %arrayidx13.i168 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 8
  %170 = ptrtoint ptr %arrayidx13.i168 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %arrayidx13.i168, align 4
  br label %arasan_dt_read_clk_phase.exit170

arasan_dt_read_clk_phase.exit170:                 ; preds = %if.end7.i169, %if.then4.i165, %do.body.i162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i158) #8
  %171 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i171) #8
  %173 = ptrtoint ptr %clk_phase.i171 to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 0, ptr %clk_phase.i171, align 8
  %call.i173 = call i32 @of_property_read_variable_u32_array(ptr noundef %172, ptr noundef nonnull @.str.63, ptr noundef nonnull %clk_phase.i171, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %cmp.i174 = icmp slt i32 %call.i173, 0
  br i1 %cmp.i174, label %do.body.i175, label %if.end7.i182

do.body.i175:                                     ; preds = %arasan_dt_read_clk_phase.exit170
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i178)) #8
          to label %arasan_dt_read_clk_phase.exit183 [label %if.then4.i178], !srcloc !273

if.then4.i178:                                    ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i176 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 9
  %174 = ptrtoint ptr %arrayidx5.i176 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx5.i176, align 4
  %arrayidx6.i177 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 9
  %176 = ptrtoint ptr %arrayidx6.i177 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx6.i177, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.63, i32 noundef %175, i32 noundef %177) #8
  br label %arasan_dt_read_clk_phase.exit183

if.end7.i182:                                     ; preds = %arasan_dt_read_clk_phase.exit170
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %clk_phase.i171 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %clk_phase.i171, align 8
  %arrayidx10.i179 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 9
  %180 = ptrtoint ptr %arrayidx10.i179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %arrayidx10.i179, align 4
  %arrayidx11.i180 = getelementptr inbounds [2 x i32], ptr %clk_phase.i171, i32 0, i32 1
  %181 = ptrtoint ptr %arrayidx11.i180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx11.i180, align 4
  %arrayidx13.i181 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 9
  %183 = ptrtoint ptr %arrayidx13.i181 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %arrayidx13.i181, align 4
  br label %arasan_dt_read_clk_phase.exit183

arasan_dt_read_clk_phase.exit183:                 ; preds = %if.end7.i182, %if.then4.i178, %do.body.i175
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i171) #8
  %184 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_phase.i184) #8
  %186 = ptrtoint ptr %clk_phase.i184 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 0, ptr %clk_phase.i184, align 8
  %call.i186 = call i32 @of_property_read_variable_u32_array(ptr noundef %185, ptr noundef nonnull @.str.64, ptr noundef nonnull %clk_phase.i184, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %cmp.i187 = icmp slt i32 %call.i186, 0
  br i1 %cmp.i187, label %do.body.i188, label %if.end7.i195

do.body.i188:                                     ; preds = %arasan_dt_read_clk_phase.exit183
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arasan_dt_parse_clk_phases, %if.then4.i191)) #8
          to label %arasan_dt_read_clk_phase.exit196 [label %if.then4.i191], !srcloc !273

if.then4.i191:                                    ; preds = %do.body.i188
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx5.i189 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 10
  %187 = ptrtoint ptr %arrayidx5.i189 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx5.i189, align 4
  %arrayidx6.i190 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 10
  %189 = ptrtoint ptr %arrayidx6.i190 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx6.i190, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.64, i32 noundef %188, i32 noundef %190) #8
  br label %arasan_dt_read_clk_phase.exit196

if.end7.i195:                                     ; preds = %arasan_dt_read_clk_phase.exit183
  call void @__sanitizer_cov_trace_pc() #10
  %191 = ptrtoint ptr %clk_phase.i184 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %clk_phase.i184, align 8
  %arrayidx10.i192 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 4, i32 10
  %193 = ptrtoint ptr %arrayidx10.i192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %192, ptr %arrayidx10.i192, align 4
  %arrayidx11.i193 = getelementptr inbounds [2 x i32], ptr %clk_phase.i184, i32 0, i32 1
  %194 = ptrtoint ptr %arrayidx11.i193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx11.i193, align 4
  %arrayidx13.i194 = getelementptr %struct.sdhci_arasan_clk_data, ptr %clk_data, i32 0, i32 5, i32 10
  %196 = ptrtoint ptr %arrayidx13.i194 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx13.i194, align 4
  br label %arasan_dt_read_clk_phase.exit196

arasan_dt_read_clk_phase.exit196:                 ; preds = %if.end7.i195, %if.then4.i191, %do.body.i188
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_phase.i184) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mio_bank) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_arasan_hs400_enhanced_strobe(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !274

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 120) #8
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !275
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %8 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhanced_strobe, align 1, !range !272
  %and = and i32 %retval.0.i, -2
  %10 = zext i8 %9 to i32
  %vendor.0 = or i32 %and, %10
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i6 = icmp eq ptr %14, null
  br i1 %tobool.not.i6, label %do.body.i, label %if.then.i7, !prof !274

if.then.i7:                                       ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %14(ptr noundef %private.i, i32 noundef %vendor.0, i32 noundef 120) #8
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %vendor.0) #8
  %ioaddr.i8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %ioaddr.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i8, align 16
  %add.ptr.i9 = getelementptr i8, ptr %17, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %15) #8, !srcloc !278
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_arasan_voltage_switch(ptr nocapture noundef readnone %mmc, ptr nocapture noundef readonly %ios) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %0 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cond = icmp eq i8 %1, 1
  %. = select i1 %cond, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_arasan_add_host(ptr nocapture noundef readonly %sdhci_arasan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdhci_arasan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdhci_arasan, align 4
  %has_cqe = getelementptr inbounds %struct.sdhci_arasan_data, ptr %sdhci_arasan, i32 0, i32 4
  %2 = ptrtoint ptr %has_cqe to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_cqe, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @sdhci_add_host(ptr noundef %1) #8
  br label %cleanup24

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sdhci_setup_host(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup24_crit_edge

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.end5:                                          ; preds = %if.end
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 248, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %9, i32 512
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %mmio, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sdhci_arasan_cqhci_ops, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps, align 4
  %or = or i32 %15, 1
  store i32 %or, ptr %caps, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end9.if.end13_crit_edge
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 8
  %call16 = tail call i32 @cqhci_init(ptr noundef nonnull %call.i, ptr noundef %17, i1 noundef zeroext %tobool10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32 @__sdhci_add_host(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup24_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.cleanup24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end13.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %1) #8
  br label %cleanup24

cleanup24:                                        ; preds = %cleanup, %if.end19.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %if.then
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ %call, %if.then ], [ %call2, %if.end.cleanup24_crit_edge ], [ 0, %if.end19.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_arasan_syscon_write(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %fld, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %soc_ctl_base2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 19
  %0 = ptrtoint ptr %soc_ctl_base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc_ctl_base2, align 4
  %2 = ptrtoint ptr %fld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fld, align 4
  %width4 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, ptr %fld, i32 0, i32 1
  %4 = ptrtoint ptr %width4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %width4, align 4
  %shift5 = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_field, ptr %fld, i32 0, i32 2
  %6 = ptrtoint ptr %shift5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %shift5, align 2
  %conv = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp slt i16 %7, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc_ctl_map = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 20
  %8 = ptrtoint ptr %soc_ctl_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc_ctl_map, align 4
  %hiword_update = getelementptr inbounds %struct.sdhci_arasan_soc_ctl_map, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %hiword_update to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hiword_update, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %val, %conv
  %conv9 = zext i16 %5 to i32
  %sub = sub nsw i32 31, %conv9
  %shr = lshr i32 -1, %sub
  %add11 = add nsw i32 %conv, 16
  %shl12 = shl i32 %shr, %add11
  %or = or i32 %shl12, %shl
  %call13 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %or) #8
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl15.neg = shl nsw i32 -1, %conv
  %conv19 = zext i16 %5 to i32
  %12 = add nsw i32 %conv19, %conv
  %sub21 = sub nsw i32 31, %12
  %shr22 = lshr i32 -1, %sub21
  %and23 = and i32 %shr22, %shl15.neg
  %shl26 = shl i32 %val, %conv
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %and23, i32 noundef %shl26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then7
  %ret.0 = phi i32 [ %call13, %if.then7 ], [ %call.i, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool29.not = icmp eq i32 %ret.0, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %do.end

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end28
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.end.dev_name.exit_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arasan_zynqmp_dll_reset(ptr noundef %host) unnamed_addr #2 align 64 {
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
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !274

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i16 %3(ptr noundef %host, i32 noundef 44) #8
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !279
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %8 = and i16 %retval.0.i, -6
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i2 = icmp eq ptr %12, null
  br i1 %tobool.not.i2, label %do.body.i, label %if.then.i3, !prof !274

if.then.i3:                                       ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %12(ptr noundef %host, i16 noundef zeroext %8, i32 noundef 44) #8
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !281
  tail call void @arm_heavy_mb() #8
  %13 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  %ioaddr.i4 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i4, align 16
  %add.ptr.i5 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i5, i16 %13) #8, !srcloc !282
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i3
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %read_w.i7 = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %read_w.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_w.i7, align 4
  %tobool.not.i8 = icmp eq ptr %19, null
  br i1 %tobool.not.i8, label %if.else.i13, label %if.then.i10, !prof !274

if.then.i10:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i9 = tail call zeroext i16 %19(ptr noundef %host, i32 noundef 44) #8
  br label %sdhci_readw.exit15

if.else.i13:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i11 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i12 = getelementptr i8, ptr %21, i32 44
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i12) #8, !srcloc !279
  %23 = tail call i16 @llvm.bswap.i16(i16 %22) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !280
  br label %sdhci_readw.exit15

sdhci_readw.exit15:                               ; preds = %if.else.i13, %if.then.i10
  %retval.0.i14 = phi i16 [ %call.i9, %if.then.i10 ], [ %23, %if.else.i13 ]
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %retval.0.i14) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_arasan_set_clk_delays(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i12 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %sampleclk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %0 = ptrtoint ptr %sampleclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sampleclk, align 4
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 64
  %2 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing, align 4
  %arrayidx = getelementptr %struct.sdhci_arasan_data, ptr %private.i12, i32 0, i32 5, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 @clk_set_phase(ptr noundef %1, i32 noundef %5) #8
  %sdcardclk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %6 = ptrtoint ptr %sdcardclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdcardclk, align 4
  %8 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timing, align 4
  %arrayidx5 = getelementptr %struct.sdhci_arasan_data, ptr %private.i12, i32 0, i32 5, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx5, align 4
  %call6 = tail call i32 @clk_set_phase(ptr noundef %7, i32 noundef %11) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

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
define internal void @sdhci_arasan_dumpregs(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_arasan_cqe_enable(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !274

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %3(ptr noundef %private.i, i32 noundef 36) #8
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !275
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and25 = and i32 %retval.0.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not26 = icmp eq i32 %and25, 0
  br i1 %tobool.not26, label %sdhci_readl.exit.while.end_crit_edge, label %while.body.lr.ph

sdhci_readl.exit.while.end_crit_edge:             ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %sdhci_readl.exit
  %ioaddr.i11 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %sdhci_readl.exit24.while.body_crit_edge, %while.body.lr.ph
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i8 = icmp eq ptr %11, null
  br i1 %tobool.not.i8, label %if.else.i13, label %if.then.i10, !prof !274

if.then.i10:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i9 = tail call i32 %11(ptr noundef %private.i, i32 noundef 32) #8
  br label %sdhci_readl.exit15

if.else.i13:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #8, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %sdhci_readl.exit15

sdhci_readl.exit15:                               ; preds = %if.else.i13, %if.then.i10
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i17 = icmp eq ptr %18, null
  br i1 %tobool.not.i17, label %if.else.i22, label %if.then.i19, !prof !274

if.then.i19:                                      ; preds = %sdhci_readl.exit15
  call void @__sanitizer_cov_trace_pc() #10
  %call.i18 = tail call i32 %18(ptr noundef %private.i, i32 noundef 36) #8
  br label %sdhci_readl.exit24

if.else.i22:                                      ; preds = %sdhci_readl.exit15
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ioaddr.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i11, align 16
  %add.ptr.i21 = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #8, !srcloc !275
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %sdhci_readl.exit24

sdhci_readl.exit24:                               ; preds = %if.else.i22, %if.then.i19
  %retval.0.i23 = phi i32 [ %call.i18, %if.then.i19 ], [ %22, %if.else.i22 ]
  %and = and i32 %retval.0.i23, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdhci_readl.exit24.while.end_crit_edge, label %sdhci_readl.exit24.while.body_crit_edge

sdhci_readl.exit24.while.body_crit_edge:          ; preds = %sdhci_readl.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

sdhci_readl.exit24.while.end_crit_edge:           ; preds = %sdhci_readl.exit24
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %sdhci_readl.exit24.while.end_crit_edge, %sdhci_readl.exit.while.end_crit_edge
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_arasan_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i83 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %phy = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then:                                          ; preds = %entry
  %is_phy_on = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i83, i32 0, i32 3
  %2 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_phy_on, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %clock)
  %cmp = icmp ult i32 %clock, 400001
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then4, label %if.end16

if.then4:                                         ; preds = %if.then
  %max_clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 18
  %4 = ptrtoint ptr %max_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_clk, align 4
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %5) #8
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %call6 = tail call i32 @phy_power_on(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then4.if.end25.sink.split_crit_edge, label %do.end

if.then4.if.end25.sink.split_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.sink.split

do.end:                                           ; preds = %if.then4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %do.end.dev_name.exit_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %retval.0.i) #11
  br label %cleanup

if.end16:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %clock)
  %cmp12 = icmp ugt i32 %clock, 400000
  br i1 %cmp12, label %land.lhs.true18, label %if.end16.if.end25_crit_edge

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

land.lhs.true18:                                  ; preds = %if.end16
  %14 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_phy_on, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end25_crit_edge, label %if.then21

land.lhs.true18.if.end25_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %call23 = tail call i32 @phy_power_off(ptr noundef %17) #8
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %if.then21, %if.then4.if.end25.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.then21 ], [ 1, %if.then4.if.end25.sink.split_crit_edge ]
  %.demorgan = and i1 %cmp, %tobool.not
  %18 = xor i1 %.demorgan, true
  %19 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %is_phy_on, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %land.lhs.true18.if.end25_crit_edge, %if.end16.if.end25_crit_edge, %entry.if.end25_crit_edge
  %ctrl_phy.0.off090 = phi i1 [ true, %land.lhs.true18.if.end25_crit_edge ], [ false, %if.end16.if.end25_crit_edge ], [ false, %entry.if.end25_crit_edge ], [ %18, %if.end25.sink.split ]
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %20 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %quirks, align 4
  %and = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %clock)
  %cmp28 = icmp eq i32 %clock, 25000000
  %spec.store.select = select i1 %cmp28, i32 19000000, i32 %clock
  %clock.addr.0 = select i1 %tobool26.not, i32 %clock, i32 %spec.store.select
  %set_clk_delays = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 4, i32 6
  %22 = ptrtoint ptr %set_clk_delays to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_clk_delays, align 4
  %tobool32.not = icmp eq ptr %23, null
  br i1 %tobool32.not, label %if.end25.if.end35_crit_edge, label %if.then33

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23(ptr noundef %host) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end25.if.end35_crit_edge
  tail call void @sdhci_set_clock(ptr noundef %host, i32 noundef %clock.addr.0) #8
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 4
  %and37 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end40_crit_edge, label %if.then39

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end35.if.end40_crit_edge
  br i1 %ctrl_phy.0.off090, label %if.then42, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  %26 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy, align 4
  %call44 = tail call i32 @phy_power_on(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end55, label %do.end49

do.end49:                                         ; preds = %if.then42
  %mmc51 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %28 = ptrtoint ptr %mmc51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc51, align 8
  %init_name.i84 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %init_name.i84 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i84, align 8
  %tobool.not.i85 = icmp eq ptr %31, null
  br i1 %tobool.not.i85, label %if.end.i86, label %do.end49.dev_name.exit88_crit_edge

do.end49.dev_name.exit88_crit_edge:               ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit88

if.end.i86:                                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev52 = getelementptr inbounds %struct.mmc_host, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %class_dev52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev52, align 4
  br label %dev_name.exit88

dev_name.exit88:                                  ; preds = %if.end.i86, %do.end49.dev_name.exit88_crit_edge
  %retval.0.i87 = phi ptr [ %33, %if.end.i86 ], [ %31, %do.end49.dev_name.exit88_crit_edge ]
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %retval.0.i87) #11
  br label %cleanup

if.end55:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %is_phy_on56 = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i83, i32 0, i32 3
  %34 = ptrtoint ptr %is_phy_on56 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %is_phy_on56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %dev_name.exit88, %if.end40.cleanup_crit_edge, %dev_name.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #8
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #8
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #8
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_clk_get_max_clock(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_arasan_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #8
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !274

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i8 %5(ptr noundef %host, i32 noundef 40) #8
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #8, !srcloc !283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !284
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %8, %if.else.i ]
  %9 = or i8 %retval.0.i, -64
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i10 = icmp eq ptr %13, null
  br i1 %tobool.not.i10, label %do.body.i, label %if.then.i11, !prof !274

if.then.i11:                                      ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %host, i8 noundef zeroext %9, i32 noundef 40) #8
  br label %if.end

do.body.i:                                        ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !285
  tail call void @arm_heavy_mb() #8
  %ioaddr.i12 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i12, align 16
  %add.ptr.i13 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 %9) #8, !srcloc !286
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i11, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_arasan_sdcardclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_clock, align 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_arasan_sampleclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 58
  %4 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_clock, align 8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_zynqmp_sdcardclk_set_phase(ptr noundef %hw, i32 noundef %degrees) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %version = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_zynqmp_sampleclk_set_phase(ptr noundef %hw, i32 noundef %degrees) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  %version = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_versal_sdcardclk_set_phase(ptr nocapture noundef readonly %hw, i32 noundef %degrees) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -16
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %version = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timing, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 9
  br i1 %6, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sdhci_versal_sdcardclk_set_phase, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %tap_max.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %mul = mul i32 %tap_max.0, %degrees
  %div = sdiv i32 %mul, 360
  %conv7 = trunc i32 %div to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %tobool.not = icmp eq i8 %conv7, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then8

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %sw.epilog
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !274

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 61692) #8
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 61692
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !275
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.else.i ]
  %or = or i32 %retval.0.i, 64
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i26 = icmp eq ptr %19, null
  br i1 %tobool.not.i26, label %do.body.i, label %if.then.i27, !prof !274

if.then.i27:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %19(ptr noundef %1, i32 noundef %or, i32 noundef 61692) #8
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %ioaddr.i28 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i28, align 16
  %add.ptr.i29 = getelementptr i8, ptr %22, i32 61692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %20) #8, !srcloc !278
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i27
  %and = and i32 %or, -64
  %conv9 = and i32 %div, 255
  %or10 = or i32 %and, %conv9
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %write_l.i31 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_l.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_l.i31, align 4
  %tobool.not.i32 = icmp eq ptr %26, null
  br i1 %tobool.not.i32, label %do.body.i36, label %if.then.i33, !prof !274

if.then.i33:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %1, i32 noundef %or10, i32 noundef 61692) #8
  br label %cleanup

do.body.i36:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or10) #8
  %ioaddr.i34 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i34, align 16
  %add.ptr.i35 = getelementptr i8, ptr %29, i32 61692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %27) #8, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %do.body.i36, %if.then.i33, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_versal_sampleclk_set_phase(ptr nocapture noundef readonly %hw, i32 noundef %degrees) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr3, align 4
  %version = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %timing = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timing, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 9
  br i1 %6, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sdhci_versal_sampleclk_set_phase, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %tap_max.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %mul = mul i32 %tap_max.0, %degrees
  %div = sdiv i32 %mul, 360
  %conv7 = trunc i32 %div to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7)
  %tobool.not = icmp eq i8 %conv7, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then8

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %sw.epilog
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !274

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %11(ptr noundef %1, i32 noundef 61688) #8
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 61688
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !275
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !276
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %15, %if.else.i ]
  %or = or i32 %retval.0.i, 512
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i34 = icmp eq ptr %19, null
  br i1 %tobool.not.i34, label %do.body.i, label %if.then.i35, !prof !274

if.then.i35:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %19(ptr noundef %1, i32 noundef %or, i32 noundef 61688) #8
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %ioaddr.i36 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i36, align 16
  %add.ptr.i37 = getelementptr i8, ptr %22, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %20) #8, !srcloc !278
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i35
  %or9 = or i32 %retval.0.i, 768
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %write_l.i39 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write_l.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write_l.i39, align 4
  %tobool.not.i40 = icmp eq ptr %26, null
  br i1 %tobool.not.i40, label %do.body.i44, label %if.then.i41, !prof !274

if.then.i41:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26(ptr noundef %1, i32 noundef %or9, i32 noundef 61688) #8
  br label %sdhci_writel.exit45

do.body.i44:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or9) #8
  %ioaddr.i42 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i42, align 16
  %add.ptr.i43 = getelementptr i8, ptr %29, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %27) #8, !srcloc !278
  br label %sdhci_writel.exit45

sdhci_writel.exit45:                              ; preds = %do.body.i44, %if.then.i41
  %and = and i32 %or9, -256
  %conv10 = and i32 %div, 255
  %or11 = or i32 %and, %conv10
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %write_l.i47 = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %write_l.i47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_l.i47, align 4
  %tobool.not.i48 = icmp eq ptr %33, null
  br i1 %tobool.not.i48, label %do.body.i52, label %if.then.i49, !prof !274

if.then.i49:                                      ; preds = %sdhci_writel.exit45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %33(ptr noundef %1, i32 noundef %or11, i32 noundef 61688) #8
  br label %sdhci_writel.exit53

do.body.i52:                                      ; preds = %sdhci_writel.exit45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or11) #8
  %ioaddr.i50 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %ioaddr.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i50, align 16
  %add.ptr.i51 = getelementptr i8, ptr %36, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %34) #8, !srcloc !278
  br label %sdhci_writel.exit53

sdhci_writel.exit53:                              ; preds = %do.body.i52, %if.then.i49
  %and12 = and i32 %or11, -513
  %37 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i, align 4
  %write_l.i55 = getelementptr inbounds %struct.sdhci_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %write_l.i55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write_l.i55, align 4
  %tobool.not.i56 = icmp eq ptr %40, null
  br i1 %tobool.not.i56, label %do.body.i60, label %if.then.i57, !prof !274

if.then.i57:                                      ; preds = %sdhci_writel.exit53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %40(ptr noundef %1, i32 noundef %and12, i32 noundef 61688) #8
  br label %cleanup

do.body.i60:                                      ; preds = %sdhci_writel.exit53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !277
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %and12) #8
  %ioaddr.i58 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i58, align 16
  %add.ptr.i59 = getelementptr i8, ptr %43, i32 61688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %41) #8, !srcloc !278
  br label %cleanup

cleanup:                                          ; preds = %do.body.i60, %if.then.i57, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %private.i52 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %2 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 32
  %8 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %has_cqe = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i52, i32 0, i32 4
  %9 = ptrtoint ptr %has_cqe to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_cqe, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %mmc4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %mmc4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc4, align 8
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.then3.if.end9_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %if.then3.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %phy = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end13.if.end30_crit_edge, label %land.lhs.true

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end13
  %is_phy_on = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i52, i32 0, i32 3
  %15 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_phy_on, align 4, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end30_crit_edge, label %if.then16

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then16:                                        ; preds = %land.lhs.true
  %call18 = tail call i32 @phy_power_off(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.then16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77) #11
  %call21 = tail call i32 @sdhci_resume_host(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %do.end.cleanup_crit_edge, label %do.end26

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end26:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #11
  br label %cleanup

if.end28:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_phy_on, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %land.lhs.true.if.end30_crit_edge, %if.end13.if.end30_crit_edge
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i, align 128
  tail call void @clk_disable(ptr noundef %19) #8
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %20 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end26, %do.end.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call18, %do.end26 ], [ %call18, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_arasan_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i57 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 22
  %2 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_ahb, align 4
  %call3 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.82) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 81
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 128
  %call4 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.85) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %phy = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 23
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.if.end22_crit_edge, label %land.lhs.true

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end10
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 58
  %10 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.not = icmp eq i32 %11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end22_crit_edge, label %if.then13

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then13:                                        ; preds = %land.lhs.true
  %call15 = tail call i32 @phy_power_on(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #11
  br label %cleanup

if.end21:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %is_phy_on = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i57, i32 0, i32 3
  %12 = ptrtoint ptr %is_phy_on to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %is_phy_on, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %call23 = tail call i32 @sdhci_resume_host(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.80) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %has_cqe = getelementptr inbounds %struct.sdhci_arasan_data, ptr %private.i57, i32 0, i32 4
  %13 = ptrtoint ptr %has_cqe to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_cqe, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool30.not = icmp eq i8 %14, 0
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.then31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %mmc32 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc32, align 8
  %call33 = tail call i32 @cqhci_resume(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge, %do.end28, %do.end20, %do.end9, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %call4, %do.end9 ], [ %call23, %do.end28 ], [ %call33, %if.then31 ], [ %call15, %do.end20 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !217, !219, !221, !223, !224, !225, !226, !228, !230, !232, !234, !236, !238, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !260}
!llvm.module.flags = !{!261, !262, !263, !264, !265, !266, !267, !268}
!llvm.ident = !{!269}

!0 = !{ptr @__initcall__kmod_sdhci_of_arasan__303_1765_sdhci_arasan_driver_init6, !1, !"__initcall__kmod_sdhci_of_arasan__303_1765_sdhci_arasan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1765, i32 1}
!2 = !{ptr @__exitcall_sdhci_arasan_driver_exit, !1, !"__exitcall_sdhci_arasan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1767, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1768, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1769, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1756, i32 11}
!12 = !{ptr @sdhci_arasan_driver, !13, !"sdhci_arasan_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1754, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1592, i32 30}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1600, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1607, i32 44}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1610, i32 9}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1614, i32 30}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1616, i32 46}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1622, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sdhci_arasan_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @sdhci_arasan_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1631, i32 4}
!36 = !{ptr @sdhci_arasan_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sdhci_arasan_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1638, i32 3}
!40 = !{ptr @sdhci_arasan_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sdhci_arasan_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1642, i32 32}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1645, i32 32}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1650, i32 34}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1653, i32 34}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1654, i32 34}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1655, i32 34}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1656, i32 34}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1669, i32 34}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1681, i32 33}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1686, i32 34}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1687, i32 41}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1690, i32 10}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1696, i32 4}
!68 = !{ptr @sdhci_arasan_probe._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sdhci_arasan_probe._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1707, i32 34}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 972, i32 3}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sdhci_arasan_update_clockmultiplier._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sdhci_arasan_update_clockmultiplier._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 254, i32 3}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sdhci_arasan_syscon_write._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sdhci_arasan_syscon_write._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1467, i32 3}
!84 = !{ptr @sdhci_arasan_update_support64b._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sdhci_arasan_update_support64b._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1011, i32 3}
!88 = !{ptr @sdhci_arasan_update_baseclkfreq._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sdhci_arasan_update_baseclkfreq._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1505, i32 31}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1343, i32 42}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1346, i32 3}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @sdhci_arasan_register_sdcardclk._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @sdhci_arasan_register_sdcardclk._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1366, i32 3}
!101 = !{ptr @sdhci_arasan_register_sdcardclk._entry.44, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @sdhci_arasan_register_sdcardclk._entry_ptr.46, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1398, i32 3}
!105 = !{ptr @sdhci_arasan_register_sampleclk._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @sdhci_arasan_register_sampleclk._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1418, i32 3}
!109 = !{ptr @sdhci_arasan_register_sampleclk._entry.48, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @sdhci_arasan_register_sampleclk._entry_ptr.50, !108, !"_entry_ptr", i1 false, i1 false}
!111 = distinct !{null, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 921, i32 36}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1085, i32 38}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1097, i32 44}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1110, i32 6}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1112, i32 6}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1114, i32 6}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1116, i32 6}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1118, i32 6}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1120, i32 6}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1122, i32 6}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1124, i32 6}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1126, i32 6}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1128, i32 6}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1130, i32 6}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1047, i32 3}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @arasan_dt_read_clk_phase.__UNIQUE_ID_ddebug302, !140, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!144 = !{ptr @sdhci_arasan_cqhci_ops, !145, !"sdhci_arasan_cqhci_ops", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 442, i32 36}
!146 = !{ptr @sdhci_arasan_of_match, !147, !"sdhci_arasan_of_match", i1 false, i1 false}
!147 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1264, i32 34}
!148 = !{ptr @sdhci_arasan_rk3399_data, !149, !"sdhci_arasan_rk3399_data", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1201, i32 36}
!150 = !{ptr @rk3399_soc_ctl_map, !151, !"rk3399_soc_ctl_map", i1 false, i1 false}
!151 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 176, i32 46}
!152 = !{ptr @sdhci_arasan_cqe_pdata, !153, !"sdhci_arasan_cqe_pdata", i1 false, i1 false}
!153 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 459, i32 38}
!154 = !{ptr @sdhci_arasan_cqe_ops, !155, !"sdhci_arasan_cqe_ops", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 448, i32 31}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 284, i32 5}
!158 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @sdhci_arasan_set_clock._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @sdhci_arasan_set_clock._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @sdhci_arasan_set_clock._entry.70, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 339, i32 4}
!163 = !{ptr @sdhci_arasan_set_clock._entry_ptr.71, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @arasan_clk_ops, !165, !"arasan_clk_ops", i1 false, i1 false}
!165 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1141, i32 42}
!166 = !{ptr @arasan_sdcardclk_ops, !167, !"arasan_sdcardclk_ops", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 597, i32 29}
!168 = !{ptr @arasan_sampleclk_ops, !169, !"arasan_sampleclk_ops", i1 false, i1 false}
!169 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 624, i32 29}
!170 = !{ptr @intel_lgm_emmc_data, !171, !"intel_lgm_emmc_data", i1 false, i1 false}
!171 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1207, i32 36}
!172 = !{ptr @intel_lgm_emmc_soc_ctl_map, !173, !"intel_lgm_emmc_soc_ctl_map", i1 false, i1 false}
!173 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 182, i32 46}
!174 = !{ptr @intel_lgm_sdxc_data, !175, !"intel_lgm_sdxc_data", i1 false, i1 false}
!175 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1213, i32 36}
!176 = !{ptr @intel_lgm_sdxc_soc_ctl_map, !177, !"intel_lgm_sdxc_soc_ctl_map", i1 false, i1 false}
!177 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 188, i32 46}
!178 = !{ptr @intel_keembay_emmc_data, !179, !"intel_keembay_emmc_data", i1 false, i1 false}
!179 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1246, i32 36}
!180 = !{ptr @intel_keembay_soc_ctl_map, !181, !"intel_keembay_soc_ctl_map", i1 false, i1 false}
!181 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 201, i32 46}
!182 = !{ptr @sdhci_keembay_emmc_pdata, !183, !"sdhci_keembay_emmc_pdata", i1 false, i1 false}
!183 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1157, i32 38}
!184 = !{ptr @intel_keembay_sd_data, !185, !"intel_keembay_sd_data", i1 false, i1 false}
!185 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1252, i32 36}
!186 = !{ptr @sdhci_keembay_sd_pdata, !187, !"sdhci_keembay_sd_pdata", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1172, i32 38}
!188 = !{ptr @sdhci_arasan_ops, !189, !"sdhci_arasan_ops", i1 false, i1 false}
!189 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 400, i32 31}
!190 = !{ptr @intel_keembay_sdio_data, !191, !"intel_keembay_sdio_data", i1 false, i1 false}
!191 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1258, i32 36}
!192 = !{ptr @sdhci_keembay_sdio_pdata, !193, !"sdhci_keembay_sdio_pdata", i1 false, i1 false}
!193 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1187, i32 38}
!194 = !{ptr @sdhci_arasan_thunderbay_data, !195, !"sdhci_arasan_thunderbay_data", i1 false, i1 false}
!195 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1151, i32 42}
!196 = !{ptr @thunderbay_soc_ctl_map, !197, !"thunderbay_soc_ctl_map", i1 false, i1 false}
!197 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 194, i32 46}
!198 = !{ptr @sdhci_arasan_thunderbay_pdata, !199, !"sdhci_arasan_thunderbay_pdata", i1 false, i1 false}
!199 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 466, i32 38}
!200 = !{ptr @sdhci_arasan_generic_data, !201, !"sdhci_arasan_generic_data", i1 false, i1 false}
!201 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1146, i32 36}
!202 = !{ptr @sdhci_arasan_pdata, !203, !"sdhci_arasan_pdata", i1 false, i1 false}
!203 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1133, i32 38}
!204 = !{ptr @sdhci_arasan_zynqmp_data, !205, !"sdhci_arasan_zynqmp_data", i1 false, i1 false}
!205 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1231, i32 36}
!206 = !{ptr @sdhci_arasan_zynqmp_pdata, !207, !"sdhci_arasan_zynqmp_pdata", i1 false, i1 false}
!207 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1219, i32 38}
!208 = !{ptr @zynqmp_clk_ops, !209, !"zynqmp_clk_ops", i1 false, i1 false}
!209 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1226, i32 42}
!210 = !{ptr @zynqmp_sdcardclk_ops, !211, !"zynqmp_sdcardclk_ops", i1 false, i1 false}
!211 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 689, i32 29}
!212 = !{ptr @.str.72, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 681, i32 3}
!214 = !{ptr @.str.73, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @sdhci_zynqmp_sdcardclk_set_phase._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @sdhci_zynqmp_sdcardclk_set_phase._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @zynqmp_sampleclk_ops, !218, !"zynqmp_sampleclk_ops", i1 false, i1 false}
!218 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 755, i32 29}
!219 = distinct !{null, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 712, i32 34}
!221 = !{ptr @.str.75, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 750, i32 3}
!223 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @sdhci_zynqmp_sampleclk_set_phase._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @sdhci_zynqmp_sampleclk_set_phase._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @sdhci_arasan_versal_data, !227, !"sdhci_arasan_versal_data", i1 false, i1 false}
!227 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1241, i32 36}
!228 = !{ptr @versal_clk_ops, !229, !"versal_clk_ops", i1 false, i1 false}
!229 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 1236, i32 42}
!230 = !{ptr @versal_sdcardclk_ops, !231, !"versal_sdcardclk_ops", i1 false, i1 false}
!231 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 822, i32 29}
!232 = !{ptr @versal_sampleclk_ops, !233, !"versal_sampleclk_ops", i1 false, i1 false}
!233 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 893, i32 29}
!234 = !{ptr @sdhci_arasan_dev_pm_ops, !235, !"sdhci_arasan_dev_pm_ops", i1 false, i1 false}
!235 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 571, i32 8}
!236 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 507, i32 4}
!238 = !{ptr @.str.78, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @sdhci_arasan_suspend._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @sdhci_arasan_suspend._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 509, i32 5}
!243 = !{ptr @sdhci_arasan_suspend._entry.79, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @sdhci_arasan_suspend._entry_ptr.81, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.82, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 539, i32 3}
!247 = !{ptr @.str.83, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @sdhci_arasan_resume._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @sdhci_arasan_resume._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.85, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 545, i32 3}
!252 = !{ptr @sdhci_arasan_resume._entry.84, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @sdhci_arasan_resume._entry_ptr.86, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.88, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 552, i32 4}
!256 = !{ptr @sdhci_arasan_resume._entry.87, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @sdhci_arasan_resume._entry_ptr.89, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @sdhci_arasan_resume._entry.90, !259, !"_entry", i1 false, i1 false}
!259 = !{!"../drivers/mmc/host/sdhci-of-arasan.c", i32 560, i32 3}
!260 = !{ptr @sdhci_arasan_resume._entry_ptr.91, !259, !"_entry_ptr", i1 false, i1 false}
!261 = !{i32 1, !"wchar_size", i32 2}
!262 = !{i32 1, !"min_enum_size", i32 4}
!263 = !{i32 8, !"branch-target-enforcement", i32 0}
!264 = !{i32 8, !"sign-return-address", i32 0}
!265 = !{i32 8, !"sign-return-address-all", i32 0}
!266 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!267 = !{i32 7, !"uwtable", i32 1}
!268 = !{i32 7, !"frame-pointer", i32 2}
!269 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!270 = !{i64 1506083, i64 1506110}
!271 = !{i64 1506778, i64 1506805, i64 1506838, i64 1506859, i64 1506886, i64 1506912}
!272 = !{i8 0, i8 2}
!273 = !{i64 2148966727, i64 2148966732, i64 2148966745, i64 2148966789, i64 2148966823, i64 2148966844}
!274 = !{!"branch_weights", i32 2000, i32 1}
!275 = !{i64 6100308}
!276 = !{i64 2155599514}
!277 = !{i64 2155597544}
!278 = !{i64 6099890}
!279 = !{i64 6099470}
!280 = !{i64 2155600218}
!281 = !{i64 2155598150}
!282 = !{i64 6099270}
!283 = !{i64 6100088}
!284 = !{i64 2155600666}
!285 = !{i64 2155598756}
!286 = !{i64 6099693}
