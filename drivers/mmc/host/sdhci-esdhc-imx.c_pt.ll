; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-esdhc-imx.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-esdhc-imx.c"
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
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.esdhc_soc_data = type { i32 }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [72 x i8], [0 x i32] }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.pltfm_imx_data = type { i32, ptr, ptr, ptr, ptr, %struct.esdhc_platform_data, ptr, ptr, ptr, i32, i32, i32, %struct.pm_qos_request }
%struct.esdhc_platform_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }

@__initcall__kmod_sdhci_esdhc_imx__298_1924_sdhci_esdhc_imx_driver_init6 = internal global ptr @sdhci_esdhc_imx_driver_init, section ".initcall6.init", align 4
@sdhci_esdhc_imx_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_esdhc_imx_probe, ptr @sdhci_esdhc_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @imx_esdhc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_esdhc_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_esdhc_imx_driver_exit = internal global ptr @sdhci_esdhc_imx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [66 x i8] c"sdhci_esdhc_imx.description=SDHCI driver for Freescale i.MX eSDHC\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [60 x i8] c"sdhci_esdhc_imx.author=Wolfram Sang <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [54 x i8] c"sdhci_esdhc_imx.file=drivers/mmc/host/sdhci-esdhc-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [31 x i8] c"sdhci_esdhc_imx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci-esdhc-imx\00", [16 x i8] zeroinitializer }, align 32
@imx_esdhc_dt_ids = internal constant { [16 x %struct.of_device_id], [768 x i8] } { [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx25-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx25_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx35-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx35_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx51_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @esdhc_imx53_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6sx_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6sl_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sll-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6sll_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6q_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ull-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx6ull_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx7d_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx7ulp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qxp-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx8qxp_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mm-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imx8mm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imxrt1050-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_imxrt1050_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,s32g2-usdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @usdhc_s32g2_data }, %struct.of_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@sdhci_esdhc_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sdhci_esdhc_suspend, ptr @sdhci_esdhc_resume, ptr @sdhci_esdhc_suspend, ptr @sdhci_esdhc_resume, ptr @sdhci_esdhc_suspend, ptr @sdhci_esdhc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_esdhc_runtime_suspend, ptr @sdhci_esdhc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_esdhc_imx_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_esdhc_ops, i32 1695858816, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@sdhci_esdhc_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1639, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get pinctrl\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sdhci_esdhc_imx_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/mmc/host/sdhci-esdhc-imx.c\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_esdhc_imx_probe._entry_ptr = internal global ptr @sdhci_esdhc_imx_probe._entry, section ".printk_index", align 4
@sdhci_esdhc_ops = internal global { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @esdhc_readl_le, ptr @esdhc_readw_le, ptr @esdhc_readb_le, ptr @esdhc_writel_le, ptr @esdhc_writew_le, ptr @esdhc_writeb_le, ptr @esdhc_pltfm_set_clock, ptr null, ptr @esdhc_cqhci_irq, ptr null, ptr null, ptr @esdhc_pltfm_get_max_clock, ptr @esdhc_pltfm_get_min_clock, ptr null, ptr @esdhc_get_max_timeout_count, ptr @esdhc_set_timeout, ptr @esdhc_pltfm_set_bus_width, ptr null, ptr @esdhc_pltfm_get_ro, ptr @esdhc_reset, ptr null, ptr @esdhc_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esdhc_dump_debug_regs }, [40 x i8] zeroinitializer }, align 32
@esdhc_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr @esdhc_sdhci_dumpregs, ptr null, ptr null, ptr @esdhc_cqe_enable, ptr @sdhci_cqe_disable, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@esdhc_executing_tuning.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.6, ptr @.str.11, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_esdhc_imx\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"esdhc_executing_tuning\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tuning %s at 0x%x ret %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"passed\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@esdhc_prepare_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 1043, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"warning! RESET_ALL never complete before sending tuning command\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esdhc_prepare_tuning\00", [43 x i8] zeroinitializer }, align 32
@esdhc_prepare_tuning._entry_ptr = internal global ptr @esdhc_prepare_tuning._entry, section ".printk_index", align 4
@esdhc_prepare_tuning.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.6, ptr @.str.16, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"tuning with delay 0x%x ESDHC_TUNE_CTRL_STATUS 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@esdhc_wait_for_card_clock_gate_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.6, i32 426, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: card clock still not gate off in 100us!.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"esdhc_wait_for_card_clock_gate_off\00", [61 x i8] zeroinitializer }, align 32
@esdhc_wait_for_card_clock_gate_off._entry_ptr = internal global ptr @esdhc_wait_for_card_clock_gate_off._entry, section ".printk_index", align 4
@esdhc_imx25_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 128 }, [28 x i8] zeroinitializer }, align 32
@esdhc_pltfm_set_clock.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"esdhc_pltfm_set_clock\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"desired SD clock: %d, actual: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@esdhc_pltfm_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 965, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"card clock still not stable in 100us!.\0A\00", [56 x i8] zeroinitializer }, align 32
@esdhc_pltfm_set_clock._entry_ptr = internal global ptr @esdhc_pltfm_set_clock._entry, section ".printk_index", align 4
@esdhc_imx53_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@esdhc_set_strobe_dll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 1195, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"warning! HS400 strobe DLL status REF/SLV not lock in 50us, STROBE DLL status is %x!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esdhc_set_strobe_dll\00", [43 x i8] zeroinitializer }, align 32
@esdhc_set_strobe_dll._entry_ptr = internal global ptr @esdhc_set_strobe_dll._entry, section ".printk_index", align 4
@esdhc_reset_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 1223, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Warning! clear execute tuning bit failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esdhc_reset_tuning\00", [45 x i8] zeroinitializer }, align 32
@esdhc_reset_tuning._entry_ptr = internal global ptr @esdhc_reset_tuning._entry, section ".printk_index", align 4
@esdhc_change_pinstate.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 1, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"esdhc_change_pinstate\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"change pinctrl state for uhs %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cmd debug status\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data debug status\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trans debug status\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma debug status\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adma debug status\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fifo debug status\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"async fifo debug status\00", [40 x i8] zeroinitializer }, align 32
@__const.esdhc_dump_debug_regs.debug_status = private unnamed_addr constant [7 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 4
@esdhc_dump_debug_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013%s: sdhci-esdhc-imx: ========= ESDHC IMX DEBUG STATUS DUMP =========\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"esdhc_dump_debug_regs\00", [42 x i8] zeroinitializer }, align 32
@esdhc_dump_debug_regs._entry_ptr = internal global ptr @esdhc_dump_debug_regs._entry, section ".printk_index", align 4
@esdhc_dump_debug_regs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.6, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: sdhci-esdhc-imx: %s:  0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@esdhc_dump_debug_regs._entry_ptr.39 = internal global ptr @esdhc_dump_debug_regs._entry.37, section ".printk_index", align 4
@esdhc_cqe_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 1489, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"CQE may get stuck because the Buffer Read Enable bit is set\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"esdhc_cqe_enable\00", [47 x i8] zeroinitializer }, align 32
@esdhc_cqe_enable._entry_ptr = internal global ptr @esdhc_cqe_enable._entry, section ".printk_index", align 4
@esdhc_cqe_enable._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 1516, ptr @.str.44, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to exit halt state when enable CQE\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@esdhc_cqe_enable._entry_ptr.45 = internal global ptr @esdhc_cqe_enable._entry.42, section ".printk_index", align 4
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,wp-controller\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wp-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,tuning-step\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,tuning-start-tap\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl,strobe-dll-delay-target\00", [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-1-8-v\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,delay-line\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"state_100mhz\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"state_200mhz\00", [19 x i8] zeroinitializer }, align 32
@esdhc_imx35_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 128 }, [28 x i8] zeroinitializer }, align 32
@esdhc_imx51_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } zeroinitializer, align 32
@usdhc_imx6sx_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 82280 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx6sl_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 66024 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx6sll_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 17256 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx6q_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 65560 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx6ull_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 17768 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx7d_data = internal constant { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 82792 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx7ulp_data = internal global { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 25448 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx8qxp_data = internal global { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 52072 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imx8mm_data = internal global { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 19304 }, [28 x i8] zeroinitializer }, align 32
@usdhc_imxrt1050_data = internal global { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 392 }, [28 x i8] zeroinitializer }, align 32
@usdhc_s32g2_data = internal global { %struct.esdhc_soc_data, [28 x i8] } { %struct.esdhc_soc_data { i32 133976 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 62, i64 254]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 48, i64 52, i64 56]
@__sancov_gen_cov_switch_values.57 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 12, i64 14, i64 44, i64 62]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 40, i64 41, i64 47]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 5, i64 6, i64 7, i64 9, i64 10]
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"sdhci_esdhc_imx_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1913, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1915, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"imx_esdhc_dt_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 347, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"sdhci_esdhc_pmops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1907, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"sdhci_esdhc_imx_pdata\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1350, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1607, i32 47 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1613, i32 47 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1619, i32 47 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1639, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"sdhci_esdhc_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1330, i32 25 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"esdhc_cqhci_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1527, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1097, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1042, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1050, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 426, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"esdhc_imx25_data\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 238, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 949, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 965, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"esdhc_imx53_data\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 250, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1194, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1222, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1123, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 397, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 398, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 399, i32 6 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 400, i32 6 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 401, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 402, i32 6 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 403, i32 6 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 406, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 410, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1488, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1515, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1542, i32 26 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1550, i32 32 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1553, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1554, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1557, i32 27 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1559, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1562, i32 31 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1569, i32 7 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1571, i32 7 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"esdhc_imx35_data\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 242, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"esdhc_imx51_data\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 246, i32 36 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"usdhc_imx6sx_data\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 273, i32 36 }
@___asan_gen_.278 = private unnamed_addr constant [18 x i8] c"usdhc_imx6sl_data\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 259, i32 36 }
@___asan_gen_.281 = private unnamed_addr constant [19 x i8] c"usdhc_imx6sll_data\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 266, i32 36 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"usdhc_imx6q_data\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 254, i32 36 }
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"usdhc_imx6ull_data\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 280, i32 36 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"usdhc_imx7d_data\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 287, i32 36 }
@___asan_gen_.293 = private unnamed_addr constant [19 x i8] c"usdhc_imx7ulp_data\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 302, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant [19 x i8] c"usdhc_imx8qxp_data\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 312, i32 30 }
@___asan_gen_.299 = private unnamed_addr constant [18 x i8] c"usdhc_imx8mm_data\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 320, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant [21 x i8] c"usdhc_imxrt1050_data\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 308, i32 30 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"usdhc_s32g2_data\00", align 1
@___asan_gen_.306 = private constant [38 x i8] c"../drivers/mmc/host/sdhci-esdhc-imx.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 295, i32 30 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_sdhci_esdhc_imx_driver_exit, ptr @__initcall__kmod_sdhci_esdhc_imx__298_1924_sdhci_esdhc_imx_driver_init6, ptr @esdhc_cqe_enable._entry, ptr @esdhc_cqe_enable._entry.42, ptr @esdhc_cqe_enable._entry_ptr, ptr @esdhc_cqe_enable._entry_ptr.45, ptr @esdhc_dump_debug_regs._entry, ptr @esdhc_dump_debug_regs._entry.37, ptr @esdhc_dump_debug_regs._entry_ptr, ptr @esdhc_dump_debug_regs._entry_ptr.39, ptr @esdhc_pltfm_set_clock._entry, ptr @esdhc_pltfm_set_clock._entry_ptr, ptr @esdhc_prepare_tuning._entry, ptr @esdhc_prepare_tuning._entry_ptr, ptr @esdhc_reset_tuning._entry, ptr @esdhc_reset_tuning._entry_ptr, ptr @esdhc_set_strobe_dll._entry, ptr @esdhc_set_strobe_dll._entry_ptr, ptr @esdhc_wait_for_card_clock_gate_off._entry, ptr @esdhc_wait_for_card_clock_gate_off._entry_ptr, ptr @sdhci_esdhc_imx_driver_exit, ptr @sdhci_esdhc_imx_probe._entry, ptr @sdhci_esdhc_imx_probe._entry_ptr, ptr @sdhci_esdhc_imx_driver, ptr @.str, ptr @imx_esdhc_dt_ids, ptr @sdhci_esdhc_pmops, ptr @sdhci_esdhc_imx_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sdhci_esdhc_ops, ptr @esdhc_cqhci_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @esdhc_imx25_data, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @esdhc_imx53_data, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @esdhc_imx35_data, ptr @esdhc_imx51_data, ptr @usdhc_imx6sx_data, ptr @usdhc_imx6sl_data, ptr @usdhc_imx6sll_data, ptr @usdhc_imx6q_data, ptr @usdhc_imx6ull_data, ptr @usdhc_imx7d_data, ptr @usdhc_imx7ulp_data, ptr @usdhc_imx8qxp_data, ptr @usdhc_imx8mm_data, ptr @usdhc_imxrt1050_data, ptr @usdhc_s32g2_data], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_imx_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_esdhc_dt_ids to i32), i32 3136, i32 3904, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_imx_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_prepare_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_wait_for_card_clock_gate_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_imx25_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_pltfm_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_imx53_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_set_strobe_dll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_reset_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_dump_debug_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_dump_debug_regs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_cqe_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_cqe_enable._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_imx35_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_imx51_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx6sx_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx6sl_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx6sll_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx6q_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx6ull_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx7d_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx7ulp_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx8qxp_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imx8mm_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_imxrt1050_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usdhc_s32g2_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_imx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_esdhc_imx_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_esdhc_imx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_esdhc_imx_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_esdhc_imx_pdata, i32 noundef 96) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 81
  %private.i266 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call5 = tail call ptr @device_get_match_data(ptr noundef %dev) #10
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 12
  %1 = ptrtoint ptr %socdata to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %socdata, align 4
  %2 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call5, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 12
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %clk_ipg = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 6
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %clk_ipg, align 4
  %cmp.i267 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i267, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call10 to i32
  br label %free_sdhci

if.end16:                                         ; preds = %if.end8
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 7
  %6 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %clk_ahb, align 4
  %cmp.i268 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call18 to i32
  br label %free_sdhci

if.end24:                                         ; preds = %if.end16
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %clk_per = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 8
  %8 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %clk_per, align 4
  %cmp.i269 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %call26 to i32
  br label %free_sdhci

if.end32:                                         ; preds = %if.end24
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %private.i, align 128
  %call35 = tail call i32 @clk_get_rate(ptr noundef %call26) #10
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 1
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call35, ptr %clock, align 4
  %12 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.free_sdhci_crit_edge

if.end32.free_sdhci_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_sdhci

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end40, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %13) #10
  br label %free_sdhci

if.end40:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ipg, align 4
  %call.i270 = tail call i32 @clk_prepare(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool.not.i271 = icmp eq i32 %call.i270, 0
  br i1 %tobool.not.i271, label %if.end.i274, label %if.end40.disable_per_clk_crit_edge

if.end40.disable_per_clk_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_per_clk

if.end.i274:                                      ; preds = %if.end40
  %call1.i272 = tail call i32 @clk_enable(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i272)
  %tobool2.not.i273 = icmp eq i32 %call1.i272, 0
  br i1 %tobool2.not.i273, label %if.end45, label %if.end.i274.disable_per_clk.sink.split_crit_edge

if.end.i274.disable_per_clk.sink.split_crit_edge: ; preds = %if.end.i274
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_per_clk.sink.split

if.end45:                                         ; preds = %if.end.i274
  %16 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_ahb, align 4
  %call47 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.disable_ipg_clk_crit_edge

if.end45.disable_ipg_clk_crit_edge:               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ipg_clk

if.end50:                                         ; preds = %if.end45
  %call52 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #10
  %pinctrl = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 22
  %18 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call52, ptr %pinctrl, align 4
  %cmp.i278 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %do.end, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.end:                                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.4) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end, %if.end50.if.end56_crit_edge
  %23 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socdata, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool58.not = icmp eq i32 %27, 0
  br i1 %tobool58.not, label %if.end56.if.end86_crit_edge, label %if.then59

if.end56.if.end86_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then59:                                        ; preds = %if.end56
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 2
  %28 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %quirks2, align 8
  %or = or i32 %29, 8
  store i32 %or, ptr %quirks2, align 8
  %mmc60 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %30 = ptrtoint ptr %mmc60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc60, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps, align 32
  %or61 = or i32 %33, 6144
  store i32 %or61, ptr %caps, align 32
  %34 = load ptr, ptr %mmc60, align 8
  %caps63 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %caps63 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %caps63, align 32
  %or64 = or i32 %36, 268435456
  store i32 %or64, ptr %caps63, align 32
  %37 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %socdata, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and67 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.then69, label %if.then59.do.body73_crit_edge

if.then59.do.body73_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body73

if.then69:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %quirks2, align 8
  %or71 = or i32 %42, 64
  store i32 %or71, ptr %quirks2, align 8
  br label %do.body73

do.body73:                                        ; preds = %if.then69, %if.then59.do.body73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %44, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr, align 16
  %add.ptr80 = getelementptr i8, ptr %46, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 0) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  tail call void @arm_heavy_mb() #10
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 16
  %add.ptr85 = getelementptr i8, ptr %48, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 0) #10, !srcloc !171
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 12
  %49 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @usdhc_execute_tuning, ptr %execute_tuning, align 4
  br label %if.end86

if.end86:                                         ; preds = %do.body73, %if.end56.if.end86_crit_edge
  %50 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %socdata, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %and89 = and i32 %53, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end86.if.end92_crit_edge, label %if.then91

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end92

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  store ptr @esdhc_executing_tuning, ptr getelementptr inbounds (%struct.sdhci_ops, ptr @sdhci_esdhc_ops, i32 0, i32 20), align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end86.if.end92_crit_edge
  %54 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %socdata, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %and95 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end92.if.end99_crit_edge, label %if.then97

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then97:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 1
  %58 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %quirks, align 4
  %or98 = or i32 %59, 64
  store i32 %or98, ptr %quirks, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then97, %if.end92.if.end99_crit_edge
  %60 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %socdata, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %and102 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.end99.if.end107_crit_edge, label %if.then104

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %mmc105 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %64 = ptrtoint ptr %mmc105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmc105, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %65, i32 0, i32 17
  %66 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caps2, align 4
  %or106 = or i32 %67, 98304
  store i32 %or106, ptr %caps2, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then104, %if.end99.if.end107_crit_edge
  %68 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %socdata, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %and110 = and i32 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end107.if.end115_crit_edge, label %if.then112

if.end107.if.end115_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

if.then112:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  %quirks2113 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 2
  %72 = ptrtoint ptr %quirks2113 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %quirks2113, align 8
  %or114 = or i32 %73, 16384
  store i32 %or114, ptr %quirks2113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.end107.if.end115_crit_edge
  %74 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %socdata, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 4
  %and118 = and i32 %77, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end115.if.end125_crit_edge, label %if.then120

if.end115.if.end125_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  %mmc121 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %78 = ptrtoint ptr %mmc121 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mmc121, align 8
  %caps2122 = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 17
  %80 = ptrtoint ptr %caps2122 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %caps2122, align 4
  %or123 = or i32 %81, 1048576
  store i32 %or123, ptr %caps2122, align 4
  %hs400_enhanced_strobe = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 18
  %82 = ptrtoint ptr %hs400_enhanced_strobe to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @esdhc_hs400_enhanced_strobe, ptr %hs400_enhanced_strobe, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end115.if.end125_crit_edge
  %83 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %socdata, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 4
  %and128 = and i32 %86, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end125.if.end146_crit_edge, label %if.then130

if.end125.if.end146_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.then130:                                       ; preds = %if.end125
  %mmc131 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %87 = ptrtoint ptr %mmc131 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmc131, align 8
  %caps2132 = getelementptr inbounds %struct.mmc_host, ptr %88, i32 0, i32 17
  %89 = ptrtoint ptr %caps2132 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %caps2132, align 4
  %or133 = or i32 %90, 25165824
  store i32 %or133, ptr %caps2132, align 4
  %call.i279 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #10
  %tobool136.not = icmp eq ptr %call.i279, null
  br i1 %tobool136.not, label %if.then130.disable_ahb_clk_crit_edge, label %if.end138

if.then130.disable_ahb_clk_crit_edge:             ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ahb_clk

if.end138:                                        ; preds = %if.then130
  %ioaddr139 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %91 = ptrtoint ptr %ioaddr139 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioaddr139, align 16
  %add.ptr140 = getelementptr i8, ptr %92, i32 256
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %call.i279, i32 0, i32 1
  %93 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %add.ptr140, ptr %mmio, align 4
  %94 = ptrtoint ptr %call.i279 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @esdhc_cqhci_ops, ptr %call.i279, align 4
  %95 = ptrtoint ptr %mmc131 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmc131, align 8
  %call142 = tail call i32 @cqhci_init(ptr noundef nonnull %call.i279, ptr noundef %96, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end138.if.end146_crit_edge, label %if.end138.disable_ahb_clk_crit_edge

if.end138.disable_ahb_clk_crit_edge:              ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ahb_clk

if.end138.if.end146_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.end146:                                        ; preds = %if.end138.if.end146_crit_edge, %if.end125.if.end146_crit_edge
  %call147 = tail call fastcc i32 @sdhci_esdhc_imx_probe_dt(ptr noundef %pdev, ptr noundef %call, ptr noundef %private.i266)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end146.disable_ahb_clk_crit_edge

if.end146.disable_ahb_clk_crit_edge:              ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ahb_clk

if.end150:                                        ; preds = %if.end146
  tail call fastcc void @sdhci_esdhc_imx_hwinit(ptr noundef %call)
  %call151 = tail call i32 @sdhci_add_host(ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end150.disable_ahb_clk_crit_edge

if.end150.disable_ahb_clk_crit_edge:              ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ahb_clk

if.end154:                                        ; preds = %if.end150
  %mmc155 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %97 = ptrtoint ptr %mmc155 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmc155, align 8
  %pm_caps = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 19
  %99 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %pm_caps, align 4
  %101 = and i32 %100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %.not = icmp eq i32 %101, 3
  br i1 %.not, label %if.then162, label %if.end154.if.end164_crit_edge

if.end154.if.end164_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then162:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %if.end164

if.end164:                                        ; preds = %if.then162, %if.end154.if.end164_crit_edge
  %call.i280 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %ignore_children.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %102 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  br label %cleanup

disable_ahb_clk:                                  ; preds = %if.end150.disable_ahb_clk_crit_edge, %if.end146.disable_ahb_clk_crit_edge, %if.end138.disable_ahb_clk_crit_edge, %if.then130.disable_ahb_clk_crit_edge
  %err.0 = phi i32 [ %call142, %if.end138.disable_ahb_clk_crit_edge ], [ %call147, %if.end146.disable_ahb_clk_crit_edge ], [ %call151, %if.end150.disable_ahb_clk_crit_edge ], [ -12, %if.then130.disable_ahb_clk_crit_edge ]
  %103 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %104) #10
  tail call void @clk_unprepare(ptr noundef %104) #10
  br label %disable_ipg_clk

disable_ipg_clk:                                  ; preds = %disable_ahb_clk, %if.end45.disable_ipg_clk_crit_edge
  %err.1 = phi i32 [ %call47, %if.end45.disable_ipg_clk_crit_edge ], [ %err.0, %disable_ahb_clk ]
  %105 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %106) #10
  br label %disable_per_clk.sink.split

disable_per_clk.sink.split:                       ; preds = %disable_ipg_clk, %if.end.i274.disable_per_clk.sink.split_crit_edge
  %.sink = phi ptr [ %106, %disable_ipg_clk ], [ %15, %if.end.i274.disable_per_clk.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ %err.1, %disable_ipg_clk ], [ %call1.i272, %if.end.i274.disable_per_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #10
  br label %disable_per_clk

disable_per_clk:                                  ; preds = %disable_per_clk.sink.split, %if.end40.disable_per_clk_crit_edge
  %err.2 = phi i32 [ %call.i270, %if.end40.disable_per_clk_crit_edge ], [ %err.2.ph, %disable_per_clk.sink.split ]
  %107 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %108) #10
  tail call void @clk_unprepare(ptr noundef %108) #10
  br label %free_sdhci

free_sdhci:                                       ; preds = %disable_per_clk, %if.then3.i, %if.end32.free_sdhci_crit_edge, %if.then29, %if.then21, %if.then13
  %err.3 = phi i32 [ %5, %if.then13 ], [ %7, %if.then21 ], [ %9, %if.then29 ], [ %err.2, %disable_per_clk ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end32.free_sdhci_crit_edge ]
  %109 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %socdata, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %and176 = and i32 %112, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %free_sdhci.if.end180_crit_edge, label %if.then178

free_sdhci.if.end180_crit_edge:                   ; preds = %free_sdhci
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end180

if.then178:                                       ; preds = %free_sdhci
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req179 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 12
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req179) #10
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %free_sdhci.if.end180_crit_edge
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end180, %if.end164, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.3, %if.end180 ], [ 0, %if.end164 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_imx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %conv = zext i1 %cmp to i32
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !177
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !178
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef %conv) #10
  %clk_per = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 8
  %6 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  tail call void @clk_unprepare(ptr noundef %7) #10
  %clk_ipg = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 6
  %8 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 7
  %10 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %12 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %socdata, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and = and i32 %15, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 12
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_add_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usdhc_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 9
  %0 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_executing_tuning(ptr nocapture noundef readonly %host, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %min.044 = phi i32 [ 0, %entry ], [ %add, %if.end.while.body_crit_edge ]
  tail call fastcc void @esdhc_prepare_tuning(ptr noundef %host, i32 noundef %min.044)
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %call = tail call i32 @mmc_send_tuning(ptr noundef %1, i32 noundef %opcode, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end:                                           ; preds = %while.body
  %add = add nuw nsw i32 %min.044, 1
  %exitcond.not = icmp eq i32 %add, 127
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %min.0.lcssa = phi i32 [ %min.044, %while.body.while.end_crit_edge ], [ 127, %if.end.while.end_crit_edge ]
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4.while.cond2_crit_edge, %while.end
  %max.0.in = phi i32 [ %min.0.lcssa, %while.end ], [ %max.0, %while.body4.while.cond2_crit_edge ]
  %max.0 = add nuw nsw i32 %max.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %max.0.in)
  %cmp3 = icmp ult i32 %max.0.in, 126
  br i1 %cmp3, label %while.body4, label %while.cond2.while.end11_crit_edge

while.cond2.while.end11_crit_edge:                ; preds = %while.cond2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end11

while.body4:                                      ; preds = %while.cond2
  tail call fastcc void @esdhc_prepare_tuning(ptr noundef %host, i32 noundef %max.0)
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %call6 = tail call i32 @mmc_send_tuning(ptr noundef %3, i32 noundef %opcode, ptr noundef null) #10
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.body4.while.cond2_crit_edge, label %while.body4.while.end11_crit_edge

while.body4.while.end11_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end11

while.body4.while.cond2_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond2

while.end11:                                      ; preds = %while.body4.while.end11_crit_edge, %while.cond2.while.end11_crit_edge
  %max.1 = phi i32 [ %max.0, %while.cond2.while.end11_crit_edge ], [ %max.0.in, %while.body4.while.end11_crit_edge ]
  %add12 = add i32 %max.1, %min.0.lcssa
  %div = sdiv i32 %add12, 2
  tail call fastcc void @esdhc_prepare_tuning(ptr noundef %host, i32 noundef %div)
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %call14 = tail call i32 @mmc_send_tuning(ptr noundef %5, i32 noundef %opcode, ptr noundef null) #10
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !174
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  %and.i.i = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %and.i.i, 2
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 64, i32 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %switch.selectcmp4.i.i = icmp eq i32 %and.i.i, 4
  %switch.select5.i.i = select i1 %switch.selectcmp4.i.i, i32 80, i32 %switch.select.i.i
  %10 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %13 = and i32 %12, -1879048193
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %or.i.i.i = or i32 %14, %switch.select5.i.i
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %15) #10, !srcloc !171
  %16 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i = getelementptr i8, ptr %17, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %19 = and i32 %18, -16386
  %20 = or i32 %19, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr3.i = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %20) #10, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esdhc_executing_tuning.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esdhc_executing_tuning, %if.then19)) #10
          to label %do.end [label %if.then19], !srcloc !184

if.then19:                                        ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool21.not = icmp eq i32 %call14, 0
  %cond = select i1 %tobool21.not, ptr @.str.13, ptr @.str.12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esdhc_executing_tuning.__UNIQUE_ID_ddebug296, ptr noundef %26, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond, i32 noundef %div, i32 noundef %call14) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %while.end11
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_hs400_enhanced_strobe(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %3 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enhanced_strobe, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %5 = and i32 %2, -9
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %masksel = select i1 %tobool.not, i32 0, i32 134217728
  %m.0 = or i32 %masksel, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !187
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %m.0)
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr4 = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #10, !srcloc !171
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_esdhc_imx_probe_dt(ptr nocapture noundef readonly %pdev, ptr noundef %host, ptr noundef %imx_data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %boarddata1 = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 5
  %call = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef null) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %boarddata1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %boarddata1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %boarddata1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %boarddata1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %tuning_step = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 5, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef %tuning_step, i32 noundef 1, i32 noundef 0) #10
  %tuning_start_tap = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 5, i32 5
  %call.i.i63 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef %tuning_start_tap, i32 noundef 1, i32 noundef 0) #10
  %strobe_dll_delay_target = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 5, i32 6
  %call.i.i64 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.50, ptr noundef %strobe_dll_delay_target, i32 noundef 1, i32 noundef 0) #10
  %call9 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.51, ptr noundef null) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end5.if.end12_crit_edge, label %if.then11

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks2, align 8
  %or = or i32 %5, 4
  store i32 %or, ptr %quirks2, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end5.if.end12_crit_edge
  %delay_line = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 5, i32 3
  %call.i.i65 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef %delay_line, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i65)
  %tobool14.not = icmp sgt i32 %call.i.i65, -1
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %delay_line to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %delay_line, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc, align 8
  %ocr_mask = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 63
  %call18 = tail call i32 @mmc_of_parse_voltage(ptr noundef %8, ptr noundef %ocr_mask) #10
  %socdata.i = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 4
  %9 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %socdata.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %land.lhs.true

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %pinctrl = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 1
  %14 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pinctrl, align 4
  %cmp.i = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %land.lhs.true.if.end27_crit_edge, label %if.then22

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call24 = tail call ptr @pinctrl_lookup_state(ptr noundef %15, ptr noundef nonnull @.str.53) #10
  %pins_100mhz = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 2
  %16 = ptrtoint ptr %pins_100mhz to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %pins_100mhz, align 4
  %17 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pinctrl, align 4
  %call26 = tail call ptr @pinctrl_lookup_state(ptr noundef %18, ptr noundef nonnull @.str.54) #10
  %pins_200mhz = getelementptr inbounds %struct.pltfm_imx_data, ptr %imx_data, i32 0, i32 3
  %19 = ptrtoint ptr %pins_200mhz to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call26, ptr %pins_200mhz, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %land.lhs.true.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %20 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc, align 8
  %call29 = tail call i32 @mmc_of_parse(ptr noundef %21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc, align 8
  %call34 = tail call i32 @mmc_gpio_get_cd(ptr noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34)
  %cmp = icmp sgt i32 %call34, -1
  br i1 %cmp, label %if.then35, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 1
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 4
  %and = and i32 %25, -32769
  store i32 %and, ptr %quirks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  ret i32 %call29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_esdhc_imx_hwinit(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 63
  %2 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqe_private, align 4
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %4 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socdata.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end111_crit_edge, label %do.body

entry.if.end111_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !188
  tail call void @arm_heavy_mb() #10
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1074806800) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 16
  %add.ptr7 = getelementptr i8, ptr %12, i32 40
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  %14 = or i32 %13, 8
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr, align 16
  %add.ptr12 = getelementptr i8, ptr %16, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #10, !srcloc !171
  %17 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %socdata.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body15, label %do.body.do.body28_crit_edge

do.body.do.body28_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 16
  %add.ptr21 = getelementptr i8, ptr %22, i32 108
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  %24 = and i32 %23, 2147483647
  %25 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr, align 16
  %add.ptr27 = getelementptr i8, ptr %26, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %24) #10, !srcloc !171
  br label %do.body28

do.body28:                                        ; preds = %do.body15, %do.body.do.body28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 16
  %add.ptr32 = getelementptr i8, ptr %28, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #10, !srcloc !171
  %29 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %socdata.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %and35 = and i32 %32, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body28.if.end52_crit_edge, label %if.then37

do.body28.if.end52_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then37:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 16
  %add.ptr41 = getelementptr i8, ptr %34, i32 200
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %36 = or i32 %35, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 16
  %add.ptr50 = getelementptr i8, ptr %38, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %36) #10, !srcloc !171
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 1
  %39 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quirks, align 4
  %and51 = and i32 %40, -16385
  store i32 %and51, ptr %quirks, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then37, %do.body28.if.end52_crit_edge
  %41 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %socdata.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %and55 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else, label %if.then57

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr, align 16
  %add.ptr61 = getelementptr i8, ptr %46, i32 204
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  %48 = or i32 %47, 16777217
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %tuning_start_tap = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 4
  %50 = ptrtoint ptr %tuning_start_tap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tuning_start_tap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool66.not = icmp eq i32 %51, 0
  %and68 = and i32 %49, -128
  %or71 = or i32 %and68, %51
  %tmp.0 = select i1 %tobool66.not, i32 %49, i32 %or71
  %tuning_step = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 3
  %52 = ptrtoint ptr %tuning_step to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tuning_step, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool74.not = icmp eq i32 %53, 0
  %and76 = and i32 %tmp.0, -458881
  %shl = shl i32 %53, 16
  %or79 = or i32 %and76, %shl
  %tmp.1 = select i1 %tobool74.not, i32 %tmp.0, i32 %or79
  %or81 = or i32 %tmp.1, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %54 = tail call i32 @llvm.bswap.i32(i32 %or81)
  %55 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr, align 16
  %add.ptr86 = getelementptr i8, ptr %56, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %54) #10, !srcloc !171
  br label %if.end106

if.else:                                          ; preds = %if.end52
  %and89 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else.if.end106_crit_edge, label %if.then91

if.else.if.end106_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then91:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr, align 16
  %add.ptr95 = getelementptr i8, ptr %58, i32 204
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %60 = and i32 %59, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr, align 16
  %add.ptr104 = getelementptr i8, ptr %62, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %60) #10, !srcloc !171
  br label %if.end106

if.end106:                                        ; preds = %if.then91, %if.else.if.end106_crit_edge, %if.then57
  %tobool107.not = icmp eq ptr %3, null
  br i1 %tobool107.not, label %if.end106.if.end111_crit_edge, label %if.then108

if.end106.if.end111_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then108:                                       ; preds = %if.end106
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %66, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !200

if.then.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %66(ptr noundef nonnull %3, i32 noundef 16) #10
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %67 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %70, %if.else.i ]
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i151 = icmp eq ptr %74, null
  br i1 %tobool.not.i151, label %if.else.i155, label %if.then.i152, !prof !200

if.then.i152:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %74(ptr noundef nonnull %3, i32 noundef %retval.0.i, i32 noundef 16) #10
  br label %cqhci_writel.exit

if.else.i155:                                     ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #10
  %mmio.i153 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %76 = ptrtoint ptr %mmio.i153 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i153, align 4
  %add.ptr.i154 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %75) #10, !srcloc !171
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i155, %if.then.i152
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %3, align 4
  %write_l.i156 = getelementptr inbounds %struct.cqhci_host_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write_l.i156 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write_l.i156, align 4
  %tobool.not.i157 = icmp eq ptr %81, null
  br i1 %tobool.not.i157, label %if.else.i161, label %if.then.i158, !prof !200

if.then.i158:                                     ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %81(ptr noundef nonnull %3, i32 noundef 1, i32 noundef 12) #10
  br label %if.end111

if.else.i161:                                     ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i159 = getelementptr inbounds %struct.cqhci_host, ptr %3, i32 0, i32 1
  %82 = ptrtoint ptr %mmio.i159 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i159, align 4
  %add.ptr.i160 = getelementptr i8, ptr %83, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 16777216) #10, !srcloc !171
  br label %if.end111

if.end111:                                        ; preds = %if.else.i161, %if.then.i158, %if.end106.if.end111_crit_edge, %entry.if.end111_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_latency_qos_remove_request(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esdhc_prepare_tuning(ptr nocapture noundef readonly %host, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748000) #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %2, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %4 = and i32 %3, -256
  %5 = or i32 %4, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #10, !srcloc !171
  %call = tail call i64 @ktime_get() #10
  %add.i = add i64 %call, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1040) #10
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr95 = getelementptr i8, ptr %7, i32 47
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr95) #10, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not96 = icmp eq i8 %9, 0
  br i1 %tobool.not96, label %entry.if.end39_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

land.lhs.true:                                    ; preds = %if.then27.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #10
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr = getelementptr i8, ptr %11, i32 47
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  %13 = and i8 %12, 1
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.then27.if.end39_crit_edge, label %if.then27.land.lhs.true_crit_edge

if.then27.land.lhs.true_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.then27.if.end39_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

for.end:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr21 = getelementptr i8, ptr %15, i32 47
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #10, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  %.pre = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pre)
  %tobool32.not = icmp eq i8 %.pre, 0
  br i1 %tobool32.not, label %for.end.if.end39_crit_edge, label %do.end38

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

do.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.14) #13
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %for.end.if.end39_crit_edge, %if.then27.if.end39_crit_edge, %entry.if.end39_crit_edge
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr43 = getelementptr i8, ptr %22, i32 72
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %24 = or i32 %23, 49154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !205
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr51 = getelementptr i8, ptr %26, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %24) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %val)
  %28 = lshr i32 %27, 8
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr56 = getelementptr i8, ptr %30, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %28) #10, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esdhc_prepare_tuning.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esdhc_prepare_tuning, %if.then64)) #10
          to label %do.end76 [label %if.then64], !srcloc !184

if.then64:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %mmc65 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %31 = ptrtoint ptr %mmc65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmc65, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 128
  %35 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr70 = getelementptr i8, ptr %36, i32 104
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #10, !srcloc !174
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esdhc_prepare_tuning.__UNIQUE_ID_ddebug295, ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef %val, i32 noundef %38) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then64, %if.end39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_readl_le(ptr nocapture noundef %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i204 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  %4 = add i32 %reg, -36
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 30)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.if.end166_crit_edge [
    i32 0, label %if.end.thread
    i32 7, label %if.then15
    i32 8, label %if.then35
    i32 9, label %if.end138.thread
    i32 3, label %if.then146
  ], !prof !209

entry.if.end166_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %3, 1048575
  %and5 = lshr i32 %3, 4
  %shr = and i32 %and5, 15728640
  %or = or i32 %shr, %and
  %and6 = shl i32 %3, 1
  %shl = and i32 %and6, 16777216
  %or7 = or i32 %or, %shl
  br label %if.end166

if.then15:                                        ; preds = %entry
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %7 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %socdata, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and16 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %and19 = and i32 %3, -65536
  %spec.select = select i1 %tobool17.not, i32 %3, i32 %and19
  %and21 = and i32 %spec.select, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then15.if.end166_crit_edge, label %if.then23

if.then15.if.end166_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then23:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %and24 = and i32 %spec.select, -1572865
  %or25 = or i32 %and24, 524288
  br label %if.end166

if.then35:                                        ; preds = %entry
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %11 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %socdata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool37.not = icmp eq i32 %15, 0
  br i1 %tobool37.not, label %if.then35.if.end166_crit_edge, label %if.then38

if.then35.if.end166_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then38:                                        ; preds = %if.then35
  %and41 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then38.if.end66_crit_edge, label %if.then43

if.then38.if.end66_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 16
  %add.ptr47 = getelementptr i8, ptr %17, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  %19 = and i32 %18, -65536
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  br label %if.end66

if.end66:                                         ; preds = %if.then43, %if.then38.if.end66_crit_edge
  %val.3 = phi i32 [ %20, %if.then43 ], [ 40967, %if.then38.if.end66_crit_edge ]
  %pins_100mhz = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %21 = ptrtoint ptr %pins_100mhz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pins_100mhz, align 4
  %tobool.not.i = icmp eq ptr %22, null
  %cmp.i = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %and69 = and i32 %val.3, 65530
  %spec.select201 = select i1 %spec.select.i, i32 %and69, i32 %val.3
  %pins_200mhz = getelementptr inbounds %struct.pltfm_imx_data, ptr %private.i204, i32 0, i32 3
  %23 = ptrtoint ptr %pins_200mhz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pins_200mhz, align 4
  %tobool.not.i205 = icmp eq ptr %24, null
  %cmp.i206 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i207 = or i1 %tobool.not.i205, %cmp.i206
  %and73 = and i32 %spec.select201, 2147483645
  %spec.select203 = select i1 %spec.select.i207, i32 %and73, i32 %spec.select201
  br label %if.end166

if.end138.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %socdata.i208 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %25 = ptrtoint ptr %socdata.i208 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %socdata.i208, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %29 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool85.not = icmp eq i32 %29, 0
  %spec.select202 = select i1 %tobool85.not, i32 %3, i32 16777215
  br label %if.end166

if.then146:                                       ; preds = %entry
  %and147 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  %and150 = and i32 %3, -301989889
  %or151 = or i32 %and150, 33554432
  %val.7 = select i1 %tobool148.not, i32 %3, i32 %or151
  %multiblock_status = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %30 = ptrtoint ptr %multiblock_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %multiblock_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp153 = icmp ne i32 %31, 2
  %and155 = and i32 %val.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %cmp156.not = icmp eq i32 %and155, 0
  %or.cond = select i1 %cmp153, i1 true, i1 %cmp156.not
  br i1 %or.cond, label %if.then146.if.end166_crit_edge, label %if.then157

if.then146.if.end166_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then157:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #12
  %and158 = and i32 %val.7, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 16
  %add.ptr163 = getelementptr i8, ptr %33, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 16777216) #10, !srcloc !171
  %34 = ptrtoint ptr %multiblock_status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %multiblock_status, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.then157, %if.then146.if.end166_crit_edge, %if.end138.thread, %if.end66, %if.then35.if.end166_crit_edge, %if.then23, %if.then15.if.end166_crit_edge, %if.end.thread, %entry.if.end166_crit_edge
  %val.8 = phi i32 [ %and158, %if.then157 ], [ %val.7, %if.then146.if.end166_crit_edge ], [ %spec.select202, %if.end138.thread ], [ %or25, %if.then23 ], [ %spec.select, %if.then15.if.end166_crit_edge ], [ %or7, %if.end.thread ], [ %3, %if.then35.if.end166_crit_edge ], [ %spec.select203, %if.end66 ], [ %3, %entry.if.end166_crit_edge ]
  ret i32 %val.8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @esdhc_readw_le(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %reg, label %entry.if.end107_crit_edge [
    i32 254, label %if.then
    i32 62, label %if.then14
    i32 12, label %if.then75
  ], !prof !212

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then:                                          ; preds = %entry
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %1 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socdata.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then.if.end107_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end107_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then14:                                        ; preds = %entry
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 192
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  %10 = trunc i32 %9 to i16
  %11 = shl i16 %10, 2
  %12 = and i16 %11, 8
  %socdata.i144 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %13 = ptrtoint ptr %socdata.i144 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %socdata.i144, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %17 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %if.then14.if.end48_crit_edge, label %if.then23

if.then14.if.end48_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then23:                                        ; preds = %if.then14
  %and24 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 16
  %add.ptr30 = getelementptr i8, ptr %19, i32 72
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #10, !srcloc !174
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  br label %if.end48

if.else:                                          ; preds = %if.then23
  %and36 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else.if.end48_crit_edge, label %if.then38

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 16
  %add.ptr42 = getelementptr i8, ptr %23, i32 60
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !174
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %if.else.if.end48_crit_edge, %if.then26, %if.then14.if.end48_crit_edge
  %val.0 = phi i32 [ %21, %if.then26 ], [ %25, %if.then38 ], [ %9, %if.else.if.end48_crit_edge ], [ %9, %if.then14.if.end48_crit_edge ]
  %and49 = lshr i32 %val.0, 16
  %26 = trunc i32 %and49 to i16
  %27 = and i16 %26, 64
  %28 = or i16 %27, %12
  %29 = and i16 %26, 128
  %30 = or i16 %28, %29
  br label %cleanup

if.then75:                                        ; preds = %entry
  %socdata.i147 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %31 = ptrtoint ptr %socdata.i147 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socdata.i147, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool77.not = icmp eq i32 %35, 0
  %ioaddr101 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr101, align 16
  br i1 %tobool77.not, label %if.else98, label %if.then78

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr82 = getelementptr i8, ptr %37, i32 72
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #10, !srcloc !174
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %40 = trunc i32 %39 to i16
  %conv87 = and i16 %40, 183
  %and88 = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %41 = and i16 %40, 55
  %conv96 = or i16 %41, 8
  %ret.3 = select i1 %tobool89.not, i16 %conv87, i16 %conv96
  br label %cleanup

if.else98:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr102 = getelementptr i8, ptr %37, i32 12
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr102) #10, !srcloc !217
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  br label %cleanup

if.end107:                                        ; preds = %if.then.if.end107_crit_edge, %entry.if.end107_crit_edge
  %reg.addr.0151 = phi i32 [ 252, %if.then.if.end107_crit_edge ], [ %reg, %entry.if.end107_crit_edge ]
  %ioaddr110 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr110 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr110, align 16
  %add.ptr111 = getelementptr i8, ptr %45, i32 %reg.addr.0151
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr111) #10, !srcloc !217
  %47 = tail call i16 @llvm.bswap.i16(i16 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %if.else98, %if.then78, %if.end48, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %30, %if.end48 ], [ %47, %if.end107 ], [ 2, %if.then.cleanup_crit_edge ], [ %ret.3, %if.then78 ], [ %43, %if.else98 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @esdhc_readb_le(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %reg)
  %cond = icmp eq i32 %reg, 40
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  br i1 %cond, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  %shr = lshr i32 %3, 5
  %and2 = and i32 %shr, 24
  %and9 = shl i32 %3, 3
  %shl = and i32 %and9, 32
  %or = and i32 %3, 3
  %or7 = or i32 %or, %and2
  %or11 = or i32 %or7, %shl
  %conv12 = trunc i32 %or11 to i8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr16 = getelementptr i8, ptr %1, i32 %reg
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr16) #10, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i8 [ %conv12, %sw.bb ], [ %4, %sw.epilog ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_writel_le(ptr nocapture noundef %host, i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %reg, label %entry.if.end25_crit_edge [
    i32 52, label %entry.if.then_crit_edge
    i32 56, label %entry.if.then_crit_edge93
    i32 48, label %entry.if.then_crit_edge94
  ], !prof !222

entry.if.then_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge93:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge93, %entry.if.then_crit_edge94
  %and = and i32 %val, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %1 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socdata.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.then8, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %9 = and i32 %8, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %add.ptr13 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #10, !srcloc !171
  %12 = or i32 %8, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 16
  %add.ptr18 = getelementptr i8, ptr %14, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %12) #10, !srcloc !171
  br label %if.end

if.end:                                           ; preds = %if.then8, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %and19 = and i32 %val, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end25_crit_edge, label %if.then21

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %and22 = and i32 %val, -301989889
  %or23 = or i32 %and22, 268435456
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  %val.addr.0 = phi i32 [ %or23, %if.then21 ], [ %val, %if.end.if.end25_crit_edge ], [ %val, %entry.if.end25_crit_edge ]
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %15 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socdata, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %reg)
  %cmp29 = icmp eq i32 %reg, 48
  %19 = and i32 %val.addr.0, 2
  %20 = and i32 %19, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp ne i32 %20, 0
  %22 = and i1 %cmp29, %21
  br i1 %22, label %if.then38, label %if.end25.do.body62_crit_edge, !prof !226

if.end25.do.body62_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62

if.then38:                                        ; preds = %if.end25
  %ioaddr41 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr41, align 16
  %add.ptr42 = getelementptr i8, ptr %24, i32 192
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %26 = and i32 %25, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %27 = ptrtoint ptr %ioaddr41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr41, align 16
  %add.ptr51 = getelementptr i8, ptr %28, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %26) #10, !srcloc !171
  %multiblock_status = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %29 = ptrtoint ptr %multiblock_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %multiblock_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp52 = icmp eq i32 %30, 1
  br i1 %cmp52, label %if.then53, label %if.then38.do.body62_crit_edge

if.then38.do.body62_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body62

if.then53:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %ioaddr41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr41, align 16
  %add.ptr58 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 49164) #10, !srcloc !171
  %33 = ptrtoint ptr %multiblock_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %multiblock_status, align 4
  br label %do.body62

do.body62:                                        ; preds = %if.then53, %if.then38.do.body62_crit_edge, %if.end25.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %val.addr.0)
  %ioaddr65 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %35 = ptrtoint ptr %ioaddr65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr65, align 16
  %add.ptr66 = getelementptr i8, ptr %36, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %34) #10, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_writew_le(ptr noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i289 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 44, label %sw.bb
    i32 62, label %sw.bb11
    i32 12, label %sw.bb80
    i32 14, label %sw.bb171
    i32 4, label %sw.bb213
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 192
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  %4 = and i32 %3, -65537
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = shl i16 %val, 6
  %7 = and i16 %6, 256
  %8 = zext i16 %7 to i32
  %new_val.0 = or i32 %5, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %new_val.0)
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %add.ptr6 = getelementptr i8, ptr %11, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #10, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %if.then9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then9:                                         ; preds = %sw.bb
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 424) #10
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 16
  %add.ptr46.i = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #10, !srcloc !174
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %and47.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool.not48.i = icmp eq i32 %and47.i, 0
  br i1 %tobool.not48.i, label %if.then9.land.lhs.true.i_crit_edge, label %if.then9.for.end.i_crit_edge

if.then9.for.end.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then9.land.lhs.true.i_crit_edge:               ; preds = %if.then9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.then9.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 16
  %add.ptr20.i = getelementptr i8, ptr %17, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !174
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #10
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i = getelementptr i8, ptr %21, i32 36
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %and.i = and i32 %23, 128
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i_crit_edge

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then16.i, %if.then9.for.end.i_crit_edge
  %present_state.0.i = phi i32 [ %19, %if.then16.i ], [ %15, %if.then9.for.end.i_crit_edge ], [ %23, %if.then26.i.for.end.i_crit_edge ]
  %and29.i = and i32 %present_state.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.end35.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %24 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %ioaddr14 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %28 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr14, align 16
  %add.ptr15 = getelementptr i8, ptr %29, i32 192
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  %conv19 = zext i16 %val to i32
  %31 = and i32 %30, -33554433
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %and20 = lshr i32 %conv19, 2
  %33 = and i32 %and20, 2
  %new_val.1 = or i32 %32, %33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %34 = tail call i32 @llvm.bswap.i32(i32 %new_val.1)
  %35 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr14, align 16
  %add.ptr31 = getelementptr i8, ptr %36, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %34) #10, !srcloc !171
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %37 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %socdata, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %and32 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %sw.bb11.cleanup_crit_edge, label %if.then34

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then34:                                        ; preds = %sw.bb11
  %41 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr14, align 16
  %add.ptr38 = getelementptr i8, ptr %42, i32 60
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %44 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr14, align 16
  %add.ptr45 = getelementptr i8, ptr %45, i32 72
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #10, !srcloc !174
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  %and50 = and i32 %conv19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %48 = and i32 %43, -32769
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %and57 = and i32 %47, -50331649
  %m.0 = select i1 %tobool51.not, i32 %and57, i32 %47
  %50 = shl nuw nsw i32 %and50, 16
  %v.0 = or i32 %49, %50
  %and60 = and i32 %conv19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else66, label %if.then62

if.then62:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %or63 = or i32 %v.0, 4194304
  %or65 = or i32 %m.0, 50331648
  %51 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr14, align 16
  %add.ptr.i291 = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #10, !srcloc !174
  %54 = lshr i32 %53, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  %and.i292 = and i32 %54, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i292)
  %switch.selectcmp.i = icmp eq i32 %and.i292, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i292)
  %switch.selectcmp4.i = icmp eq i32 %and.i292, 4
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 80, i32 %switch.select.i
  %55 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr14, align 16
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %58 = and i32 %57, -1879048193
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %or.i.i = or i32 %59, %switch.select5.i
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %60) #10, !srcloc !171
  br label %do.body69

if.else66:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %and67 = and i32 %v.0, -4194305
  br label %do.body69

do.body69:                                        ; preds = %if.else66, %if.then62
  %m.1 = phi i32 [ %or65, %if.then62 ], [ %m.0, %if.else66 ]
  %v.1 = phi i32 [ %or63, %if.then62 ], [ %and67, %if.else66 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %61 = tail call i32 @llvm.bswap.i32(i32 %v.1)
  %62 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr14, align 16
  %add.ptr73 = getelementptr i8, ptr %63, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %61) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %64 = tail call i32 @llvm.bswap.i32(i32 %m.1)
  %65 = ptrtoint ptr %ioaddr14 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr14, align 16
  %add.ptr78 = getelementptr i8, ptr %66, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %64) #10, !srcloc !171
  br label %cleanup

sw.bb80:                                          ; preds = %entry
  %socdata81 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %67 = ptrtoint ptr %socdata81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %socdata81, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %and83 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %sw.bb80.if.end111_crit_edge, label %land.lhs.true

sw.bb80.if.end111_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

land.lhs.true:                                    ; preds = %sw.bb80
  %cmd = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 33
  %71 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cmd, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %74)
  %cmp = icmp eq i32 %74, 53
  br i1 %cmp, label %land.lhs.true86, label %land.lhs.true.if.end111_crit_edge

land.lhs.true.if.end111_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

land.lhs.true86:                                  ; preds = %land.lhs.true
  %data = getelementptr inbounds %struct.mmc_command, ptr %72, i32 0, i32 7
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp88 = icmp ugt i32 %78, 1
  br i1 %cmp88, label %land.lhs.true90, label %land.lhs.true86.if.end111_crit_edge

land.lhs.true86.if.end111_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

land.lhs.true90:                                  ; preds = %land.lhs.true86
  %flags93 = getelementptr inbounds %struct.mmc_data, ptr %76, i32 0, i32 6
  %79 = ptrtoint ptr %flags93 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags93, align 4
  %and94 = and i32 %80, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %land.lhs.true90.if.end111_crit_edge, label %if.then96

land.lhs.true90.if.end111_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then96:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr100 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %81 = ptrtoint ptr %ioaddr100 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr100, align 16
  %add.ptr101 = getelementptr i8, ptr %82, i32 192
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %84 = or i32 %83, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %85 = ptrtoint ptr %ioaddr100 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ioaddr100, align 16
  %add.ptr110 = getelementptr i8, ptr %86, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %84) #10, !srcloc !171
  br label %if.end111

if.end111:                                        ; preds = %if.then96, %land.lhs.true90.if.end111_crit_edge, %land.lhs.true86.if.end111_crit_edge, %land.lhs.true.if.end111_crit_edge, %sw.bb80.if.end111_crit_edge
  %87 = ptrtoint ptr %socdata81 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %socdata81, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 4
  %91 = and i32 %90, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool113.not = icmp eq i32 %91, 0
  br i1 %tobool113.not, label %if.else168, label %if.then114

if.then114:                                       ; preds = %if.end111
  %ioaddr118 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %92 = ptrtoint ptr %ioaddr118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioaddr118, align 16
  %add.ptr119 = getelementptr i8, ptr %93, i32 72
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %95 = and i16 %val, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool125.not = icmp eq i16 %95, 0
  %and128 = and i16 %val, -137
  %96 = or i16 %and128, 128
  %val.addr.0 = select i1 %tobool125.not, i16 %val, i16 %96
  %conv134 = zext i16 %val.addr.0 to i32
  %97 = and i32 %94, 1224736767
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %or136 = or i32 %98, %conv134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %99 = tail call i32 @llvm.bswap.i32(i32 %or136)
  %100 = ptrtoint ptr %ioaddr118 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioaddr118, align 16
  %add.ptr141 = getelementptr i8, ptr %101, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %99) #10, !srcloc !171
  %102 = ptrtoint ptr %ioaddr118 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioaddr118, align 16
  %add.ptr145 = getelementptr i8, ptr %103, i32 68
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %and150 = and i32 %conv134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.else153, label %if.then114.if.end158_crit_edge

if.then114.if.end158_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158

if.else153:                                       ; preds = %if.then114
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %105 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i294 = icmp eq ptr %108, null
  br i1 %tobool.not.i294, label %if.else.i, label %if.then.i, !prof !200

if.then.i:                                        ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #12
  %call.i295 = tail call zeroext i8 %108(ptr noundef %host, i32 noundef 40) #10
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %ioaddr118 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ioaddr118, align 16
  %add.ptr.i297 = getelementptr i8, ptr %110, i32 40
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i297) #10, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i295, %if.then.i ], [ %111, %if.else.i ]
  %112 = and i8 %retval.0.i, -25
  %113 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %114, i32 0, i32 5
  %115 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i299 = icmp eq ptr %116, null
  br i1 %tobool.not.i299, label %do.body.i, label %if.then.i300, !prof !200

if.then.i300:                                     ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %116(ptr noundef %host, i8 noundef zeroext %112, i32 noundef 40) #10
  br label %if.end158

do.body.i:                                        ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %117 = ptrtoint ptr %ioaddr118 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ioaddr118, align 16
  %add.ptr.i302 = getelementptr i8, ptr %118, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i302, i8 %112) #10, !srcloc !248
  br label %if.end158

if.end158:                                        ; preds = %do.body.i, %if.then.i300, %if.then114.if.end158_crit_edge
  %wml.0 = phi i32 [ 4194368, %if.then114.if.end158_crit_edge ], [ 8388736, %if.then.i300 ], [ 8388736, %do.body.i ]
  %119 = and i32 %104, 16711935
  %120 = tail call i32 @llvm.bswap.i32(i32 %119)
  %or162 = or i32 %wml.0, %120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %121 = tail call i32 @llvm.bswap.i32(i32 %or162)
  %122 = ptrtoint ptr %ioaddr118 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ioaddr118, align 16
  %add.ptr167 = getelementptr i8, ptr %123, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %121) #10, !srcloc !171
  br label %cleanup

if.else168:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  %conv169 = zext i16 %val to i32
  %124 = ptrtoint ptr %private.i289 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv169, ptr %private.i289, align 4
  br label %cleanup

sw.bb171:                                         ; preds = %entry
  %cmd172 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 33
  %125 = ptrtoint ptr %cmd172 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cmd172, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %128)
  %cmp174 = icmp eq i32 %128, 12
  %129 = or i16 %val, 192
  %spec.select = select i1 %cmp174, i16 %129, i16 %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %128)
  %cmp183 = icmp eq i32 %128, 23
  br i1 %cmp183, label %land.lhs.true185, label %sw.bb171.if.end191_crit_edge

sw.bb171.if.end191_crit_edge:                     ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

land.lhs.true185:                                 ; preds = %sw.bb171
  %socdata186 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %130 = ptrtoint ptr %socdata186 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %socdata186, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %and188 = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %tobool189.not = icmp eq i32 %and188, 0
  br i1 %tobool189.not, label %land.lhs.true185.if.end191_crit_edge, label %if.then190

land.lhs.true185.if.end191_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then190:                                       ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #12
  %multiblock_status = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %134 = ptrtoint ptr %multiblock_status to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %multiblock_status, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %land.lhs.true185.if.end191_crit_edge, %sw.bb171.if.end191_crit_edge
  %socdata.i303 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %135 = ptrtoint ptr %socdata.i303 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %socdata.i303, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %139 = and i32 %138, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool193.not = icmp eq i32 %139, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool193.not, label %do.body203, label %do.body195

do.body195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %140 = tail call i16 @llvm.bswap.i16(i16 %spec.select)
  %141 = zext i16 %140 to i32
  %ioaddr200 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %142 = ptrtoint ptr %ioaddr200 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ioaddr200, align 16
  %add.ptr201 = getelementptr i8, ptr %143, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %141) #10, !srcloc !171
  br label %cleanup

do.body203:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %conv206 = zext i16 %spec.select to i32
  %shl207 = shl nuw i32 %conv206, 16
  %144 = ptrtoint ptr %private.i289 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %private.i289, align 4
  %or209 = or i32 %145, %shl207
  %146 = tail call i32 @llvm.bswap.i32(i32 %or209)
  %ioaddr210 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %147 = ptrtoint ptr %ioaddr210 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ioaddr210, align 16
  %add.ptr211 = getelementptr i8, ptr %148, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr211, i32 %146) #10, !srcloc !171
  br label %cleanup

sw.bb213:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %149 = and i16 %val, -28673
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb213, %entry.sw.epilog_crit_edge
  %val.addr.2 = phi i16 [ %val, %entry.sw.epilog_crit_edge ], [ %149, %sw.bb213 ]
  %conv217 = zext i16 %val.addr.2 to i32
  %ioaddr.i306 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %150 = ptrtoint ptr %ioaddr.i306 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ioaddr.i306, align 16
  %and.i307 = and i32 %reg, -4
  %add.ptr.i308 = getelementptr i8, ptr %151, i32 %and.i307
  %and1.i = shl i32 %reg, 3
  %mul.i = and i32 %and1.i, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i308) #10, !srcloc !174
  %153 = tail call i32 @llvm.bswap.i32(i32 %152) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %shl.i = shl i32 65535, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and3.i = and i32 %153, %neg.i
  %shl4.i = shl i32 %conv217, %mul.i
  %or.i = or i32 %and3.i, %shl4.i
  %154 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i308, i32 %154) #10, !srcloc !171
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body203, %do.body195, %if.else168, %if.end158, %do.body69, %sw.bb11.cleanup_crit_edge, %do.end35.i, %for.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_writeb_le(ptr nocapture noundef %host, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %reg, label %entry.sw.epilog_crit_edge [
    i32 41, label %entry.cleanup_crit_edge
    i32 40, label %sw.bb2
    i32 47, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %val to i32
  %and = and i32 %conv, 1
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %1 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %socdata.i, align 4
  %cmp.i.not = icmp eq ptr %2, @esdhc_imx25_data
  %and5 = shl nuw nsw i32 %conv, 5
  %shl = and i32 %and5, 768
  %or6 = select i1 %cmp.i.not, i32 0, i32 %shl
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %3 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %4, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %6 = and i32 %5, 234946559
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %or = or i32 %and, %or6
  %new_val.0 = or i32 %or, %7
  %or.i = or i32 %new_val.0, 32
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #10, !srcloc !171
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %9 = and i8 %val, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %sw.bb7.sw.epilog_crit_edge, label %if.then11

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %sw.bb7.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %new_val.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %13, %if.then11 ], [ 0, %sw.bb7.sw.epilog_crit_edge ]
  %conv15 = zext i8 %val to i32
  %ioaddr.i68 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i68 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i68, align 16
  %and.i = and i32 %reg, -4
  %add.ptr.i69 = getelementptr i8, ptr %15, i32 %and.i
  %and1.i = shl i32 %reg, 3
  %mul.i = and i32 %and1.i, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #10, !srcloc !174
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %shl.i = shl nuw i32 255, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and3.i70 = and i32 %17, %neg.i
  %shl4.i = shl nuw i32 %conv15, %mul.i
  %or.i71 = or i32 %and3.i70, %shl4.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i71) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %18) #10, !srcloc !171
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %reg)
  %cmp = icmp eq i32 %reg, 47
  br i1 %cmp, label %if.then17, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %sw.epilog
  %and19 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then17
  %19 = ptrtoint ptr %ioaddr.i68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i68, align 16
  %add.ptr.i73 = getelementptr i8, ptr %20, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %22 = or i32 %21, 117440512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %22) #10, !srcloc !171
  %socdata.i76 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %23 = ptrtoint ptr %socdata.i76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %socdata.i76, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool23.not = icmp eq i32 %27, 0
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %ioaddr.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr.i68, align 16
  %add.ptr28 = getelementptr i8, ptr %29, i32 72
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %31 = and i32 %30, 49155
  %32 = ptrtoint ptr %ioaddr.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr.i68, align 16
  %add.ptr34 = getelementptr i8, ptr %33, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %31) #10, !srcloc !171
  %is_ddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 11
  %34 = ptrtoint ptr %is_ddr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %is_ddr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then17
  %and37 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else.cleanup_crit_edge, label %if.then39

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %ioaddr.i68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i68, align 16
  %add.ptr.i79 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %38 = and i32 %37, 16777215
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %or.i81 = or i32 %39, %new_val.1
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i81) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %40) #10, !srcloc !171
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else.cleanup_crit_edge, %if.then24, %if.then21.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_pltfm_set_clock(ptr noundef %host, i32 noundef %clock) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %clock2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %0 = ptrtoint ptr %clock2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock2, align 4
  %is_ddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 11
  %2 = ptrtoint ptr %is_ddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_ddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %4 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socdata.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %10, i32 192
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %12 = and i32 %11, -65537
  %13 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr, align 16
  %add.ptr8 = getelementptr i8, ptr %14, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %12) #10, !srcloc !171
  %call.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 424) #10
  %15 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr, align 16
  %add.ptr46.i = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #10, !srcloc !174
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %and47.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool.not48.i = icmp eq i32 %and47.i, 0
  br i1 %tobool.not48.i, label %if.then.land.lhs.true.i_crit_edge, label %if.then.for.end.i_crit_edge

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then.land.lhs.true.i_crit_edge:                ; preds = %if.then
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.then.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 16
  %add.ptr20.i = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !174
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  br label %for.end.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #10
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i = getelementptr i8, ptr %24, i32 36
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %and.i234 = and i32 %26, 128
  %tobool.not.i = icmp eq i32 %and.i234, 0
  br i1 %tobool.not.i, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i_crit_edge

if.then26.i.for.end.i_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then26.i.for.end.i_crit_edge, %if.then16.i, %if.then.for.end.i_crit_edge
  %present_state.0.i = phi i32 [ %22, %if.then16.i ], [ %18, %if.then.for.end.i_crit_edge ], [ %26, %if.then26.i.for.end.i_crit_edge ]
  %and29.i = and i32 %present_state.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %do.end35.i, label %for.end.i.if.end_crit_edge

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %27 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  br label %if.end

if.end:                                           ; preds = %do.end35.i, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %31 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %32, i32 0, i32 58
  %33 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %actual_clock, align 8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %34 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %socdata.i, align 4
  %cmp.i.not = icmp eq ptr %35, @esdhc_imx53_data
  br i1 %cmp.i.not, label %if.then13, label %if.end10.if.end42_crit_edge

if.end10.if.end42_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr16 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr16, align 16
  %add.ptr17 = getelementptr i8, ptr %37, i32 96
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %39 = or i32 %38, 262144
  %40 = ptrtoint ptr %ioaddr16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr16, align 16
  %add.ptr25 = getelementptr i8, ptr %41, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %39) #10, !srcloc !171
  %42 = ptrtoint ptr %ioaddr16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr16, align 16
  %add.ptr29 = getelementptr i8, ptr %43, i32 96
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %ioaddr16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioaddr16, align 16
  %add.ptr37 = getelementptr i8, ptr %46, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %38) #10, !srcloc !171
  %47 = and i32 %44, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool39.not = icmp eq i32 %47, 0
  %spec.select = select i1 %tobool39.not, i32 1, i32 2
  br label %if.end42

if.end42:                                         ; preds = %if.then13, %if.end10.if.end42_crit_edge
  %pre_div.0 = phi i32 [ 1, %if.end10.if.end42_crit_edge ], [ %spec.select, %if.then13 ]
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %tobool.not.i236 = icmp eq ptr %51, null
  br i1 %tobool.not.i236, label %if.else.i, label %if.then.i, !prof !200

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %call.i237 = tail call i32 %51(ptr noundef %host, i32 noundef 44) #10
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i238 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %52 = ptrtoint ptr %ioaddr.i238 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i238, align 16
  %add.ptr.i239 = getelementptr i8, ptr %53, i32 44
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #10, !srcloc !174
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i240 = phi i32 [ %call.i237, %if.then.i ], [ %55, %if.else.i ]
  %and44 = and i32 %retval.0.i240, -65528
  %56 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i242 = icmp eq ptr %59, null
  br i1 %tobool.not.i242, label %do.body.i, label %if.then.i243, !prof !200

if.then.i243:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %59(ptr noundef %host, i32 noundef %and44, i32 noundef 44) #10
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %and44) #10
  %ioaddr.i244 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %ioaddr.i244 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i244, align 16
  %add.ptr.i245 = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i245, i32 %60) #10, !srcloc !171
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i243
  %63 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %socdata.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %and45 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %sdhci_writel.exit.if.end54_crit_edge, label %if.then47

sdhci_writel.exit.if.end54_crit_edge:             ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then47:                                        ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %is_ddr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %is_ddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool49.not = icmp eq i32 %68, 0
  %cond50 = select i1 %tobool49.not, i32 150000000, i32 45000000
  %69 = tail call i32 @llvm.umin.i32(i32 %cond50, i32 %clock)
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %sdhci_writel.exit.if.end54_crit_edge
  %clock.addr.0 = phi i32 [ %69, %if.then47 ], [ %clock, %sdhci_writel.exit.if.end54_crit_edge ]
  %mul = shl nuw nsw i32 %cond, 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end54
  %pre_div.1 = phi i32 [ %pre_div.0, %if.end54 ], [ %mul59, %while.cond.while.cond_crit_edge ]
  %mul55 = mul i32 %mul, %pre_div.1
  %div56 = udiv i32 %1, %mul55
  call void @__sanitizer_cov_trace_cmp4(i32 %div56, i32 %clock.addr.0)
  %cmp57 = icmp ugt i32 %div56, %clock.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %pre_div.1)
  %cmp58 = icmp slt i32 %pre_div.1, 256
  %or.cond = select i1 %cmp57, i1 %cmp58, i1 false
  %mul59 = shl i32 %pre_div.1, 1
  br i1 %or.cond, label %while.cond.while.cond_crit_edge, label %while.cond60.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.cond60.preheader:                           ; preds = %while.cond
  %mul61 = mul i32 %pre_div.1, %cond
  br label %while.cond60

while.cond60:                                     ; preds = %while.cond60.while.cond60_crit_edge, %while.cond60.preheader
  %div.0 = phi i32 [ %inc, %while.cond60.while.cond60_crit_edge ], [ 1, %while.cond60.preheader ]
  %mul62 = mul i32 %mul61, %div.0
  %div63 = udiv i32 %1, %mul62
  call void @__sanitizer_cov_trace_cmp4(i32 %div63, i32 %clock.addr.0)
  %cmp64 = icmp ugt i32 %div63, %clock.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.0)
  %cmp66 = icmp ult i32 %div.0, 16
  %or.cond232 = select i1 %cmp64, i1 %cmp66, i1 false
  %inc = add nuw nsw i32 %div.0, 1
  br i1 %or.cond232, label %while.cond60.while.cond60_crit_edge, label %while.end69

while.cond60.while.cond60_crit_edge:              ; preds = %while.cond60
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond60

while.end69:                                      ; preds = %while.cond60
  %mmc73 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %70 = ptrtoint ptr %mmc73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmc73, align 8
  %actual_clock74 = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 58
  %72 = ptrtoint ptr %actual_clock74 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %div63, ptr %actual_clock74, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esdhc_pltfm_set_clock.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esdhc_pltfm_set_clock, %if.then81)) #10
          to label %do.end87 [label %if.then81], !srcloc !184

if.then81:                                        ; preds = %while.end69
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %mmc73 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc73, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  %actual_clock84 = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 58
  %77 = ptrtoint ptr %actual_clock84 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %actual_clock84, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esdhc_pltfm_set_clock.__UNIQUE_ID_ddebug294, ptr noundef %76, ptr noundef nonnull @.str.20, i32 noundef %clock.addr.0, i32 noundef %78) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then81, %while.end69
  %79 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %tobool.not.i247 = icmp eq ptr %82, null
  br i1 %tobool.not.i247, label %if.else.i252, label %if.then.i249, !prof !200

if.then.i249:                                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call.i248 = tail call i32 %82(ptr noundef %host, i32 noundef 44) #10
  br label %sdhci_readl.exit254

if.else.i252:                                     ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i250 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %83 = ptrtoint ptr %ioaddr.i250 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ioaddr.i250, align 16
  %add.ptr.i251 = getelementptr i8, ptr %84, i32 44
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i251) #10, !srcloc !174
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  br label %sdhci_readl.exit254

sdhci_readl.exit254:                              ; preds = %if.else.i252, %if.then.i249
  %retval.0.i253 = phi i32 [ %call.i248, %if.then.i249 ], [ %86, %if.else.i252 ]
  %dec = shl nuw nsw i32 %div.0, 4
  %shl = add nsw i32 %dec, -16
  %87 = shl i32 %pre_div.1, 7
  %shl90 = and i32 %87, -256
  %or89 = or i32 %shl90, %shl
  %or91 = or i32 %or89, %retval.0.i253
  %or92 = or i32 %or91, 7
  %88 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i, align 4
  %write_l.i256 = getelementptr inbounds %struct.sdhci_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %write_l.i256 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_l.i256, align 4
  %tobool.not.i257 = icmp eq ptr %91, null
  br i1 %tobool.not.i257, label %do.body.i261, label %if.then.i258, !prof !200

if.then.i258:                                     ; preds = %sdhci_readl.exit254
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %91(ptr noundef %host, i32 noundef %or92, i32 noundef 44) #10
  br label %sdhci_writel.exit262

do.body.i261:                                     ; preds = %sdhci_readl.exit254
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %92 = tail call i32 @llvm.bswap.i32(i32 %or92) #10
  %ioaddr.i259 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %93 = ptrtoint ptr %ioaddr.i259 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioaddr.i259, align 16
  %add.ptr.i260 = getelementptr i8, ptr %94, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %92) #10, !srcloc !171
  br label %sdhci_writel.exit262

sdhci_writel.exit262:                             ; preds = %do.body.i261, %if.then.i258
  %call93 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call93, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 963) #10
  %ioaddr109 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %95 = ptrtoint ptr %ioaddr109 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ioaddr109, align 16
  %add.ptr110274 = getelementptr i8, ptr %96, i32 36
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110274) #10, !srcloc !174
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  %and114275 = and i32 %98, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114275)
  %tobool115.not276 = icmp eq i32 %and114275, 0
  br i1 %tobool115.not276, label %sdhci_writel.exit262.land.lhs.true_crit_edge, label %sdhci_writel.exit262.for.end_crit_edge

sdhci_writel.exit262.for.end_crit_edge:           ; preds = %sdhci_writel.exit262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

sdhci_writel.exit262.land.lhs.true_crit_edge:     ; preds = %sdhci_writel.exit262
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then132.land.lhs.true_crit_edge, %sdhci_writel.exit262.land.lhs.true_crit_edge
  %call119 = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call119, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call119, %add.i
  br i1 %cmp3.i, label %if.then122, label %if.then132

if.then122:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %ioaddr109 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ioaddr109, align 16
  %add.ptr126 = getelementptr i8, ptr %100, i32 36
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr126) #10, !srcloc !174
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !262
  br label %for.end

if.then132:                                       ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #10
  %103 = ptrtoint ptr %ioaddr109 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ioaddr109, align 16
  %add.ptr110 = getelementptr i8, ptr %104, i32 36
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #10, !srcloc !174
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  %and114 = and i32 %106, 8
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then132.land.lhs.true_crit_edge, label %if.then132.for.end_crit_edge

if.then132.for.end_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then132.land.lhs.true_crit_edge:               ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.end:                                          ; preds = %if.then132.for.end_crit_edge, %if.then122, %sdhci_writel.exit262.for.end_crit_edge
  %temp.0 = phi i32 [ %102, %if.then122 ], [ %98, %sdhci_writel.exit262.for.end_crit_edge ], [ %106, %if.then132.for.end_crit_edge ]
  %and136 = and i32 %temp.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %do.end143, label %for.end.if.end146_crit_edge

for.end.if.end146_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

do.end143:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %mmc73 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmc73, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %110, ptr noundef nonnull @.str.21) #13
  br label %if.end146

if.end146:                                        ; preds = %do.end143, %for.end.if.end146_crit_edge
  %111 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %socdata.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %115 = and i32 %114, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool148.not = icmp eq i32 %115, 0
  br i1 %tobool148.not, label %if.end146.cleanup_crit_edge, label %if.then149

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %ioaddr109 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr109, align 16
  %add.ptr153 = getelementptr i8, ptr %117, i32 192
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !263
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %119 = or i32 %118, 65536
  %120 = ptrtoint ptr %ioaddr109 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ioaddr109, align 16
  %add.ptr162 = getelementptr i8, ptr %121, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %119) #10, !srcloc !171
  br label %cleanup

cleanup:                                          ; preds = %if.then149, %if.end146.cleanup_crit_edge, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_cqhci_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #10
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #10
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_pltfm_get_max_clock(ptr nocapture noundef readonly %host) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_pltfm_get_min_clock(ptr nocapture noundef readonly %host) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %0 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock, align 4
  %div13 = lshr i32 %1, 12
  ret i32 %div13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_get_max_timeout_count(ptr nocapture noundef readonly %host) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %0 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 134217728, i32 536870912
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_set_timeout(ptr nocapture noundef readonly %host, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %0 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %cond = select i1 %tobool.not, i32 917504, i32 983040
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %8 = and i32 %7, -3841
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %or.i = or i32 %9, %cond
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #10, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_pltfm_set_bus_width(ptr nocapture noundef readonly %host, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %width)
  %switch.selectcmp = icmp eq i32 %width, 2
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %width)
  %switch.selectcmp2 = icmp eq i32 %width, 3
  %switch.select3 = select i1 %switch.selectcmp2, i32 4, i32 %switch.select
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %3 = and i32 %2, -100663297
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %or.i = or i32 %4, %switch.select3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #10, !srcloc !171
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_pltfm_get_ro(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i11 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %boarddata2 = getelementptr inbounds %struct.pltfm_imx_data, ptr %private.i11, i32 0, i32 5
  %0 = ptrtoint ptr %boarddata2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %boarddata2, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %3 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc, align 8
  %call3 = tail call i32 @mmc_gpio_get_ro(ptr noundef %4) #10
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  %8 = lshr i32 %7, 11
  %.lobit = and i32 %8, 1
  %9 = xor i32 %.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %sw.bb4 ], [ %call3, %sw.bb ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #10
  %ier = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 66
  %0 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ier, align 4
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !200

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %5(ptr noundef %host, i32 noundef %1, i32 noundef 52) #10
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !171
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i
  %9 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ier, align 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_l.i7 = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i7, align 4
  %tobool.not.i8 = icmp eq ptr %14, null
  br i1 %tobool.not.i8, label %do.body.i12, label %if.then.i9, !prof !200

if.then.i9:                                       ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %14(ptr noundef %host, i32 noundef %10, i32 noundef 56) #10
  br label %sdhci_writel.exit13

do.body.i12:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  %ioaddr.i10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i10, align 16
  %add.ptr.i11 = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %15) #10, !srcloc !171
  br label %sdhci_writel.exit13

sdhci_writel.exit13:                              ; preds = %do.body.i12, %if.then.i9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  %3 = and i32 %2, -134217733
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %is_ddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 11
  %5 = ptrtoint ptr %is_ddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_ddr, align 4
  %6 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %timing, label %sw.default [
    i32 3, label %entry.do.body_crit_edge
    i32 4, label %entry.do.body_crit_edge71
    i32 5, label %entry.do.body_crit_edge72
    i32 6, label %entry.do.body_crit_edge73
    i32 1, label %entry.do.body_crit_edge74
    i32 9, label %entry.do.body_crit_edge75
    i32 7, label %entry.sw.bb7_crit_edge
    i32 8, label %entry.sw.bb7_crit_edge76
    i32 10, label %sw.bb26
  ]

entry.sw.bb7_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb7

entry.do.body_crit_edge75:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge74:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge73:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge71:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge71, %entry.do.body_crit_edge72, %entry.do.body_crit_edge73, %entry.do.body_crit_edge74, %entry.do.body_crit_edge75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr6 = getelementptr i8, ptr %8, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #10, !srcloc !171
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge76
  %or = or i32 %4, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  tail call void @arm_heavy_mb() #10
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %add.ptr12 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %9) #10, !srcloc !171
  %12 = ptrtoint ptr %is_ddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %is_ddr, align 4
  %delay_line = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 2
  %13 = ptrtoint ptr %delay_line to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay_line, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %sw.bb7.sw.epilog_crit_edge, label %if.then

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %shl = shl i32 %14, 9
  %or15 = or i32 %shl, 256
  %socdata.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %15 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %socdata.i, align 4
  %cmp.i.not = icmp eq ptr %16, @esdhc_imx53_data
  %shl19 = zext i1 %cmp.i.not to i32
  %spec.select = shl i32 %or15, %shl19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  tail call void @arm_heavy_mb() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 16
  %add.ptr24 = getelementptr i8, ptr %19, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %17) #10, !srcloc !171
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %or27 = or i32 %4, 67108872
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 16
  %add.ptr32 = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #10, !srcloc !171
  %23 = ptrtoint ptr %is_ddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %is_ddr, align 4
  %ops = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %set_clock = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %set_clock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_clock, align 4
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %28 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock, align 4
  tail call void %27(ptr noundef %host, i32 noundef %29) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i = getelementptr i8, ptr %31, i32 192
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  %33 = and i32 %32, -65537
  %34 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr, align 16
  %add.ptr5.i = getelementptr i8, ptr %35, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %33) #10, !srcloc !171
  %call.i.i = tail call i64 @ktime_get() #10
  %add.i.i.i = add i64 %call.i.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 424) #10
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 16
  %add.ptr46.i.i = getelementptr i8, ptr %37, i32 36
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i.i) #10, !srcloc !174
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %and47.i.i = and i32 %39, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool.not48.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool.not48.i.i, label %sw.bb26.land.lhs.true.i.i_crit_edge, label %sw.bb26.for.end.i.i_crit_edge

sw.bb26.for.end.i.i_crit_edge:                    ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

sw.bb26.land.lhs.true.i.i_crit_edge:              ; preds = %sw.bb26
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then26.i.i.land.lhs.true.i.i_crit_edge, %sw.bb26.land.lhs.true.i.i_crit_edge
  %call13.i.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then16.i.i, label %if.then26.i.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 16
  %add.ptr20.i.i = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #10, !srcloc !174
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  br label %for.end.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true.i.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #10
  %44 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 36
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !174
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  %and.i.i = and i32 %47, 128
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then26.i.i.land.lhs.true.i.i_crit_edge, label %if.then26.i.i.for.end.i.i_crit_edge

if.then26.i.i.for.end.i.i_crit_edge:              ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.then26.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

for.end.i.i:                                      ; preds = %if.then26.i.i.for.end.i.i_crit_edge, %if.then16.i.i, %sw.bb26.for.end.i.i_crit_edge
  %present_state.0.i.i = phi i32 [ %43, %if.then16.i.i ], [ %39, %sw.bb26.for.end.i.i_crit_edge ], [ %47, %if.then26.i.i.for.end.i.i_crit_edge ]
  %and29.i.i = and i32 %present_state.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %do.end35.i.i, label %for.end.i.i.esdhc_wait_for_card_clock_gate_off.exit.i_crit_edge

for.end.i.i.esdhc_wait_for_card_clock_gate_off.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esdhc_wait_for_card_clock_gate_off.exit.i

do.end35.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %48 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmc.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #13
  br label %esdhc_wait_for_card_clock_gate_off.exit.i

esdhc_wait_for_card_clock_gate_off.exit.i:        ; preds = %do.end35.i.i, %for.end.i.i.esdhc_wait_for_card_clock_gate_off.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 16
  %add.ptr10.i = getelementptr i8, ptr %53, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 33554432) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  tail call void @arm_heavy_mb() #10
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 16
  %add.ptr15.i = getelementptr i8, ptr %55, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 0) #10, !srcloc !171
  %strobe_dll_delay_target.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 5
  %56 = ptrtoint ptr %strobe_dll_delay_target.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %strobe_dll_delay_target.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  %phi.bo.i = shl i32 %57, 3
  %phi.bo96.i = or i32 %phi.bo.i, 4194305
  %strobe_delay.0.i = select i1 %tobool.not.i, i32 4194361, i32 %phi.bo96.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  tail call void @arm_heavy_mb() #10
  %58 = tail call i32 @llvm.bswap.i32(i32 %strobe_delay.0.i) #10
  %59 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ioaddr, align 16
  %add.ptr22.i = getelementptr i8, ptr %60, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %58) #10, !srcloc !171
  %call23.i = tail call i64 @ktime_get() #10
  %add.i.i = add i64 %call23.i, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1192) #10
  %61 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr, align 16
  %add.ptr39101.i = getelementptr i8, ptr %62, i32 116
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39101.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  %64 = and i32 %63, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %64)
  %.not102.i = icmp eq i32 %64, 50331648
  br i1 %.not102.i, label %esdhc_wait_for_card_clock_gate_off.exit.i.sw.epilog_crit_edge, label %esdhc_wait_for_card_clock_gate_off.exit.i.land.lhs.true50.i_crit_edge

esdhc_wait_for_card_clock_gate_off.exit.i.land.lhs.true50.i_crit_edge: ; preds = %esdhc_wait_for_card_clock_gate_off.exit.i
  br label %land.lhs.true50.i

esdhc_wait_for_card_clock_gate_off.exit.i.sw.epilog_crit_edge: ; preds = %esdhc_wait_for_card_clock_gate_off.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true50.i:                                ; preds = %if.then64.i.land.lhs.true50.i_crit_edge, %esdhc_wait_for_card_clock_gate_off.exit.i.land.lhs.true50.i_crit_edge
  %call51.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call51.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call51.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then64.i

if.then64.i:                                      ; preds = %land.lhs.true50.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %65 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr, align 16
  %add.ptr39.i = getelementptr i8, ptr %66, i32 116
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  %68 = and i32 %67, 50331648
  %.not.i = icmp eq i32 %68, 50331648
  br i1 %.not.i, label %if.then64.i.sw.epilog_crit_edge, label %if.then64.i.land.lhs.true50.i_crit_edge

if.then64.i.land.lhs.true50.i_crit_edge:          ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true50.i

if.then64.i.sw.epilog_crit_edge:                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.end.i:                                        ; preds = %land.lhs.true50.i
  %69 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr, align 16
  %add.ptr58.i = getelementptr i8, ptr %70, i32 116
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #10, !srcloc !174
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  %.pre.i = and i32 %72, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pre.i)
  %.not98.i = icmp eq i32 %.pre.i, 3
  br i1 %.not98.i, label %for.end.i.sw.epilog_crit_edge, label %do.end75.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end75.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %73 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc.i, align 8
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.22, i32 noundef %72) #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %socdata.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %77 = ptrtoint ptr %socdata.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %socdata.i.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 4
  %81 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i60 = icmp eq i32 %81, 0
  br i1 %tobool.not.i60, label %sw.default.sw.epilog_crit_edge, label %if.then.i

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.default
  %and.i = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr, align 16
  %add.ptr.i62 = getelementptr i8, ptr %83, i32 72
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  %85 = and i32 %84, -32771
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  tail call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr, align 16
  %add.ptr10.i63 = getelementptr i8, ptr %87, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i63, i32 %85) #10, !srcloc !171
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  %88 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr, align 16
  %add.ptr15.i64 = getelementptr i8, ptr %89, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i64, i32 0) #10, !srcloc !171
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then.i
  %and18.i = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else.i.sw.epilog_crit_edge, label %if.then20.i

if.else.i.sw.epilog_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then20.i:                                      ; preds = %if.else.i
  %90 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ioaddr, align 16
  %add.ptr24.i = getelementptr i8, ptr %91, i32 60
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  %93 = and i32 %92, -49153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void @arm_heavy_mb() #10
  %94 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioaddr, align 16
  %add.ptr34.i = getelementptr i8, ptr %95, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %93) #10, !srcloc !171
  %call35.i = tail call i64 @ktime_get() #10
  %add.i.i65 = add i64 %call35.i, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1220) #10
  %96 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ioaddr, align 16
  %add.ptr50125.i = getelementptr i8, ptr %97, i32 60
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50125.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %99 = and i32 %98, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool55.not127.i = icmp eq i32 %99, 0
  br i1 %tobool55.not127.i, label %if.then20.i.if.end82.i_crit_edge, label %if.then20.i.land.lhs.true.i_crit_edge

if.then20.i.land.lhs.true.i_crit_edge:            ; preds = %if.then20.i
  br label %land.lhs.true.i

if.then20.i.if.end82.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

land.lhs.true.i:                                  ; preds = %if.then72.i.land.lhs.true.i_crit_edge, %if.then20.i.land.lhs.true.i_crit_edge
  %call59.i = tail call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call59.i, i64 %add.i.i65)
  %cmp3.i.i66 = icmp sgt i64 %call59.i, %add.i.i65
  br i1 %cmp3.i.i66, label %for.end.i67, label %if.then72.i

if.then72.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #10
  %100 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioaddr, align 16
  %add.ptr50.i = getelementptr i8, ptr %101, i32 60
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %103 = and i32 %102, 16384
  %tobool55.not.i = icmp eq i32 %103, 0
  br i1 %tobool55.not.i, label %if.then72.i.if.end82.i_crit_edge, label %if.then72.i.land.lhs.true.i_crit_edge

if.then72.i.land.lhs.true.i_crit_edge:            ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i

if.then72.i.if.end82.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

for.end.i67:                                      ; preds = %land.lhs.true.i
  %104 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioaddr, align 16
  %add.ptr66.i = getelementptr i8, ptr %105, i32 60
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !284
  %107 = and i32 %106, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool76.not.i = icmp eq i32 %107, 0
  br i1 %tobool76.not.i, label %for.end.i67.if.end82.i_crit_edge, label %do.end81.i

for.end.i67.if.end82.i_crit_edge:                 ; preds = %for.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82.i

do.end81.i:                                       ; preds = %for.end.i67
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i68 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %108 = ptrtoint ptr %mmc.i68 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mmc.i68, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.24) #13
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end81.i, %for.end.i67.if.end82.i_crit_edge, %if.then72.i.if.end82.i_crit_edge, %if.then20.i.if.end82.i_crit_edge
  %112 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioaddr, align 16
  %add.ptr86.i = getelementptr i8, ptr %113, i32 48
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !285
  %115 = or i32 %114, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !286
  tail call void @arm_heavy_mb() #10
  %116 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr, align 16
  %add.ptr94.i = getelementptr i8, ptr %117, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 %115) #10, !srcloc !171
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end82.i, %if.else.i.sw.epilog_crit_edge, %if.then4.i, %sw.default.sw.epilog_crit_edge, %do.end75.i, %for.end.i.sw.epilog_crit_edge, %if.then64.i.sw.epilog_crit_edge, %esdhc_wait_for_card_clock_gate_off.exit.i.sw.epilog_crit_edge, %if.then, %sw.bb7.sw.epilog_crit_edge, %do.body
  %private.i1.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esdhc_change_pinstate.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esdhc_set_uhs_signaling, %if.then.i70)) #10
          to label %do.end.i [label %if.then.i70], !srcloc !184

if.then.i70:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i69 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %118 = ptrtoint ptr %mmc.i69 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmc.i69, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esdhc_change_pinstate.__UNIQUE_ID_ddebug297, ptr noundef %121, ptr noundef nonnull @.str.27, i32 noundef %timing) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i70, %sw.epilog
  %pinctrl5.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %122 = ptrtoint ptr %pinctrl5.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pinctrl5.i, align 4
  %cmp.i.i = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i.esdhc_change_pinstate.exit_crit_edge, label %lor.lhs.false.i

do.end.i.esdhc_change_pinstate.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esdhc_change_pinstate.exit

lor.lhs.false.i:                                  ; preds = %do.end.i
  %pins_100mhz.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %124 = ptrtoint ptr %pins_100mhz.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pins_100mhz.i, align 4
  %cmp.i2.i = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i, label %lor.lhs.false.i.esdhc_change_pinstate.exit_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.esdhc_change_pinstate.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esdhc_change_pinstate.exit

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %pins_200mhz.i = getelementptr inbounds %struct.pltfm_imx_data, ptr %private.i1.i, i32 0, i32 3
  %126 = ptrtoint ptr %pins_200mhz.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pins_200mhz.i, align 4
  %cmp.i3.i = icmp ugt ptr %127, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3.i, label %lor.lhs.false8.i.esdhc_change_pinstate.exit_crit_edge, label %if.end11.i

lor.lhs.false8.i.esdhc_change_pinstate.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %esdhc_change_pinstate.exit

if.end11.i:                                       ; preds = %lor.lhs.false8.i
  %128 = zext i32 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %128, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %timing, label %sw.default.i [
    i32 5, label %if.end11.i.sw.epilog.i_crit_edge
    i32 7, label %if.end11.i.sw.epilog.i_crit_edge77
    i32 6, label %if.end11.i.sw.bb13.i_crit_edge
    i32 9, label %if.end11.i.sw.bb13.i_crit_edge78
    i32 10, label %if.end11.i.sw.bb13.i_crit_edge79
  ]

if.end11.i.sw.bb13.i_crit_edge79:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end11.i.sw.bb13.i_crit_edge78:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end11.i.sw.bb13.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb13.i

if.end11.i.sw.epilog.i_crit_edge77:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end11.i.sw.epilog.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end11.i.sw.bb13.i_crit_edge, %if.end11.i.sw.bb13.i_crit_edge78, %if.end11.i.sw.bb13.i_crit_edge79
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc15.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %129 = ptrtoint ptr %mmc15.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mmc15.i, align 8
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 128
  %call17.i = tail call i32 @pinctrl_select_default_state(ptr noundef %132) #10
  br label %esdhc_change_pinstate.exit

sw.epilog.i:                                      ; preds = %sw.bb13.i, %if.end11.i.sw.epilog.i_crit_edge, %if.end11.i.sw.epilog.i_crit_edge77
  %pinctrl.0.in.i = phi ptr [ %pins_200mhz.i, %sw.bb13.i ], [ %pins_100mhz.i, %if.end11.i.sw.epilog.i_crit_edge ], [ %pins_100mhz.i, %if.end11.i.sw.epilog.i_crit_edge77 ]
  %133 = ptrtoint ptr %pinctrl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %pinctrl.0.i = load ptr, ptr %pinctrl.0.in.i, align 4
  %call19.i = tail call i32 @pinctrl_select_state(ptr noundef %123, ptr noundef %pinctrl.0.i) #10
  br label %esdhc_change_pinstate.exit

esdhc_change_pinstate.exit:                       ; preds = %sw.epilog.i, %sw.default.i, %lor.lhs.false8.i.esdhc_change_pinstate.exit_crit_edge, %lor.lhs.false.i.esdhc_change_pinstate.exit_crit_edge, %do.end.i.esdhc_change_pinstate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_dump_debug_regs(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %retval.0.i) #13
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %dev_name.exit24.for.body_crit_edge, %dev_name.exit
  %i.028 = phi i32 [ 0, %dev_name.exit ], [ %add, %dev_name.exit24.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.028, 1
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %9 = and i32 %8, -16
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %shl4.i = shl i32 %add, 24
  %or.i = or i32 %10, %shl4.i
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #10, !srcloc !171
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 8
  %init_name.i20 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i20, align 8
  %tobool.not.i21 = icmp eq ptr %15, null
  br i1 %tobool.not.i21, label %if.end.i22, label %for.body.dev_name.exit24_crit_edge

for.body.dev_name.exit24_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit24

if.end.i22:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev7 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %class_dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev7, align 4
  br label %dev_name.exit24

dev_name.exit24:                                  ; preds = %if.end.i22, %for.body.dev_name.exit24_crit_edge
  %retval.0.i23 = phi ptr [ %17, %if.end.i22 ], [ %15, %for.body.dev_name.exit24_crit_edge ]
  %arrayidx = getelementptr [7 x ptr], ptr @__const.esdhc_dump_debug_regs.debug_status, i32 0, i32 %i.028
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr = getelementptr i8, ptr %21, i32 194
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #10, !srcloc !217
  %23 = tail call i16 @llvm.bswap.i16(i16 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !287
  %conv = zext i16 %23 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i23, ptr noundef %19, i32 noundef %conv) #13
  %exitcond.not = icmp eq i32 %add, 7
  br i1 %exitcond.not, label %for.end, label %dev_name.exit24.for.body_crit_edge

dev_name.exit24.for.body_crit_edge:               ; preds = %dev_name.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %dev_name.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i26 = getelementptr i8, ptr %25, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %27 = and i32 %26, -16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %27) #10, !srcloc !171
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_sdhci_dumpregs(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void @sdhci_dumpregs(ptr noundef %private.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_cqe_enable(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !200

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %5(ptr noundef %private.i, i32 noundef 36) #10
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !174
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and82 = and i32 %retval.0.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool.not83 = icmp eq i32 %and82, 0
  br i1 %tobool.not83, label %sdhci_readl.exit.while.end_crit_edge, label %while.body.lr.ph

sdhci_readl.exit.while.end_crit_edge:             ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %sdhci_readl.exit
  %ioaddr.i44 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %count.084 = phi i32 [ 10, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i41 = icmp eq ptr %13, null
  br i1 %tobool.not.i41, label %if.else.i46, label %if.then.i43, !prof !200

if.then.i43:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i42 = tail call i32 %13(ptr noundef %private.i, i32 noundef 32) #10
  br label %sdhci_readl.exit48

if.else.i46:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i45 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #10, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  br label %sdhci_readl.exit48

sdhci_readl.exit48:                               ; preds = %if.else.i46, %if.then.i43
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i50 = icmp eq ptr %20, null
  br i1 %tobool.not.i50, label %if.else.i55, label %if.then.i52, !prof !200

if.then.i52:                                      ; preds = %sdhci_readl.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %call.i51 = tail call i32 %20(ptr noundef %private.i, i32 noundef 36) #10
  br label %sdhci_readl.exit57

if.else.i55:                                      ; preds = %sdhci_readl.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i54 = getelementptr i8, ptr %22, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #10, !srcloc !174
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  br label %sdhci_readl.exit57

sdhci_readl.exit57:                               ; preds = %if.else.i55, %if.then.i52
  %retval.0.i56 = phi i32 [ %call.i51, %if.then.i52 ], [ %24, %if.else.i55 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.084)
  %cmp = icmp eq i32 %count.084, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sdhci_readl.exit57
  call void @__sanitizer_cov_trace_pc() #12
  %mmc4 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %25 = ptrtoint ptr %mmc4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmc4, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.40) #13
  br label %while.end

if.end:                                           ; preds = %sdhci_readl.exit57
  %dec = add nsw i32 %count.084, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #10
  %and = and i32 %retval.0.i56, 2048
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %do.end, %sdhci_readl.exit.while.end_crit_edge
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i59 = icmp eq ptr %33, null
  br i1 %tobool.not.i59, label %if.else.i64, label %if.then.i61, !prof !200

if.then.i61:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i60 = tail call zeroext i16 %33(ptr noundef %private.i, i32 noundef 12) #10
  br label %sdhci_readw.exit

if.else.i64:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %ioaddr.i62 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %ioaddr.i62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i62, align 16
  %add.ptr.i63 = getelementptr i8, ptr %35, i32 12
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i63) #10, !srcloc !217
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !288
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i64, %if.then.i61
  %retval.0.i65 = phi i16 [ %call.i60, %if.then.i61 ], [ %37, %if.else.i64 ]
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %40 = trunc i32 %39 to i16
  %41 = lshr i16 %40, 2
  %42 = and i16 %41, 1
  %43 = or i16 %42, %retval.0.i65
  %quirks2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %44 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %quirks2, align 8
  %and11 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %46 = or i16 %43, 2
  %mode.1 = select i1 %tobool12.not, i16 %46, i16 %43
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i67 = icmp eq ptr %50, null
  br i1 %tobool.not.i67, label %do.body.i, label %if.then.i68, !prof !200

if.then.i68:                                      ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %50(ptr noundef %private.i, i16 noundef zeroext %mode.1, i32 noundef 12) #10
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !289
  tail call void @arm_heavy_mb() #10
  %51 = tail call i16 @llvm.bswap.i16(i16 %mode.1) #10
  %ioaddr.i69 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %ioaddr.i69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr.i69, align 16
  %add.ptr.i70 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i70, i16 %51) #10, !srcloc !290
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i68
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i71 = icmp eq ptr %57, null
  br i1 %tobool.not.i71, label %if.else.i74, label %if.then.i72, !prof !200

if.then.i72:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %57(ptr noundef %1, i32 noundef 0, i32 noundef 12) #10
  br label %cqhci_writel.exit

if.else.i74:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 0) #10, !srcloc !171
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i74, %if.then.i72
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i75 = icmp eq ptr %63, null
  br i1 %tobool.not.i75, label %if.else.i80, label %if.then.i77, !prof !200

if.then.i77:                                      ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i76 = tail call i32 %63(ptr noundef %1, i32 noundef 12) #10
  br label %cqhci_readl.exit

if.else.i80:                                      ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i78 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %mmio.i78 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i78, align 4
  %add.ptr.i79 = getelementptr i8, ptr %65, i32 12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #10, !srcloc !174
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i80, %if.then.i77
  %retval.0.i81 = phi i32 [ %call.i76, %if.then.i77 ], [ %67, %if.else.i80 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i81)
  %tobool19.not = icmp eq i32 %retval.0.i81, 0
  br i1 %tobool19.not, label %cqhci_readl.exit.if.end26_crit_edge, label %do.end23

cqhci_readl.exit.if.end26_crit_edge:              ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end23:                                         ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %mmc24 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %68 = ptrtoint ptr %mmc24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmc24, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.43) #13
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %cqhci_readl.exit.if.end26_crit_edge
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_dumpregs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse_voltage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %6 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socdata, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and8 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %10 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 8
  tail call void @mmc_retune_timer_stop(ptr noundef %13) #10
  %14 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 29
  %16 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %17 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i, label %if.then10.if.end13_crit_edge, label %if.then.i

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 32
  %18 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then.i, %if.then10.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  %tuning_mode14 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %19 = ptrtoint ptr %tuning_mode14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tuning_mode14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp15.not = icmp eq i32 %20, 2
  br i1 %cmp15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  %21 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc, align 8
  %can_retune.i49 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 29
  %23 = ptrtoint ptr %can_retune.i49 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i50 = load i16, ptr %can_retune.i49, align 8
  %24 = and i16 %bf.load.i50, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i51 = icmp eq i16 %24, 0
  br i1 %tobool.not.i51, label %if.then16.if.end18_crit_edge, label %if.then.i53

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then.i53:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i52 = getelementptr inbounds %struct.mmc_host, ptr %22, i32 0, i32 32
  %25 = ptrtoint ptr %need_retune.i52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %need_retune.i52, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then.i53, %if.then16.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %call19 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc, align 8
  %call28 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %27, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %if.end26 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @sdhci_esdhc_imx_hwinit(ptr noundef %1)
  %call2 = tail call i32 @sdhci_resume_host(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

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
  br i1 %tobool6.not, label %if.end5.if.then12_crit_edge, label %if.end10

if.end5.if.then12_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.end10:                                         ; preds = %if.end5
  %call9 = tail call i32 @cqhci_resume(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %if.end10.if.then12_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.if.then12_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12

if.then12:                                        ; preds = %if.end10.if.then12_crit_edge, %if.end5.if.then12_crit_edge
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 8
  %call14 = tail call i32 @mmc_gpio_set_cd_wake(ptr noundef %7, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call9, %if.end10.cleanup_crit_edge ], [ %call14, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = tail call i32 @sdhci_runtime_suspend_host(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %6 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not = icmp eq i32 %7, 2
  br i1 %cmp.not, label %if.end11.if.end14_crit_edge, label %if.then12

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 29
  %10 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %11 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.then12.if.end14_crit_edge, label %if.then.i

if.then12.if.end14_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 32
  %12 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %if.then12.if.end14_crit_edge, %if.end11.if.end14_crit_edge
  %13 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %14, i32 0, i32 58
  %15 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_clock, align 8
  %actual_clock16 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 9
  %17 = ptrtoint ptr %actual_clock16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %actual_clock16, align 4
  tail call void @esdhc_pltfm_set_clock(ptr noundef %1, i32 noundef 0)
  %clk_per = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 8
  %18 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %19) #10
  tail call void @clk_unprepare(ptr noundef %19) #10
  %clk_ipg = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 6
  %20 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %21) #10
  tail call void @clk_unprepare(ptr noundef %21) #10
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 7
  %22 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %24 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %socdata, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %and17 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.then19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 12
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end14.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %socdata = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %2 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 12
  tail call void @cpu_latency_qos_add_request(ptr noundef %pm_qos_req, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %socdata, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and5 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %clk_per = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 8
  %10 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_per, align 4
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 1
  %12 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clock, align 4
  %call8 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %13) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %clk_ahb = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 7
  %14 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_ahb, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.remove_pm_qos_request_crit_edge

if.end9.remove_pm_qos_request_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_pm_qos_request

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %if.end.i.remove_pm_qos_request.sink.split_crit_edge

if.end.i.remove_pm_qos_request.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_pm_qos_request.sink.split

if.end13:                                         ; preds = %if.end.i
  %clk_per14 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 8
  %16 = ptrtoint ptr %clk_per14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_per14, align 4
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.end13.disable_ahb_clk_crit_edge

if.end13.disable_ahb_clk_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ahb_clk

if.end.i73:                                       ; preds = %if.end13
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %if.end18, label %if.end.i73.disable_ahb_clk.sink.split_crit_edge

if.end.i73.disable_ahb_clk.sink.split_crit_edge:  ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_ahb_clk.sink.split

if.end18:                                         ; preds = %if.end.i73
  %clk_ipg = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 6
  %18 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_ipg, align 4
  %call.i77 = tail call i32 @clk_prepare(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end.i81, label %if.end18.disable_per_clk_crit_edge

if.end18.disable_per_clk_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_per_clk

if.end.i81:                                       ; preds = %if.end18
  %call1.i79 = tail call i32 @clk_enable(ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool2.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool2.not.i80, label %if.end22, label %if.end.i81.disable_per_clk.sink.split_crit_edge

if.end.i81.disable_per_clk.sink.split_crit_edge:  ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_per_clk.sink.split

if.end22:                                         ; preds = %if.end.i81
  %actual_clock = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 9
  %20 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %actual_clock, align 4
  tail call void @esdhc_pltfm_set_clock(ptr noundef %1, i32 noundef %21)
  %call23 = tail call i32 @sdhci_runtime_resume_host(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %disable_ipg_clk

if.end26:                                         ; preds = %if.end22
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps2, align 4
  %and27 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 @cqhci_resume(ptr noundef %23) #10
  br label %cleanup

disable_ipg_clk:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %27) #10
  br label %disable_per_clk.sink.split

disable_per_clk.sink.split:                       ; preds = %disable_ipg_clk, %if.end.i81.disable_per_clk.sink.split_crit_edge
  %.sink = phi ptr [ %27, %disable_ipg_clk ], [ %19, %if.end.i81.disable_per_clk.sink.split_crit_edge ]
  %err.1.ph = phi i32 [ %call23, %disable_ipg_clk ], [ %call1.i79, %if.end.i81.disable_per_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #10
  br label %disable_per_clk

disable_per_clk:                                  ; preds = %disable_per_clk.sink.split, %if.end18.disable_per_clk_crit_edge
  %err.1 = phi i32 [ %call.i77, %if.end18.disable_per_clk_crit_edge ], [ %err.1.ph, %disable_per_clk.sink.split ]
  %28 = ptrtoint ptr %clk_per14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_per14, align 4
  tail call void @clk_disable(ptr noundef %29) #10
  br label %disable_ahb_clk.sink.split

disable_ahb_clk.sink.split:                       ; preds = %disable_per_clk, %if.end.i73.disable_ahb_clk.sink.split_crit_edge
  %.sink91 = phi ptr [ %29, %disable_per_clk ], [ %17, %if.end.i73.disable_ahb_clk.sink.split_crit_edge ]
  %err.2.ph = phi i32 [ %err.1, %disable_per_clk ], [ %call1.i71, %if.end.i73.disable_ahb_clk.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink91) #10
  br label %disable_ahb_clk

disable_ahb_clk:                                  ; preds = %disable_ahb_clk.sink.split, %if.end13.disable_ahb_clk_crit_edge
  %err.2 = phi i32 [ %call.i69, %if.end13.disable_ahb_clk_crit_edge ], [ %err.2.ph, %disable_ahb_clk.sink.split ]
  %30 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %31) #10
  br label %remove_pm_qos_request.sink.split

remove_pm_qos_request.sink.split:                 ; preds = %disable_ahb_clk, %if.end.i.remove_pm_qos_request.sink.split_crit_edge
  %.sink92 = phi ptr [ %31, %disable_ahb_clk ], [ %15, %if.end.i.remove_pm_qos_request.sink.split_crit_edge ]
  %err.3.ph = phi i32 [ %err.2, %disable_ahb_clk ], [ %call1.i, %if.end.i.remove_pm_qos_request.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink92) #10
  br label %remove_pm_qos_request

remove_pm_qos_request:                            ; preds = %remove_pm_qos_request.sink.split, %if.end9.remove_pm_qos_request_crit_edge
  %err.3 = phi i32 [ %call.i, %if.end9.remove_pm_qos_request_crit_edge ], [ %err.3.ph, %remove_pm_qos_request.sink.split ]
  %32 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %socdata, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %and38 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %remove_pm_qos_request.cleanup_crit_edge, label %if.then40

remove_pm_qos_request.cleanup_crit_edge:          ; preds = %remove_pm_qos_request
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %remove_pm_qos_request
  call void @__sanitizer_cov_trace_pc() #12
  %pm_qos_req41 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 12
  tail call void @cpu_latency_qos_remove_request(ptr noundef %pm_qos_req41) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %remove_pm_qos_request.cleanup_crit_edge, %if.then29, %if.end26.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.then29 ], [ 0, %if.end26.cleanup_crit_edge ], [ %err.3, %if.then40 ], [ %err.3, %remove_pm_qos_request.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_timer_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_set_cd_wake(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_runtime_resume_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159}
!llvm.module.flags = !{!161, !162, !163, !164, !165, !166, !167, !168}
!llvm.ident = !{!169}

!0 = !{ptr @__initcall__kmod_sdhci_esdhc_imx__298_1924_sdhci_esdhc_imx_driver_init6, !1, !"__initcall__kmod_sdhci_esdhc_imx__298_1924_sdhci_esdhc_imx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1924, i32 1}
!2 = !{ptr @__exitcall_sdhci_esdhc_imx_driver_exit, !1, !"__exitcall_sdhci_esdhc_imx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description299, !4, !"__UNIQUE_ID_description299", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1926, i32 1}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1927, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1928, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1915, i32 11}
!12 = !{ptr @sdhci_esdhc_imx_driver, !13, !"sdhci_esdhc_imx_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1913, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1607, i32 47}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1613, i32 47}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1619, i32 47}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1639, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sdhci_esdhc_imx_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sdhci_esdhc_imx_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sdhci_esdhc_imx_pdata, !29, !"sdhci_esdhc_imx_pdata", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1350, i32 38}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1097, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @esdhc_executing_tuning.__UNIQUE_ID_ddebug296, !31, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!35 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1042, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @esdhc_prepare_tuning._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @esdhc_prepare_tuning._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1050, i32 2}
!44 = !{ptr @esdhc_prepare_tuning.__UNIQUE_ID_ddebug295, !43, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!45 = !{ptr @sdhci_esdhc_ops, !46, !"sdhci_esdhc_ops", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1330, i32 25}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 426, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @esdhc_wait_for_card_clock_gate_off._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @esdhc_wait_for_card_clock_gate_off._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @esdhc_imx25_data, !53, !"esdhc_imx25_data", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 238, i32 36}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 949, i32 2}
!56 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @esdhc_pltfm_set_clock.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 965, i32 3}
!60 = !{ptr @esdhc_pltfm_set_clock._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @esdhc_pltfm_set_clock._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @esdhc_imx53_data, !63, !"esdhc_imx53_data", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 250, i32 36}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1194, i32 3}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @esdhc_set_strobe_dll._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @esdhc_set_strobe_dll._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1222, i32 5}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @esdhc_reset_tuning._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @esdhc_reset_tuning._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1123, i32 2}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @esdhc_change_pinstate.__UNIQUE_ID_ddebug297, !75, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 397, i32 6}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 398, i32 6}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 399, i32 6}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 400, i32 6}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 401, i32 6}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 402, i32 6}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 403, i32 6}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 406, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @esdhc_dump_debug_regs._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @esdhc_dump_debug_regs._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 410, i32 3}
!99 = !{ptr @esdhc_dump_debug_regs._entry.37, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @esdhc_dump_debug_regs._entry_ptr.39, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @esdhc_cqhci_ops, !102, !"esdhc_cqhci_ops", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1527, i32 36}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1488, i32 4}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @esdhc_cqe_enable._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @esdhc_cqe_enable._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1515, i32 3}
!110 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @esdhc_cqe_enable._entry.42, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @esdhc_cqe_enable._entry_ptr.45, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1542, i32 26}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1550, i32 32}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1553, i32 27}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1554, i32 27}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1557, i32 27}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1559, i32 27}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1562, i32 31}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1569, i32 7}
!129 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1571, i32 7}
!131 = !{ptr @imx_esdhc_dt_ids, !132, !"imx_esdhc_dt_ids", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 347, i32 34}
!133 = !{ptr @esdhc_imx35_data, !134, !"esdhc_imx35_data", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 242, i32 36}
!135 = !{ptr @esdhc_imx51_data, !136, !"esdhc_imx51_data", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 246, i32 36}
!137 = !{ptr @usdhc_imx6sx_data, !138, !"usdhc_imx6sx_data", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 273, i32 36}
!139 = !{ptr @usdhc_imx6sl_data, !140, !"usdhc_imx6sl_data", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 259, i32 36}
!141 = !{ptr @usdhc_imx6sll_data, !142, !"usdhc_imx6sll_data", i1 false, i1 false}
!142 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 266, i32 36}
!143 = !{ptr @usdhc_imx6q_data, !144, !"usdhc_imx6q_data", i1 false, i1 false}
!144 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 254, i32 36}
!145 = !{ptr @usdhc_imx6ull_data, !146, !"usdhc_imx6ull_data", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 280, i32 36}
!147 = !{ptr @usdhc_imx7d_data, !148, !"usdhc_imx7d_data", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 287, i32 36}
!149 = !{ptr @usdhc_imx7ulp_data, !150, !"usdhc_imx7ulp_data", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 302, i32 30}
!151 = !{ptr @usdhc_imx8qxp_data, !152, !"usdhc_imx8qxp_data", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 312, i32 30}
!153 = !{ptr @usdhc_imx8mm_data, !154, !"usdhc_imx8mm_data", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 320, i32 30}
!155 = !{ptr @usdhc_imxrt1050_data, !156, !"usdhc_imxrt1050_data", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 308, i32 30}
!157 = !{ptr @usdhc_s32g2_data, !158, !"usdhc_s32g2_data", i1 false, i1 false}
!158 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 295, i32 30}
!159 = !{ptr @sdhci_esdhc_pmops, !160, !"sdhci_esdhc_pmops", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/sdhci-esdhc-imx.c", i32 1907, i32 32}
!161 = !{i32 1, !"wchar_size", i32 2}
!162 = !{i32 1, !"min_enum_size", i32 4}
!163 = !{i32 8, !"branch-target-enforcement", i32 0}
!164 = !{i32 8, !"sign-return-address", i32 0}
!165 = !{i32 8, !"sign-return-address-all", i32 0}
!166 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!167 = !{i32 7, !"uwtable", i32 1}
!168 = !{i32 7, !"frame-pointer", i32 2}
!169 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!170 = !{i64 2155197344}
!171 = !{i64 786725}
!172 = !{i64 2155197742}
!173 = !{i64 2155198140}
!174 = !{i64 787143}
!175 = !{i64 2155199722}
!176 = !{i64 2148505178}
!177 = !{i64 991778, i64 991803, i64 991825, i64 991841, i64 991853, i64 991873, i64 991897, i64 991913, i64 991925}
!178 = !{i64 2148505366}
!179 = !{i64 2154952744}
!180 = !{i64 2154937621}
!181 = !{i64 2154938549}
!182 = !{i64 2155158392}
!183 = !{i64 2155158633}
!184 = !{i64 2148253882, i64 2148253887, i64 2148253900, i64 2148253944, i64 2148253978, i64 2148253999}
!185 = !{i64 2155161897}
!186 = !{i8 0, i8 2}
!187 = !{i64 2155162136}
!188 = !{i64 2155182281}
!189 = !{i64 2155183467}
!190 = !{i64 2155184394}
!191 = !{i64 2155185565}
!192 = !{i64 2155186532}
!193 = !{i64 2155186797}
!194 = !{i64 2155187557}
!195 = !{i64 2155187787}
!196 = !{i64 2155188553}
!197 = !{i64 2155188816}
!198 = !{i64 2155189574}
!199 = !{i64 2155189805}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 786923}
!202 = !{i64 2155150975}
!203 = !{i64 2155151211}
!204 = !{i64 2155153746}
!205 = !{i64 2155153997}
!206 = !{i64 2155154400}
!207 = !{i64 2155157893}
!208 = !{i64 2154953327}
!209 = !{!"branch_weights", i32 -480270031, i32 1911165, i32 1910210, i32 1909255, i32 1908302, i32 1907348}
!210 = !{i64 2154954155}
!211 = !{i64 2155118463}
!212 = !{!"branch_weights", i32 -294967296, i32 2002000, i32 2001000, i32 2000000}
!213 = !{i64 2155122624}
!214 = !{i64 2155123221}
!215 = !{i64 2155123802}
!216 = !{i64 2155124386}
!217 = !{i64 786305}
!218 = !{i64 2155124913}
!219 = !{i64 2155125403}
!220 = !{i64 2155133758}
!221 = !{i64 2155134024}
!222 = !{!"branch_weights", i32 2000000, i32 2001, i32 2000, i32 2000000}
!223 = !{i64 2155119258}
!224 = !{i64 2155119485}
!225 = !{i64 2155119892}
!226 = !{!"branch_weights", i32 1, i32 4001}
!227 = !{i64 2155120835}
!228 = !{i64 2155121063}
!229 = !{i64 2155121464}
!230 = !{i64 2155121859}
!231 = !{i64 2155125907}
!232 = !{i64 2155126157}
!233 = !{i64 2154945368}
!234 = !{i64 2154945862}
!235 = !{i64 2155126859}
!236 = !{i64 2155127109}
!237 = !{i64 2155127879}
!238 = !{i64 2155128378}
!239 = !{i64 2155128691}
!240 = !{i64 2155129081}
!241 = !{i64 2155129923}
!242 = !{i64 2155130151}
!243 = !{i64 2155130821}
!244 = !{i64 2155131064}
!245 = !{i64 2155131734}
!246 = !{i64 2154917120}
!247 = !{i64 2154915210}
!248 = !{i64 786528}
!249 = !{i64 2155132007}
!250 = !{i64 2155134574}
!251 = !{i64 2155135088}
!252 = !{i64 2155135337}
!253 = !{i64 2155136243}
!254 = !{i64 2155136486}
!255 = !{i64 2155137201}
!256 = !{i64 2155137529}
!257 = !{i64 2155138298}
!258 = !{i64 2155138519}
!259 = !{i64 2154915968}
!260 = !{i64 2154913998}
!261 = !{i64 2155144504}
!262 = !{i64 2155144998}
!263 = !{i64 2155147307}
!264 = !{i64 2155147548}
!265 = !{i64 2155148257}
!266 = !{i64 2155180099}
!267 = !{i64 2155180349}
!268 = !{i64 2155180752}
!269 = !{i64 2155181146}
!270 = !{i64 2155181558}
!271 = !{i64 2155165782}
!272 = !{i64 2155166715}
!273 = !{i64 2155166977}
!274 = !{i64 2155167388}
!275 = !{i64 2155167803}
!276 = !{i64 2155169632}
!277 = !{i64 2155170126}
!278 = !{i64 2155172927}
!279 = !{i64 2155173169}
!280 = !{i64 2155173568}
!281 = !{i64 2155174320}
!282 = !{i64 2155174562}
!283 = !{i64 2155176365}
!284 = !{i64 2155176859}
!285 = !{i64 2155179187}
!286 = !{i64 2155179420}
!287 = !{i64 2154943492}
!288 = !{i64 2154916672}
!289 = !{i64 2154914604}
!290 = !{i64 786105}
