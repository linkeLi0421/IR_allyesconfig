; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-of-esdhc.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-of-esdhc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.esdhc_clk_fixup = type { i32, [11 x i32] }
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
%struct.sdhci_esdhc = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32 }
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_sdhci_of_esdhc__274_1519_sdhci_esdhc_driver_init6 = internal global ptr @sdhci_esdhc_driver_init, section ".initcall6.init", align 4
@sdhci_esdhc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_esdhc_probe, ptr @sdhci_pltfm_unregister, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_esdhc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @esdhc_of_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_esdhc_driver_exit = internal global ptr @sdhci_esdhc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description275 = internal constant [67 x i8] c"sdhci_of_esdhc.description=SDHCI OF driver for Freescale MPC eSDHC\00", section ".modinfo", align 1
@__UNIQUE_ID_author276 = internal constant [99 x i8] c"sdhci_of_esdhc.author=Xiaobo Xie <X.Xie@freescale.com>, Anton Vorontsov <avorontsov@ru.mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [52 x i8] c"sdhci_of_esdhc.file=drivers/mmc/host/sdhci-of-esdhc\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [30 x i8] c"sdhci_of_esdhc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdhci-esdhc\00", [20 x i8] zeroinitializer }, align 32
@sdhci_esdhc_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1021a_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1046a_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1012a_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,p1010-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @p1010_esdhc_clk }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8379-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc8536-esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,esdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@esdhc_of_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @esdhc_of_suspend, ptr @esdhc_of_resume, ptr @esdhc_of_suspend, ptr @esdhc_of_resume, ptr @esdhc_of_suspend, ptr @esdhc_of_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@sdhci_esdhc_le_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_esdhc_le_ops, i32 622084228, i32 0 }, [20 x i8] zeroinitializer }, align 32
@sdhci_esdhc_be_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_esdhc_be_ops, i32 622084228, i32 0 }, [20 x i8] zeroinitializer }, align 32
@soc_tuning_erratum_type1 = internal global { [5 x %struct.soc_device_attribute], [52 x i8] } { [5 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.38, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.39, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [52 x i8] zeroinitializer }, align 32
@soc_tuning_erratum_type2 = internal global { [7 x %struct.soc_device_attribute], [60 x i8] } { [7 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.41, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.42, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.43, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.44, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.46, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,p2020-esdhc\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,p5040-esdhc\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,p5020-esdhc\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,p4080-esdhc\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,p1020-esdhc\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,t1040-esdhc\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,ls1021a-esdhc\00", [46 x i8] zeroinitializer }, align 32
@sdhci_esdhc_le_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @esdhc_le_readl, ptr @esdhc_le_readw, ptr @esdhc_le_readb, ptr @esdhc_le_writel, ptr @esdhc_le_writew, ptr @esdhc_le_writeb, ptr @esdhc_of_set_clock, ptr null, ptr @esdhc_irq, ptr null, ptr @esdhc_of_enable_dma, ptr @esdhc_of_get_max_clock, ptr @esdhc_of_get_min_clock, ptr null, ptr null, ptr null, ptr @esdhc_pltfm_set_bus_width, ptr null, ptr null, ptr @esdhc_reset, ptr null, ptr @esdhc_set_uhs_signaling, ptr null, ptr @esdhc_of_adma_workaround, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@esdhc_of_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: using unsupported clock division.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esdhc_of_set_clock\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mmc/host/sdhci-of-esdhc.c\00", [62 x i8] zeroinitializer }, align 32
@esdhc_of_set_clock._entry_ptr = internal global ptr @esdhc_of_set_clock._entry, section ".printk_index", align 4
@esdhc_of_set_clock.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.10, ptr @.str.11, ptr @.str.13, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sdhci_of_esdhc\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"desired SD clock: %d, actual: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@esdhc_of_set_clock._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", [56 x i8] zeroinitializer }, align 32
@esdhc_of_set_clock._entry_ptr.16 = internal global ptr @esdhc_of_set_clock._entry.14, section ".printk_index", align 4
@esdhc_of_set_clock._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.11, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: timeout for delay chain lock.\0A\00", [59 x i8] zeroinitializer }, align 32
@esdhc_of_set_clock._entry_ptr.19 = internal global ptr @esdhc_of_set_clock._entry.17, section ".printk_index", align 4
@esdhc_clock_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.11, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"esdhc_clock_enable\00", [45 x i8] zeroinitializer }, align 32
@esdhc_clock_enable._entry_ptr = internal global ptr @esdhc_clock_enable._entry, section ".printk_index", align 4
@esdhc_flush_async_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.11, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: flushing asynchronous FIFO timeout.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"esdhc_flush_async_fifo\00", [41 x i8] zeroinitializer }, align 32
@esdhc_flush_async_fifo._entry_ptr = internal global ptr @esdhc_flush_async_fifo._entry, section ".printk_index", align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,ls1043a-esdhc\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,ls1046a-esdhc\00", [46 x i8] zeroinitializer }, align 32
@sdhci_esdhc_be_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr @esdhc_be_readl, ptr @esdhc_be_readw, ptr @esdhc_be_readb, ptr @esdhc_be_writel, ptr @esdhc_be_writew, ptr @esdhc_be_writeb, ptr @esdhc_of_set_clock, ptr null, ptr @esdhc_irq, ptr null, ptr @esdhc_of_enable_dma, ptr @esdhc_of_get_max_clock, ptr @esdhc_of_get_min_clock, ptr null, ptr null, ptr null, ptr @esdhc_pltfm_set_bus_width, ptr null, ptr null, ptr @esdhc_reset, ptr null, ptr @esdhc_set_uhs_signaling, ptr null, ptr @esdhc_of_adma_workaround, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@scfg_device_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,t1040-scfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1012a-scfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-scfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@esdhc_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.11, i32 1128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: Hold on to use fixed sampling clock. Try SW tuning!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"esdhc_execute_tuning\00", [43 x i8] zeroinitializer }, align 32
@esdhc_execute_tuning._entry_ptr = internal global ptr @esdhc_execute_tuning._entry, section ".printk_index", align 4
@esdhc_execute_tuning._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.11, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016%s: Hold on to use fixed sampling clock. Try tuning with reduced clock!\0A\00", [53 x i8] zeroinitializer }, align 32
@esdhc_execute_tuning._entry_ptr.29 = internal global ptr @esdhc_execute_tuning._entry.27, section ".printk_index", align 4
@soc_incorrect_hostver = internal global { [3 x %struct.soc_device_attribute], [44 x i8] } { [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.32, ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.32, ptr @.str.34, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@soc_fixup_sdhc_clkdivs = internal global { [4 x %struct.soc_device_attribute], [48 x i8] } { [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.35, ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.35, ptr @.str.34, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.36, ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [48 x i8] zeroinitializer }, align 32
@soc_unreliable_pulse_detection = internal global { [4 x %struct.soc_device_attribute], [48 x i8] } { [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.35, ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.35, ptr @.str.34, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.36, ptr @.str.33, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,ls1028a-esdhc\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,ls1088a-esdhc\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QorIQ T4240\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LX2160A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1028A\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QorIQ T1023\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QorIQ T1040\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"QorIQ T2080\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1021A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1012A\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1043A\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1046A\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS1080A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LS2080A\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"QorIQ LA1575A\00", [18 x i8] zeroinitializer }, align 32
@ls1046a_esdhc_clk = internal constant { %struct.esdhc_clk_fixup, [48 x i8] } { %struct.esdhc_clk_fixup { i32 25000000, [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 167000000, i32 0, i32 0, i32 167000000, i32 0] }, [48 x i8] zeroinitializer }, align 32
@ls1012a_esdhc_clk = internal constant { %struct.esdhc_clk_fixup, [48 x i8] } { %struct.esdhc_clk_fixup { i32 25000000, [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 125000000, i32 0, i32 0, i32 125000000, i32 0] }, [48 x i8] zeroinitializer }, align 32
@ls1021a_esdhc_clk = internal constant { { i32, <{ i32, i32, i32, [8 x i32] }> }, [48 x i8] } { { i32, <{ i32, i32, i32, [8 x i32] }> } { i32 25000000, <{ i32, i32, i32, [8 x i32] }> <{ i32 0, i32 46500000, i32 46500000, [8 x i32] zeroinitializer }> }, [48 x i8] zeroinitializer }, align 32
@p1010_esdhc_clk = internal constant { { i32, <{ i32, i32, i32, [8 x i32] }> }, [48 x i8] } { { i32, <{ i32, i32, i32, [8 x i32] }> } { i32 20000000, <{ i32, i32, i32, [8 x i32] }> <{ i32 20000000, i32 42000000, i32 40000000, [8 x i32] zeroinitializer }> }, [48 x i8] zeroinitializer }, align 32
@esdhc_proctl = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 40, i64 41]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 14]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 40, i64 41]
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"sdhci_esdhc_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1508, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1510, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"sdhci_esdhc_of_match\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 64, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"esdhc_of_dev_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1259, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1428, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"sdhci_esdhc_le_pdata\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1309, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"sdhci_esdhc_be_pdata\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1299, i32 38 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"soc_tuning_erratum_type1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 932, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant [25 x i8] c"soc_tuning_erratum_type2\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 940, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1466, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1471, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1472, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1473, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1474, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1475, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1478, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"sdhci_esdhc_le_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1281, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 697, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 705, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 731, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 764, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 610, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 636, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 531, i32 44 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 532, i32 44 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"sdhci_esdhc_be_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1263, i32 31 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"scfg_device_ids\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 867, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1127, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1147, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant [22 x i8] c"soc_incorrect_hostver\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1316, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant [23 x i8] c"soc_fixup_sdhc_clkdivs\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1322, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant [31 x i8] c"soc_unreliable_pulse_detection\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1329, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1388, i32 35 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1389, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1317, i32 14 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1317, i32 41 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1318, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1323, i32 14 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1325, i32 14 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 933, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 934, i32 14 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 935, i32 14 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 936, i32 14 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 941, i32 14 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 942, i32 14 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 943, i32 14 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 944, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 945, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 946, i32 14 }
@___asan_gen_.237 = private unnamed_addr constant [18 x i8] c"ls1046a_esdhc_clk\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 45, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"ls1012a_esdhc_clk\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 51, i32 37 }
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"ls1021a_esdhc_clk\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 39, i32 37 }
@___asan_gen_.246 = private unnamed_addr constant [16 x i8] c"p1010_esdhc_clk\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 57, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant [13 x i8] c"esdhc_proctl\00", align 1
@___asan_gen_.250 = private constant [37 x i8] c"../drivers/mmc/host/sdhci-of-esdhc.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 1232, i32 12 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author276, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_sdhci_esdhc_driver_exit, ptr @__initcall__kmod_sdhci_of_esdhc__274_1519_sdhci_esdhc_driver_init6, ptr @esdhc_clock_enable._entry, ptr @esdhc_clock_enable._entry_ptr, ptr @esdhc_execute_tuning._entry, ptr @esdhc_execute_tuning._entry.27, ptr @esdhc_execute_tuning._entry_ptr, ptr @esdhc_execute_tuning._entry_ptr.29, ptr @esdhc_flush_async_fifo._entry, ptr @esdhc_flush_async_fifo._entry_ptr, ptr @esdhc_of_set_clock._entry, ptr @esdhc_of_set_clock._entry.14, ptr @esdhc_of_set_clock._entry.17, ptr @esdhc_of_set_clock._entry_ptr, ptr @esdhc_of_set_clock._entry_ptr.16, ptr @esdhc_of_set_clock._entry_ptr.19, ptr @sdhci_esdhc_driver_exit, ptr @sdhci_esdhc_driver, ptr @.str, ptr @sdhci_esdhc_of_match, ptr @esdhc_of_dev_pm_ops, ptr @.str.1, ptr @sdhci_esdhc_le_pdata, ptr @sdhci_esdhc_be_pdata, ptr @soc_tuning_erratum_type1, ptr @soc_tuning_erratum_type2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sdhci_esdhc_le_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sdhci_esdhc_be_ops, ptr @scfg_device_ids, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @soc_incorrect_hostver, ptr @soc_fixup_sdhc_clkdivs, ptr @soc_unreliable_pulse_detection, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @ls1046a_esdhc_clk, ptr @ls1012a_esdhc_clk, ptr @ls1021a_esdhc_clk, ptr @p1010_esdhc_clk, ptr @esdhc_proctl], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_of_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_le_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_be_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tuning_erratum_type1 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_tuning_erratum_type2 to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_le_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_of_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_of_set_clock._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_of_set_clock._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_clock_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_flush_async_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_esdhc_be_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scfg_device_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_execute_tuning._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_incorrect_hostver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_fixup_sdhc_clkdivs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_unreliable_pulse_detection to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1046a_esdhc_clk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1012a_esdhc_clk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1021a_esdhc_clk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p1010_esdhc_clk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esdhc_proctl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_esdhc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_esdhc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_esdhc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_esdhc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i, null
  %sdhci_esdhc_be_pdata.sdhci_esdhc_le_pdata = select i1 %tobool.i.not, ptr @sdhci_esdhc_be_pdata, ptr @sdhci_esdhc_le_pdata
  %call2 = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull %sdhci_esdhc_be_pdata.sdhci_esdhc_le_pdata, i32 noundef 24) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %entry
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 11, i32 10
  %3 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @esdhc_signal_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 11, i32 12
  %4 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @esdhc_execute_tuning, ptr %execute_tuning, align 4
  %hs400_prepare_ddr = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 11, i32 15
  %5 = ptrtoint ptr %hs400_prepare_ddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @esdhc_hs400_prepare_ddr, ptr %hs400_prepare_ddr, align 4
  %tuning_delay = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 75
  %6 = ptrtoint ptr %tuning_delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tuning_delay, align 32
  %private.i86.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 21
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 9
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i, !prof !147

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i16 %10(ptr noundef %call2, i32 noundef 254) #7
  %extract.t132 = trunc i16 %call.i.i to i8
  %extract135 = lshr i16 %call.i.i, 8
  %extract.t136 = trunc i16 %extract135 to i8
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 254
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #7, !srcloc !148
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %extract.t131 = trunc i16 %14 to i8
  %extract133 = lshr i16 %14, 8
  %extract.t134 = trunc i16 %extract133 to i8
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %.sink130.off0 = phi i8 [ %extract.t131, %if.else.i.i ], [ %extract.t132, %if.then.i.i ]
  %.sink130.off8 = phi i8 [ %extract.t134, %if.else.i.i ], [ %extract.t136, %if.then.i.i ]
  %15 = ptrtoint ptr %private.i86.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink130.off8, ptr %private.i86.i, align 4
  %spec_ver.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 1
  %16 = ptrtoint ptr %spec_ver.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink130.off0, ptr %spec_ver.i, align 1
  %call7.i = tail call ptr @soc_device_match(ptr noundef nonnull @soc_incorrect_hostver) #7
  %tobool.not.i = icmp ne ptr %call7.i, null
  %.sink.i = zext i1 %tobool.not.i to i8
  %17 = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %.sink.i, ptr %17, align 2
  %call9.i = tail call ptr @soc_device_match(ptr noundef nonnull @soc_fixup_sdhc_clkdivs) #7
  %tobool10.not.i = icmp ne ptr %call9.i, null
  %.sink104.i = zext i1 %tobool10.not.i to i8
  %19 = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 3
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink104.i, ptr %19, align 1
  %call15.i = tail call ptr @soc_device_match(ptr noundef nonnull @soc_unreliable_pulse_detection) #7
  %tobool16.not.i = icmp ne ptr %call15.i, null
  %.sink105.i = zext i1 %tobool16.not.i to i8
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 22
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink105.i, ptr %21, align 4
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call21.i = tail call ptr @of_match_node(ptr noundef nonnull @sdhci_esdhc_of_match, ptr noundef %24) #7
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %sdhci_readw.exit.i.if.end24.i_crit_edge, label %if.then23.i

sdhci_readw.exit.i.if.end24.i_crit_edge:          ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then23.i:                                      ; preds = %sdhci_readw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call21.i, i32 0, i32 3
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %clk_fixup.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 12
  %27 = ptrtoint ptr %clk_fixup.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %clk_fixup.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %sdhci_readw.exit.i.if.end24.i_crit_edge
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call27.i = tail call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end24.i.if.end30.i_crit_edge, label %if.then29.i

if.end24.i.if.end30.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %quirk_delay_before_data_reset.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 1, i32 11, i32 23
  %30 = ptrtoint ptr %quirk_delay_before_data_reset.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %quirk_delay_before_data_reset.i, align 4
  %quirk_trans_complete_erratum.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 9
  %31 = ptrtoint ptr %quirk_trans_complete_erratum.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %quirk_trans_complete_erratum.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end24.i.if.end30.i_crit_edge
  %call31.i = tail call ptr @of_clk_get(ptr noundef %29, i32 noundef 0) #7
  %cmp.i.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end30.i.if.end47.i_crit_edge, label %if.then33.i

if.end30.i.if.end47.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then33.i:                                      ; preds = %if.end30.i
  %call34.i = tail call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %lor.lhs.false.i, label %if.then33.i.if.then41.i_crit_edge

if.then33.i.if.then41.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

lor.lhs.false.i:                                  ; preds = %if.then33.i
  %call36.i = tail call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %lor.lhs.false38.i, label %lor.lhs.false.i.if.then41.i_crit_edge

lor.lhs.false.i.if.then41.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

lor.lhs.false38.i:                                ; preds = %lor.lhs.false.i
  %call39.i = tail call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.else43.i, label %lor.lhs.false38.i.if.then41.i_crit_edge

lor.lhs.false38.i.if.then41.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41.i

if.then41.i:                                      ; preds = %lor.lhs.false38.i.if.then41.i_crit_edge, %lor.lhs.false.i.if.then41.i_crit_edge, %if.then33.i.if.then41.i_crit_edge
  %call42.i = tail call i32 @clk_get_rate(ptr noundef %call31.i) #7
  %div85.i = lshr i32 %call42.i, 1
  br label %if.end46.i

if.else43.i:                                      ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i = tail call i32 @clk_get_rate(ptr noundef %call31.i) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else43.i, %if.then41.i
  %call44.sink.i = phi i32 [ %call44.i, %if.else43.i ], [ %div85.i, %if.then41.i ]
  %peripheral_clock45.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 11
  %32 = ptrtoint ptr %peripheral_clock45.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call44.sink.i, ptr %peripheral_clock45.i, align 4
  tail call void @clk_put(ptr noundef %call31.i) #7
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end46.i, %if.end30.i.if.end47.i_crit_edge
  tail call fastcc void @esdhc_clock_enable(ptr noundef %call2, i1 noundef zeroext false) #7
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i88.i = icmp eq ptr %36, null
  br i1 %tobool.not.i88.i, label %if.else.i93.i, label %if.then.i90.i, !prof !147

if.then.i90.i:                                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i89.i = tail call i32 %36(ptr noundef %call2, i32 noundef 1036) #7
  br label %sdhci_readl.exit.i

if.else.i93.i:                                    ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i91.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 4
  %37 = ptrtoint ptr %ioaddr.i91.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i91.i, align 16
  %add.ptr.i92.i = getelementptr i8, ptr %38, i32 1036
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #7, !srcloc !150
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i93.i, %if.then.i90.i
  %retval.0.i94.i = phi i32 [ %call.i89.i, %if.then.i90.i ], [ %40, %if.else.i93.i ]
  %peripheral_clock49.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 11
  %41 = ptrtoint ptr %peripheral_clock49.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %peripheral_clock49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool50.not.i = icmp eq i32 %42, 0
  %and53.i = and i32 %retval.0.i94.i, -524289
  %masksel.i = select i1 %tobool50.not.i, i32 0, i32 524288
  %val.0.i = or i32 %masksel.i, %and53.i
  %43 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i96.i = icmp eq ptr %46, null
  br i1 %tobool.not.i96.i, label %do.body.i.i, label %if.then.i97.i, !prof !147

if.then.i97.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %46(ptr noundef %call2, i32 noundef %val.0.i, i32 noundef 1036) #7
  br label %esdhc_init.exit

do.body.i.i:                                      ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #7
  %ioaddr.i98.i = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 4
  %48 = ptrtoint ptr %ioaddr.i98.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr.i98.i, align 16
  %add.ptr.i99.i = getelementptr i8, ptr %49, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %47) #7, !srcloc !153
  br label %esdhc_init.exit

esdhc_init.exit:                                  ; preds = %do.body.i.i, %if.then.i97.i
  tail call fastcc void @esdhc_clock_enable(ptr noundef %call2, i1 noundef zeroext true) #7
  tail call void @sdhci_get_property(ptr noundef %pdev) #7
  %call11 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_tuning_erratum_type1) #7
  %tobool.not = icmp ne ptr %call11, null
  %spec.select = zext i1 %tobool.not to i8
  %50 = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %spec.select, ptr %50, align 1
  %call16 = tail call ptr @soc_device_match(ptr noundef nonnull @soc_tuning_erratum_type2) #7
  %tobool17.not = icmp ne ptr %call16, null
  %.sink123 = zext i1 %tobool17.not to i8
  %52 = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 6
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink123, ptr %52, align 2
  %54 = ptrtoint ptr %private.i86.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %private.i86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %55)
  %cmp = icmp eq i8 %55, 18
  br i1 %cmp, label %if.then23, label %esdhc_init.exit.if.end24_crit_edge

esdhc_init.exit.if.end24_crit_edge:               ; preds = %esdhc_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %esdhc_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %quirks2 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 2
  %56 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %quirks2, align 8
  %or = or i32 %57, 2
  store i32 %or, ptr %quirks2, align 8
  %58 = ptrtoint ptr %private.i86.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %.pr = load i8, ptr %private.i86.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %esdhc_init.exit.if.end24_crit_edge
  %59 = phi i8 [ %.pr, %if.then23 ], [ %55, %esdhc_init.exit.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %59)
  %cmp27 = icmp ugt i8 %59, 18
  br i1 %cmp27, label %if.then29, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %quirks = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %60 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %quirks, align 4
  %and = and i32 %61, -16385
  store i32 %and, ptr %quirks, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end24.if.end30_crit_edge
  %call31 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #7
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.if.end38_crit_edge, label %if.then33

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %quirks34 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %62 = ptrtoint ptr %quirks34 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %quirks34, align 4
  %or37 = or i32 %63, 5120
  store i32 %or37, ptr %quirks34, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end30.if.end38_crit_edge
  %call39 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %if.end38.if.then52_crit_edge

if.end38.if.then52_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

lor.lhs.false:                                    ; preds = %if.end38
  %call41 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false.if.then52_crit_edge

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %call44 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false46, label %lor.lhs.false43.if.then52_crit_edge

lor.lhs.false43.if.then52_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

lor.lhs.false46:                                  ; preds = %lor.lhs.false43
  %call47 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false46.if.then52_crit_edge

lor.lhs.false46.if.then52_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

lor.lhs.false49:                                  ; preds = %lor.lhs.false46
  %call50 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false49.if.end55_crit_edge, label %lor.lhs.false49.if.then52_crit_edge

lor.lhs.false49.if.then52_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

lor.lhs.false49.if.end55_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then52:                                        ; preds = %lor.lhs.false49.if.then52_crit_edge, %lor.lhs.false46.if.then52_crit_edge, %lor.lhs.false43.if.then52_crit_edge, %lor.lhs.false.if.then52_crit_edge, %if.end38.if.then52_crit_edge
  %quirks53 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %64 = ptrtoint ptr %quirks53 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %quirks53, align 4
  %and54 = and i32 %65, -32769
  store i32 %and54, ptr %quirks53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %lor.lhs.false49.if.end55_crit_edge
  %call56 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end55.if.end61_crit_edge, label %if.then58

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %quirks59 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 1
  %66 = ptrtoint ptr %quirks59 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %quirks59, align 4
  %or60 = or i32 %67, 4096
  store i32 %or60, ptr %quirks59, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55.if.end61_crit_edge
  %quirk_ignore_data_inhibit = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i86.i, i32 0, i32 7
  %68 = ptrtoint ptr %quirk_ignore_data_inhibit to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %quirk_ignore_data_inhibit, align 1
  %call62 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end61.if.end68_crit_edge, label %if.then64

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %quirks265 = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 2
  %69 = ptrtoint ptr %quirks265 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %quirks265, align 8
  %or66 = or i32 %70, 32
  store i32 %or66, ptr %quirks265, align 8
  %71 = ptrtoint ptr %quirk_ignore_data_inhibit to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %quirk_ignore_data_inhibit, align 1
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end61.if.end68_crit_edge
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 10
  %72 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmc, align 8
  %call69 = tail call i32 @mmc_of_parse(ptr noundef %73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_crit_edge

if.end68.err_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end72:                                         ; preds = %if.end68
  %74 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmc, align 8
  %ocr_mask = getelementptr inbounds %struct.sdhci_host, ptr %call2, i32 0, i32 63
  %call74 = tail call i32 @mmc_of_parse_voltage(ptr noundef %75, ptr noundef %ocr_mask) #7
  %call75 = tail call i32 @sdhci_add_host(ptr noundef %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end72.cleanup_crit_edge, label %if.end72.err_crit_edge

if.end72.err_crit_edge:                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end72.err_crit_edge, %if.end68.err_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end68.err_crit_edge ], [ %call75, %if.end72.err_crit_edge ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end72.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %ret.0, %err ], [ 0, %if.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_pltfm_unregister(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_signal_voltage_switch(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %version = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 3
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %5(ptr noundef %private.i, i32 noundef 40) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %10 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %signal_voltage, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %sdhci_readl.exit.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

sdhci_readl.exit.cleanup_crit_edge:               ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %sdhci_readl.exit
  %and = and i32 %retval.0.i, -1025
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i35 = icmp eq ptr %16, null
  br i1 %tobool.not.i35, label %do.body.i, label %if.then.i36, !prof !147

if.then.i36:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %private.i, i32 noundef %and, i32 noundef 40) #7
  br label %cleanup

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %ioaddr.i37 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %ioaddr.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i37, align 16
  %add.ptr.i38 = getelementptr i8, ptr %19, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %17) #7, !srcloc !153
  br label %cleanup

sw.bb2:                                           ; preds = %sdhci_readl.exit
  %call.i39 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @scfg_device_ids, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i39, null
  br i1 %tobool.not, label %sw.bb2.if.else_crit_edge, label %if.end6

sw.bb2.if.else_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.end6:                                          ; preds = %sw.bb2
  %call5 = tail call ptr @of_iomap(ptr noundef nonnull %call.i39, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end6.if.else_crit_edge, label %if.then8

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then8:                                         ; preds = %if.end6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %call5, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -536870912) #7, !srcloc !153
  %or = or i32 %retval.0.i, 1024
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i, align 4
  %write_l.i41 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %write_l.i41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_l.i41, align 4
  %tobool.not.i42 = icmp eq ptr %23, null
  br i1 %tobool.not.i42, label %do.body.i46, label %if.then.i43, !prof !147

if.then.i43:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %23(ptr noundef %private.i, i32 noundef %or, i32 noundef 40) #7
  br label %sdhci_writel.exit47

do.body.i46:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i44 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %ioaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i44, align 16
  %add.ptr.i45 = getelementptr i8, ptr %26, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %24) #7, !srcloc !153
  br label %sdhci_writel.exit47

sdhci_writel.exit47:                              ; preds = %do.body.i46, %if.then.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147483647) #7, !srcloc !153
  tail call void @iounmap(ptr noundef nonnull %call5) #7
  br label %cleanup

if.else:                                          ; preds = %if.end6.if.else_crit_edge, %sw.bb2.if.else_crit_edge
  %or14 = or i32 %retval.0.i, 1024
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %write_l.i49 = getelementptr inbounds %struct.sdhci_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %write_l.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_l.i49, align 4
  %tobool.not.i50 = icmp eq ptr %35, null
  br i1 %tobool.not.i50, label %do.body.i54, label %if.then.i51, !prof !147

if.then.i51:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %35(ptr noundef %private.i, i32 noundef %or14, i32 noundef 40) #7
  br label %cleanup

do.body.i54:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or14) #7
  %ioaddr.i52 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %ioaddr.i52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i52, align 16
  %add.ptr.i53 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %36) #7, !srcloc !153
  br label %cleanup

cleanup:                                          ; preds = %do.body.i54, %if.then.i51, %sdhci_writel.exit47, %do.body.i, %if.then.i36, %sdhci_readl.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  %start_ptr.i = alloca i8, align 1
  %end_ptr.i = alloca i8, align 1
  %window_start = alloca i8, align 1
  %window_end = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %private.i141 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %window_start) #7
  %0 = ptrtoint ptr %window_start to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %window_start, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %window_end) #7
  %1 = ptrtoint ptr %window_end to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %window_end, align 1, !annotation !156
  %peripheral_clock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 1
  %2 = ptrtoint ptr %peripheral_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %peripheral_clock, align 4
  %div = udiv i32 %3, 3
  %clock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div)
  %cmp = icmp ugt i32 %5, %div
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @esdhc_of_set_clock(ptr noundef %private.i, i32 noundef %div)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %private.i, i1 noundef zeroext true)
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %write_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %write_b.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_b.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %private.i, i8 noundef zeroext 14, i32 noundef 46) #7
  br label %sdhci_writeb.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %11, i32 46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 14) #7, !srcloc !158
  br label %sdhci_writeb.exit

sdhci_writeb.exit:                                ; preds = %do.body.i, %if.then.i
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %and = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %quirk_limited_clk_division = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i141, i32 0, i32 3
  %ioaddr.i145 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %quirk_tuning_erratum_type2 = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i141, i32 0, i32 6
  %tuning_err = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 27, i32 0, i32 0, i32 4, i32 1
  %div_ratio = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 3
  %quirk_tuning_erratum_type1 = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i141, i32 0, i32 5
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %in_sw_tuning.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i141, i32 0, i32 10
  %max_clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %dev_name.exit172, %sdhci_writeb.exit
  %tobool55.not = phi i1 [ true, %dev_name.exit172 ], [ false, %sdhci_writeb.exit ]
  %14 = ptrtoint ptr %quirk_limited_clk_division to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %quirk_limited_clk_division, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  %brmerge = select i1 %tobool3.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %do.body.if.end7_crit_edge, label %if.then5

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clock, align 4
  tail call void @esdhc_of_set_clock(ptr noundef %private.i, i32 noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body.if.end7_crit_edge
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not.i143 = icmp eq ptr %21, null
  br i1 %tobool.not.i143, label %if.else.i, label %if.then.i144, !prof !147

if.then.i144:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %21(ptr noundef %private.i, i32 noundef 288) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i146 = getelementptr i8, ptr %23, i32 288
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #7, !srcloc !150
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i144
  %retval.0.i = phi i32 [ %call.i, %if.then.i144 ], [ %25, %if.else.i ]
  %and9 = and i32 %retval.0.i, -4
  %or = or i32 %and9, 2
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i148 = icmp eq ptr %29, null
  br i1 %tobool.not.i148, label %do.body.i152, label %if.then.i149, !prof !147

if.then.i149:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %29(ptr noundef %private.i, i32 noundef %or, i32 noundef 288) #7
  br label %sdhci_writel.exit

do.body.i152:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %31 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i151 = getelementptr i8, ptr %32, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %30) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i152, %if.then.i149
  %call10 = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sdhci_writel.exit.if.then79_crit_edge

sdhci_writel.exit.if.then79_crit_edge:            ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.end13:                                         ; preds = %sdhci_writel.exit
  %33 = ptrtoint ptr %quirk_tuning_erratum_type2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %quirk_tuning_erratum_type2, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool14.not = icmp eq i8 %34, 0
  br i1 %tobool14.not, label %if.end13.if.end27thread-pre-split_crit_edge, label %land.lhs.true15

if.end13.if.end27thread-pre-split_crit_edge:      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27thread-pre-split

land.lhs.true15:                                  ; preds = %if.end13
  %35 = ptrtoint ptr %tuning_err to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tuning_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool16.not = icmp eq i32 %36, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true15.if.end27_crit_edge

land.lhs.true15.if.end27_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then17:                                        ; preds = %land.lhs.true15
  call fastcc void @esdhc_tuning_window_ptr(ptr noundef %private.i, ptr noundef nonnull %window_start, ptr noundef nonnull %window_end)
  %37 = ptrtoint ptr %window_start to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %window_start, align 1
  %conv = zext i8 %38 to i32
  %39 = ptrtoint ptr %window_end to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %window_end, align 1
  %conv18 = zext i8 %40 to i32
  %sub = sub nsw i32 %conv, %conv18
  %41 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %42 = ptrtoint ptr %div_ratio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %div_ratio, align 4
  %mul = shl i32 %43, 2
  %add = or i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add)
  %cmp22 = icmp ugt i32 %41, %add
  br i1 %cmp22, label %if.end27.thread, label %if.then17.if.end27thread-pre-split_crit_edge

if.then17.if.end27thread-pre-split_crit_edge:     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27thread-pre-split

if.end27.thread:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %tuning_err to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -11, ptr %tuning_err, align 4
  br label %land.lhs.true31

if.end27thread-pre-split:                         ; preds = %if.then17.if.end27thread-pre-split_crit_edge, %if.end13.if.end27thread-pre-split_crit_edge
  %45 = ptrtoint ptr %tuning_err to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %tuning_err, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %land.lhs.true15.if.end27_crit_edge
  %46 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %36, %land.lhs.true15.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %46)
  %cmp29 = icmp eq i32 %46, -11
  br i1 %cmp29, label %if.end27.land.lhs.true31_crit_edge, label %if.end27.do.end77_crit_edge

if.end27.do.end77_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

if.end27.land.lhs.true31_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.end27.land.lhs.true31_crit_edge, %if.end27.thread
  %47 = ptrtoint ptr %quirk_tuning_erratum_type1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %quirk_tuning_erratum_type1, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool32.not = icmp eq i8 %48, 0
  br i1 %tobool32.not, label %lor.lhs.false, label %land.lhs.true31.if.then37_crit_edge

land.lhs.true31.if.then37_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

lor.lhs.false:                                    ; preds = %land.lhs.true31
  %49 = ptrtoint ptr %quirk_tuning_erratum_type2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %quirk_tuning_erratum_type2, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool35.not = icmp eq i8 %50, 0
  br i1 %tobool35.not, label %lor.lhs.false.if.then79_crit_edge, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then37

lor.lhs.false.if.then79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %land.lhs.true31.if.then37_crit_edge
  br i1 %tobool.not, label %if.then37.do.end_crit_edge, label %if.then39

if.then37.do.end_crit_edge:                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %or41 = or i32 %52, 8192
  store i32 %or41, ptr %flags, align 4
  br label %do.end

do.end:                                           ; preds = %if.then39, %if.then37.do.end_crit_edge
  %53 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i153 = icmp eq ptr %54, null
  br i1 %tobool.not.i153, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i154 = phi ptr [ %56, %if.end.i ], [ %54, %do.end.dev_name.exit_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i154) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_ptr.i) #7
  %57 = ptrtoint ptr %start_ptr.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -1, ptr %start_ptr.i, align 1, !annotation !156
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %end_ptr.i) #7
  %58 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %end_ptr.i, align 1, !annotation !156
  %59 = ptrtoint ptr %quirk_tuning_erratum_type1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %quirk_tuning_erratum_type1, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i155 = icmp eq i8 %60, 0
  br i1 %tobool.not.i155, label %if.end.i157, label %if.then.i156

if.then.i156:                                     ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %div_ratio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %div_ratio, align 4
  %63 = trunc i32 %62 to i8
  %conv.i = mul i8 %63, 5
  %64 = ptrtoint ptr %window_start to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i, ptr %window_start, align 1
  %conv4.i = mul i8 %63, 3
  br label %esdhc_prepare_sw_tuning.exit

if.end.i157:                                      ; preds = %dev_name.exit
  call fastcc void @esdhc_tuning_window_ptr(ptr noundef %private.i, ptr noundef nonnull %start_ptr.i, ptr noundef nonnull %end_ptr.i) #7
  tail call void @sdhci_reset(ptr noundef %private.i, i8 noundef zeroext 4) #7
  %65 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i, align 4
  %write_l.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %write_l.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_l.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %68, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i, !prof !147

if.then.i.i:                                      ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %68(ptr noundef %private.i, i32 noundef -1, i32 noundef 48) #7
  br label %sdhci_writel.exit.i

do.body.i.i:                                      ; preds = %if.end.i157
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !153
  br label %sdhci_writel.exit.i

sdhci_writel.exit.i:                              ; preds = %do.body.i.i, %if.then.i.i
  %71 = ptrtoint ptr %start_ptr.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %start_ptr.i, align 1
  %conv5.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %end_ptr.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %end_ptr.i, align 1
  %conv6.i = zext i8 %74 to i32
  %sub.i = sub nsw i32 %conv5.i, %conv6.i
  %75 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #7
  %76 = ptrtoint ptr %div_ratio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %div_ratio, align 4
  %mul10.i = shl i32 %77, 2
  %add.i = or i32 %mul10.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %add.i)
  %cmp11.i = icmp ugt i32 %75, %add.i
  %.tr.i = trunc i32 %77 to i8
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i158

if.then13.i:                                      ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv16.i = shl i8 %.tr.i, 3
  %78 = ptrtoint ptr %window_start to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv16.i, ptr %window_start, align 1
  %conv19.i = shl i8 %.tr.i, 2
  br label %esdhc_prepare_sw_tuning.exit

if.else.i158:                                     ; preds = %sdhci_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv22.i = mul i8 %.tr.i, 5
  %79 = ptrtoint ptr %window_start to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv22.i, ptr %window_start, align 1
  %conv25.i = mul i8 %.tr.i, 3
  br label %esdhc_prepare_sw_tuning.exit

esdhc_prepare_sw_tuning.exit:                     ; preds = %if.else.i158, %if.then13.i, %if.then.i156
  %storemerge46.i = phi i8 [ %conv4.i, %if.then.i156 ], [ %conv25.i, %if.else.i158 ], [ %conv19.i, %if.then13.i ]
  %80 = ptrtoint ptr %window_end to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %storemerge46.i, ptr %window_end, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %end_ptr.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_ptr.i) #7
  %81 = ptrtoint ptr %window_start to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %window_start, align 1
  %conv.i159 = zext i8 %82 to i32
  %shl.i = shl nuw nsw i32 %conv.i159, 8
  %and.i = and i32 %shl.i, 32512
  %83 = and i8 %storemerge46.i, 127
  %and4.i = zext i8 %83 to i32
  %or.i = or i32 %and.i, %and4.i
  %84 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops.i, align 4
  %write_l.i.i161 = getelementptr inbounds %struct.sdhci_ops, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %write_l.i.i161 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_l.i.i161, align 4
  %tobool.not.i.i162 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i162, label %do.body.i.i166, label %if.then.i.i163, !prof !147

if.then.i.i163:                                   ; preds = %esdhc_prepare_sw_tuning.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %87(ptr noundef %private.i, i32 noundef %or.i, i32 noundef 296) #7
  br label %sdhci_writel.exit.i167

do.body.i.i166:                                   ; preds = %esdhc_prepare_sw_tuning.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %89 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i.i165 = getelementptr i8, ptr %90, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i165, i32 %88) #7, !srcloc !153
  br label %sdhci_writel.exit.i167

sdhci_writel.exit.i167:                           ; preds = %do.body.i.i166, %if.then.i.i163
  %91 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 4
  %tobool.not.i22.i = icmp eq ptr %94, null
  br i1 %tobool.not.i22.i, label %if.else.i.i, label %if.then.i23.i, !prof !147

if.then.i23.i:                                    ; preds = %sdhci_writel.exit.i167
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 %94(ptr noundef %private.i, i32 noundef 288) #7
  br label %sdhci_readl.exit.i

if.else.i.i:                                      ; preds = %sdhci_writel.exit.i167
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i25.i = getelementptr i8, ptr %96, i32 288
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25.i) #7, !srcloc !150
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit.i

sdhci_readl.exit.i:                               ; preds = %if.else.i.i, %if.then.i23.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i23.i ], [ %98, %if.else.i.i ]
  %or7.i = or i32 %retval.0.i.i, 3
  %99 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ops.i, align 4
  %write_l.i27.i = getelementptr inbounds %struct.sdhci_ops, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %write_l.i27.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_l.i27.i, align 4
  %tobool.not.i28.i = icmp eq ptr %102, null
  br i1 %tobool.not.i28.i, label %do.body.i32.i, label %if.then.i29.i, !prof !147

if.then.i29.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %102(ptr noundef %private.i, i32 noundef %or7.i, i32 noundef 288) #7
  br label %esdhc_execute_sw_tuning.exit

do.body.i32.i:                                    ; preds = %sdhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #7
  %104 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i31.i = getelementptr i8, ptr %105, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %103) #7, !srcloc !153
  br label %esdhc_execute_sw_tuning.exit

esdhc_execute_sw_tuning.exit:                     ; preds = %do.body.i32.i, %if.then.i29.i
  %106 = ptrtoint ptr %in_sw_tuning.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %in_sw_tuning.i, align 2
  %call8.i = tail call i32 @sdhci_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #7
  %107 = ptrtoint ptr %in_sw_tuning.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %in_sw_tuning.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool48.not = icmp eq i32 %call8.i, 0
  br i1 %tobool48.not, label %if.end50, label %esdhc_execute_sw_tuning.exit.if.then79_crit_edge

esdhc_execute_sw_tuning.exit.if.then79_crit_edge: ; preds = %esdhc_execute_sw_tuning.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.end50:                                         ; preds = %esdhc_execute_sw_tuning.exit
  %108 = ptrtoint ptr %tuning_err to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tuning_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %109)
  %cmp52 = icmp ne i32 %109, -11
  %brmerge139 = or i1 %tobool55.not, %cmp52
  br i1 %brmerge139, label %if.end50.do.end77_crit_edge, label %if.then56

if.end50.do.end77_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

if.then56:                                        ; preds = %if.end50
  br i1 %tobool.not, label %if.then56.if.end61_crit_edge, label %if.then58

if.then56.if.end61_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then58:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags, align 4
  %or60 = or i32 %111, 8192
  store i32 %or60, ptr %flags, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.then56.if.end61_crit_edge
  %112 = ptrtoint ptr %max_clk to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %max_clk, align 4
  %114 = ptrtoint ptr %div_ratio to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %div_ratio, align 4
  %add63 = add i32 %115, 1
  %div64 = udiv i32 %113, %add63
  tail call void @esdhc_of_set_clock(ptr noundef %private.i, i32 noundef %div64)
  %116 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i169 = icmp eq ptr %117, null
  br i1 %tobool.not.i169, label %if.end.i170, label %if.end61.dev_name.exit172_crit_edge

if.end61.dev_name.exit172_crit_edge:              ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit172

if.end.i170:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit172

dev_name.exit172:                                 ; preds = %if.end.i170, %if.end61.dev_name.exit172_crit_edge
  %retval.0.i171 = phi ptr [ %119, %if.end.i170 ], [ %117, %if.end61.dev_name.exit172_crit_edge ]
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i171) #10
  br label %do.body

do.end77:                                         ; preds = %if.end50.do.end77_crit_edge, %if.end27.do.end77_crit_edge
  %ret.0 = phi i32 [ %109, %if.end50.do.end77_crit_edge ], [ %46, %if.end27.do.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool78.not = icmp eq i32 %ret.0, 0
  br i1 %tobool78.not, label %if.else80, label %do.end77.if.then79_crit_edge

do.end77.if.then79_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.then79:                                        ; preds = %do.end77.if.then79_crit_edge, %esdhc_execute_sw_tuning.exit.if.then79_crit_edge, %lor.lhs.false.if.then79_crit_edge, %sdhci_writel.exit.if.then79_crit_edge
  %ret.0194 = phi i32 [ %ret.0, %do.end77.if.then79_crit_edge ], [ %call10, %sdhci_writel.exit.if.then79_crit_edge ], [ %call8.i, %esdhc_execute_sw_tuning.exit.if.then79_crit_edge ], [ -11, %lor.lhs.false.if.then79_crit_edge ]
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %private.i, i1 noundef zeroext false)
  br label %if.end86

if.else80:                                        ; preds = %do.end77
  br i1 %tobool.not, label %if.else80.if.end86_crit_edge, label %if.then82

if.else80.if.end86_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then82:                                        ; preds = %if.else80
  %120 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %tobool.not.i174 = icmp eq ptr %123, null
  br i1 %tobool.not.i174, label %if.else.i179, label %if.then.i176, !prof !147

if.then.i176:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %call.i175 = tail call i32 %123(ptr noundef %private.i, i32 noundef 328) #7
  br label %sdhci_readl.exit181

if.else.i179:                                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i178 = getelementptr i8, ptr %125, i32 328
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #7, !srcloc !150
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit181

sdhci_readl.exit181:                              ; preds = %if.else.i179, %if.then.i176
  %retval.0.i180 = phi i32 [ %call.i175, %if.then.i176 ], [ %127, %if.else.i179 ]
  %or84 = or i32 %retval.0.i180, 32768
  %128 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i, align 4
  %write_l.i183 = getelementptr inbounds %struct.sdhci_ops, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %write_l.i183 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %write_l.i183, align 4
  %tobool.not.i184 = icmp eq ptr %131, null
  br i1 %tobool.not.i184, label %do.body.i188, label %if.then.i185, !prof !147

if.then.i185:                                     ; preds = %sdhci_readl.exit181
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %131(ptr noundef %private.i, i32 noundef %or84, i32 noundef 328) #7
  br label %if.end86

do.body.i188:                                     ; preds = %sdhci_readl.exit181
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %132 = tail call i32 @llvm.bswap.i32(i32 %or84) #7
  %133 = ptrtoint ptr %ioaddr.i145 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ioaddr.i145, align 16
  %add.ptr.i187 = getelementptr i8, ptr %134, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i187, i32 %132) #7, !srcloc !153
  br label %if.end86

if.end86:                                         ; preds = %do.body.i188, %if.then.i185, %if.else80.if.end86_crit_edge, %if.then79
  %ret.0193 = phi i32 [ 0, %if.else80.if.end86_crit_edge ], [ %ret.0194, %if.then79 ], [ 0, %if.then.i185 ], [ 0, %do.body.i188 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %window_end) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %window_start) #7
  ret i32 %ret.0193
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_hs400_prepare_ddr(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %private.i, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse_voltage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_le_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %reg)
  %cmp = icmp eq i32 %reg, 68
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  br i1 %cmp, label %if.end5.i.thread, label %if.end

if.end5.i.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 276
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %3 = and i32 %2, -117440513
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  br label %esdhc_readl_fixup.exit

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %1, i32 %reg
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !150
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %reg)
  %cmp.i = icmp ne i32 %reg, 64
  %and.i = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %private.i49.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %7 = ptrtoint ptr %private.i49.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %private.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %8)
  %cmp2.i = icmp ugt i8 %8, 18
  %or.i = or i32 %6, 524288
  %spec.select.i = select i1 %cmp2.i, i32 %or.i, i32 %6
  br label %esdhc_readl_fixup.exit

if.end5.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %reg)
  %cond = icmp eq i32 %reg, 36
  br i1 %cond, label %if.then8.i, label %if.end5.i.esdhc_readl_fixup.exit_crit_edge

if.end5.i.esdhc_readl_fixup.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_readl_fixup.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %and9.i = and i32 %6, 1048575
  %shr.i = lshr i32 %6, 4
  %and10.i = and i32 %shr.i, 15728640
  %or11.i = or i32 %and10.i, %and9.i
  %shl.i = shl i32 %6, 1
  %and12.i = and i32 %shl.i, 16777216
  %or13.i = or i32 %or11.i, %and12.i
  br label %esdhc_readl_fixup.exit

esdhc_readl_fixup.exit:                           ; preds = %if.then8.i, %if.end5.i.esdhc_readl_fixup.exit_crit_edge, %if.then.i, %if.end5.i.thread
  %retval.0.i = phi i32 [ %or13.i, %if.then8.i ], [ %4, %if.end5.i.thread ], [ %6, %if.end5.i.esdhc_readl_fixup.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @esdhc_le_readw(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %private.i21.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_mode_shadow.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %3 = ptrtoint ptr %xfer_mode_shadow.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %xfer_mode_shadow.i, align 8
  br label %esdhc_readw_fixup.exit

if.end.i:                                         ; preds = %entry
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %reg)
  %cmp2.i = icmp eq i32 %reg, 254
  %shr.i = select i1 %cmp2.i, i32 0, i32 %mul.i
  %ret.0.in.i = lshr i32 %5, %shr.i
  %ret.0.i = trunc i32 %ret.0.in.i to i16
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.esdhc_readw_fixup.exit_crit_edge

if.end.i.esdhc_readw_fixup.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_readw_fixup.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %quirk_incorrect_hostver.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i21.i, i32 0, i32 2
  %6 = ptrtoint ptr %quirk_incorrect_hostver.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %quirk_incorrect_hostver.i, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i16 %ret.0.i, i16 4865
  br label %esdhc_readw_fixup.exit

esdhc_readw_fixup.exit:                           ; preds = %land.lhs.true.i, %if.end.i.esdhc_readw_fixup.exit_crit_edge, %if.then.i
  %retval.0.i = phi i16 [ %4, %if.then.i ], [ %ret.0.i, %if.end.i.esdhc_readw_fixup.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  ret i16 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @esdhc_le_readb(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 24
  %shr.i = lshr i32 %3, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 40
  %shr3.i = lshr i32 %3, 5
  %conv5.i = and i32 %shr3.i, 24
  %conv8.i = and i32 %shr.i, 231
  %or.i = or i32 %conv8.i, %conv5.i
  %ret.0.in.i = select i1 %cmp.i, i32 %or.i, i32 %shr.i
  %ret.0.i = trunc i32 %ret.0.in.i to i8
  ret i8 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_le_writel(ptr nocapture noundef readonly %host, i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 52
  %or.i = or i32 %val, 4
  %ret.0.i = select i1 %cmp.i, i32 %or.i, i32 %val
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 @llvm.bswap.i32(i32 %ret.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !153
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_le_writew(ptr nocapture noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i32 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %reg, label %esdhc_writew_fixup.exit [
    i32 12, label %esdhc_writew_fixup.exit.thread
    i32 14, label %esdhc_writew_fixup.exit.thread36
  ]

esdhc_writew_fixup.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_mode_shadow.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %5 = ptrtoint ptr %xfer_mode_shadow.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %val, ptr %xfer_mode_shadow.i, align 8
  br label %if.end

esdhc_writew_fixup.exit.thread36:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %val to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %xfer_mode_shadow2.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %6 = ptrtoint ptr %xfer_mode_shadow2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %xfer_mode_shadow2.i, align 8
  %conv3.i = zext i16 %7 to i32
  %or.i = or i32 %shl.i, %conv3.i
  br label %if.then

esdhc_writew_fixup.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 16
  %shl4.i = shl nuw i32 65535, %mul.i
  %neg.i = xor i32 %shl4.i, -1
  %and5.i = and i32 %3, %neg.i
  %conv6.i = zext i16 %val to i32
  %shl7.i = shl nuw i32 %conv6.i, %mul.i
  %or8.i = or i32 %and5.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 4
  %and10.i = and i32 %or8.i, -28673
  %spec.select.i = select i1 %cmp.i, i32 %and10.i, i32 %or8.i
  br label %if.then

if.then:                                          ; preds = %esdhc_writew_fixup.exit, %esdhc_writew_fixup.exit.thread36
  %retval.0.i39 = phi i32 [ %or.i, %esdhc_writew_fixup.exit.thread36 ], [ %spec.select.i, %esdhc_writew_fixup.exit ]
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %add.ptr5 = getelementptr i8, ptr %9, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i39) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %10) #7, !srcloc !153
  br label %if.end

if.end:                                           ; preds = %if.then, %esdhc_writew_fixup.exit.thread
  %retval.0.i35 = phi i32 [ %3, %esdhc_writew_fixup.exit.thread ], [ %retval.0.i39, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and)
  %cmp6 = icmp ne i32 %and, 60
  %and8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp ne i32 %and8, 0
  %or.cond.not = or i1 %cmp6, %tobool.not
  %and9 = and i32 %retval.0.i35, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond31 = select i1 %or.cond.not, i1 true, i1 %tobool10.not
  br i1 %or.cond31, label %if.end.if.end17_crit_edge, label %land.lhs.true11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

land.lhs.true11:                                  ; preds = %if.end
  %in_sw_tuning = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i32, i32 0, i32 10
  %11 = ptrtoint ptr %in_sw_tuning to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_sw_tuning, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end17_crit_edge, label %if.then13

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #7
  %or = or i32 %retval.0.i35, 8388608
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %add.ptr15 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %16) #7, !srcloc !153
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %land.lhs.true11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_le_writeb(ptr nocapture noundef readonly %host, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %4 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %reg, label %if.end17.i [
    i32 41, label %entry.esdhc_writeb_fixup.exit_crit_edge
    i32 40, label %if.then2.i
  ]

entry.esdhc_writeb_fixup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_writeb_fixup.exit

if.then2.i:                                       ; preds = %entry
  %quirks2.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 2
  %5 = ptrtoint ptr %quirks2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %quirks2.i, align 8
  %and3.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then2.i.esdhc_writeb_fixup.exit_crit_edge

if.then2.i.esdhc_writeb_fixup.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_writeb_fixup.exit

if.end5.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %val to i32
  %and6.i = shl nuw nsw i32 %conv.i, 5
  %shl.i = and i32 %and6.i, 768
  %and7.i = and i32 %3, -1024
  %and9.i = and i32 %conv.i, 230
  %and10.i = and i32 %3, 24
  %or.i = or i32 %shl.i, %and9.i
  %or11.i = or i32 %or.i, %and10.i
  %or15.i = or i32 %or11.i, %and7.i
  br label %esdhc_writeb_fixup.exit

if.end17.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 24
  %shl18.i = shl nuw i32 255, %mul.i
  %neg.i = xor i32 %shl18.i, -1
  %and19.i = and i32 %3, %neg.i
  %conv20.i = zext i8 %val to i32
  %shl21.i = shl nuw i32 %conv20.i, %mul.i
  %or22.i = or i32 %and19.i, %shl21.i
  br label %esdhc_writeb_fixup.exit

esdhc_writeb_fixup.exit:                          ; preds = %if.end17.i, %if.end5.i, %if.then2.i.esdhc_writeb_fixup.exit_crit_edge, %entry.esdhc_writeb_fixup.exit_crit_edge
  %retval.0.i = phi i32 [ %or15.i, %if.end5.i ], [ %or22.i, %if.end17.i ], [ %3, %entry.esdhc_writeb_fixup.exit_crit_edge ], [ %3, %if.then2.i.esdhc_writeb_fixup.exit_crit_edge ]
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr3 = getelementptr i8, ptr %8, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #7, !srcloc !153
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_of_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i327 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %cmp = icmp eq i32 %clock, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %2 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actual_clock, align 8
  br label %cleanup219

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %private.i327 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %private.i327, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %4)
  %cmp2 = icmp ult i8 %4, 19
  %spec.select = select i1 %cmp2, i32 2, i32 1
  %mmc6 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %5 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc6, align 8
  %card = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 37
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %type = getelementptr inbounds %struct.mmc_card, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %land.lhs.true11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true
  %clk_fixup = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %11 = ptrtoint ptr %clk_fixup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_fixup, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %land.lhs.true11.if.else_crit_edge, label %land.lhs.true13

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %timing = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 28, i32 7
  %13 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp16 = icmp eq i8 %14, 0
  br i1 %cmp16, label %land.lhs.true13.if.end28.sink.split_crit_edge, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true13.if.end28.sink.split_crit_edge:    ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.sink.split

if.else:                                          ; preds = %land.lhs.true13.if.else_crit_edge, %land.lhs.true11.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %clk_fixup20 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 12
  %15 = ptrtoint ptr %clk_fixup20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_fixup20, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.else.if.end28_crit_edge, label %if.then22

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %timing26 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 28, i32 7
  %17 = ptrtoint ptr %timing26 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timing26, align 4
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr %struct.esdhc_clk_fixup, ptr %16, i32 0, i32 1, i32 %idxprom
  br label %if.end28.sink.split

if.end28.sink.split:                              ; preds = %if.then22, %land.lhs.true13.if.end28.sink.split_crit_edge
  %arrayidx.sink = phi ptr [ %arrayidx, %if.then22 ], [ %12, %land.lhs.true13.if.end28.sink.split_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.sink, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end28.sink.split, %if.else.if.end28_crit_edge
  %clock_fixup.0 = phi i32 [ 0, %if.else.if.end28_crit_edge ], [ %20, %if.end28.sink.split ]
  %21 = add i32 %clock_fixup.0, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %clock)
  %.not = icmp ult i32 %21, %clock
  %clock_fixup.1 = select i1 %.not, i32 %clock_fixup.0, i32 %clock
  %max_clk35 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 18
  %22 = ptrtoint ptr %max_clk35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_clk35, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end28
  %pre_div.1 = phi i32 [ %spec.select, %if.end28 ], [ %mul, %while.cond.while.cond_crit_edge ]
  %div36 = udiv i32 %23, %pre_div.1
  %div37321 = lshr i32 %div36, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div37321, i32 %clock_fixup.1)
  %cmp38 = icmp ugt i32 %div37321, %clock_fixup.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %pre_div.1)
  %cmp40 = icmp ult i32 %pre_div.1, 256
  %or.cond322 = select i1 %cmp38, i1 %cmp40, i1 false
  %mul = shl nuw nsw i32 %pre_div.1, 1
  br i1 %or.cond322, label %while.cond.while.cond_crit_edge, label %while.cond.while.cond42_crit_edge

while.cond.while.cond42_crit_edge:                ; preds = %while.cond
  br label %while.cond42

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.cond42:                                     ; preds = %while.cond42.while.cond42_crit_edge, %while.cond.while.cond42_crit_edge
  %div.0 = phi i32 [ %inc, %while.cond42.while.cond42_crit_edge ], [ 1, %while.cond.while.cond42_crit_edge ]
  %div45 = udiv i32 %div36, %div.0
  call void @__sanitizer_cov_trace_cmp4(i32 %div45, i32 %clock_fixup.1)
  %cmp46 = icmp ugt i32 %div45, %clock_fixup.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div.0)
  %cmp49 = icmp ult i32 %div.0, 16
  %or.cond323 = and i1 %cmp49, %cmp46
  %inc = add nuw nsw i32 %div.0, 1
  br i1 %or.cond323, label %while.cond42.while.cond42_crit_edge, label %while.end53

while.cond42.while.cond42_crit_edge:              ; preds = %while.cond42
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42

while.end53:                                      ; preds = %while.cond42
  %mul54 = mul i32 %div.0, %pre_div.1
  %div_ratio = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i327, i32 0, i32 13
  %24 = ptrtoint ptr %div_ratio to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul54, ptr %div_ratio, align 4
  %quirk_limited_clk_division = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i327, i32 0, i32 3
  %25 = ptrtoint ptr %quirk_limited_clk_division to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %quirk_limited_clk_division, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool55.not = icmp ne i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %clock)
  %cmp58 = icmp eq i32 %clock, 200000000
  %or.cond324 = and i1 %cmp58, %tobool55.not
  br i1 %or.cond324, label %land.lhs.true60, label %while.end53.if.end93_crit_edge

while.end53.if.end93_crit_edge:                   ; preds = %while.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

land.lhs.true60:                                  ; preds = %while.end53
  %timing63 = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 28, i32 7
  %27 = ptrtoint ptr %timing63 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %timing63, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %28)
  %cmp65 = icmp eq i8 %28, 10
  br i1 %cmp65, label %land.lhs.true60.if.then69_crit_edge, label %lor.lhs.false67

land.lhs.true60.if.then69_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

lor.lhs.false67:                                  ; preds = %land.lhs.true60
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %lor.lhs.false67.if.end93_crit_edge, label %lor.lhs.false67.if.then69_crit_edge

lor.lhs.false67.if.then69_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then69

lor.lhs.false67.if.end93_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then69:                                        ; preds = %lor.lhs.false67.if.then69_crit_edge, %land.lhs.true60.if.then69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mul54)
  %cmp71 = icmp ult i32 %mul54, 5
  br i1 %cmp71, label %if.then69.if.end90_crit_edge, label %if.else74

if.then69.if.end90_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.else74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mul54)
  %cmp76 = icmp ult i32 %mul54, 9
  br i1 %cmp76, label %if.else74.if.end90_crit_edge, label %if.else79

if.else74.if.end90_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.else79:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %mul54)
  %cmp81 = icmp ult i32 %mul54, 13
  br i1 %cmp81, label %if.else79.if.end90_crit_edge, label %do.end

if.else79.if.end90_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.end:                                           ; preds = %if.else79
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 1
  %33 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i328 = phi ptr [ %34, %if.end.i ], [ %32, %do.end.dev_name.exit_crit_edge ]
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i328) #10
  br label %if.end90

if.end90:                                         ; preds = %dev_name.exit, %if.else79.if.end90_crit_edge, %if.else74.if.end90_crit_edge, %if.then69.if.end90_crit_edge
  %div.1 = phi i32 [ %div.0, %dev_name.exit ], [ 1, %if.then69.if.end90_crit_edge ], [ 2, %if.else74.if.end90_crit_edge ], [ 3, %if.else79.if.end90_crit_edge ]
  %pre_div.2 = phi i32 [ %pre_div.1, %dev_name.exit ], [ 4, %if.then69.if.end90_crit_edge ], [ 4, %if.else74.if.end90_crit_edge ], [ 4, %if.else79.if.end90_crit_edge ]
  %mul91 = mul i32 %pre_div.2, %div.1
  %35 = ptrtoint ptr %div_ratio to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul91, ptr %div_ratio, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end90, %lor.lhs.false67.if.end93_crit_edge, %while.end53.if.end93_crit_edge
  %div.2 = phi i32 [ %div.1, %if.end90 ], [ %div.0, %lor.lhs.false67.if.end93_crit_edge ], [ %div.0, %while.end53.if.end93_crit_edge ]
  %pre_div.3 = phi i32 [ %pre_div.2, %if.end90 ], [ %pre_div.1, %lor.lhs.false67.if.end93_crit_edge ], [ %pre_div.1, %while.end53.if.end93_crit_edge ]
  %36 = ptrtoint ptr %max_clk35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_clk35, align 4
  %38 = ptrtoint ptr %div_ratio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %div_ratio, align 4
  %div96 = udiv i32 %37, %39
  %40 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmc6, align 8
  %actual_clock98 = getelementptr inbounds %struct.mmc_host, ptr %41, i32 0, i32 58
  %42 = ptrtoint ptr %actual_clock98 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div96, ptr %actual_clock98, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @esdhc_of_set_clock.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@esdhc_of_set_clock, %if.then105)) #7
          to label %do.end111 [label %if.then105], !srcloc !162

if.then105:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc6, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 128
  %actual_clock108 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 58
  %47 = ptrtoint ptr %actual_clock108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %actual_clock108, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @esdhc_of_set_clock.__UNIQUE_ID_ddebug273, ptr noundef %46, ptr noundef nonnull @.str.13, i32 noundef %clock, i32 noundef %48) #7
  br label %do.end111

do.end111:                                        ; preds = %if.then105, %if.end93
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext false)
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %49 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not.i329 = icmp eq ptr %52, null
  br i1 %tobool.not.i329, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %52(ptr noundef %host, i32 noundef 44) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %53 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %54, i32 44
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i330 = phi i32 [ %call.i, %if.then.i ], [ %56, %if.else.i ]
  %and113 = and i32 %retval.0.i330, -65521
  %dec = shl nuw nsw i32 %div.2, 4
  %shl = add nsw i32 %dec, -16
  %57 = shl i32 %pre_div.3, 7
  %shl114 = and i32 %57, -256
  %or = or i32 %shl114, %shl
  %or115 = or i32 %or, %and113
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i332 = icmp eq ptr %61, null
  br i1 %tobool.not.i332, label %do.body.i, label %if.then.i333, !prof !147

if.then.i333:                                     ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %61(ptr noundef %host, i32 noundef %or115, i32 noundef 44) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %or115) #7
  %ioaddr.i334 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %63 = ptrtoint ptr %ioaddr.i334 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr.i334, align 16
  %add.ptr.i335 = getelementptr i8, ptr %64, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i335, i32 %62) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i333
  %call116 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call116, 20000000
  %65 = ptrtoint ptr %private.i327 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %private.i327, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %66)
  %cmp121470 = icmp ugt i8 %66, 18
  br i1 %cmp121470, label %while.body123.lr.ph, label %sdhci_writel.exit.while.end143_crit_edge

sdhci_writel.exit.while.end143_crit_edge:         ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end143

while.body123.lr.ph:                              ; preds = %sdhci_writel.exit
  %ioaddr.i341 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.body123

while.body123:                                    ; preds = %cleanup.while.body123_crit_edge, %while.body123.lr.ph
  %call124 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call124, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call124, %add.i
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool.not.i338 = icmp eq ptr %70, null
  br i1 %tobool.not.i338, label %if.else.i343, label %if.then.i340, !prof !147

if.then.i340:                                     ; preds = %while.body123
  call void @__sanitizer_cov_trace_pc() #9
  %call.i339 = tail call i32 %70(ptr noundef %host, i32 noundef 36) #7
  br label %sdhci_readl.exit345

if.else.i343:                                     ; preds = %while.body123
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %ioaddr.i341 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr.i341, align 16
  %add.ptr.i342 = getelementptr i8, ptr %72, i32 36
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #7, !srcloc !150
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit345

sdhci_readl.exit345:                              ; preds = %if.else.i343, %if.then.i340
  %retval.0.i344 = phi i32 [ %call.i339, %if.then.i340 ], [ %74, %if.else.i343 ]
  %and128 = and i32 %retval.0.i344, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.end131, label %sdhci_readl.exit345.while.end143_crit_edge

sdhci_readl.exit345.while.end143_crit_edge:       ; preds = %sdhci_readl.exit345
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end143

if.end131:                                        ; preds = %sdhci_readl.exit345
  br i1 %cmp3.i.i, label %do.end136, label %cleanup

do.end136:                                        ; preds = %if.end131
  %75 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmc6, align 8
  %init_name.i346 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %init_name.i346 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i346, align 8
  %tobool.not.i347 = icmp eq ptr %78, null
  br i1 %tobool.not.i347, label %if.end.i348, label %do.end136.dev_name.exit350_crit_edge

do.end136.dev_name.exit350_crit_edge:             ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit350

if.end.i348:                                      ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev139 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %class_dev139 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %class_dev139, align 4
  br label %dev_name.exit350

dev_name.exit350:                                 ; preds = %if.end.i348, %do.end136.dev_name.exit350_crit_edge
  %retval.0.i349 = phi ptr [ %80, %if.end.i348 ], [ %78, %do.end136.dev_name.exit350_crit_edge ]
  %call141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i349) #10
  br label %while.end143

cleanup:                                          ; preds = %if.end131
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %81 = ptrtoint ptr %private.i327 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %private.i327, align 4
  %cmp121 = icmp ugt i8 %82, 18
  br i1 %cmp121, label %cleanup.while.body123_crit_edge, label %cleanup.while.end143_crit_edge

cleanup.while.end143_crit_edge:                   ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end143

cleanup.while.body123_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body123

while.end143:                                     ; preds = %cleanup.while.end143_crit_edge, %dev_name.exit350, %sdhci_readl.exit345.while.end143_crit_edge, %sdhci_writel.exit.while.end143_crit_edge
  %83 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmc6, align 8
  %timing146 = getelementptr inbounds %struct.mmc_host, ptr %84, i32 0, i32 28, i32 7
  %85 = ptrtoint ptr %timing146 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %timing146, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %86)
  %cmp148 = icmp eq i8 %86, 10
  %or.cond325 = and i1 %cmp58, %cmp148
  br i1 %or.cond325, label %if.then153, label %while.end143.cleanup219_crit_edge

while.end143.cleanup219_crit_edge:                ; preds = %while.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup219

if.then153:                                       ; preds = %while.end143
  %87 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %tobool.not.i352 = icmp eq ptr %90, null
  br i1 %tobool.not.i352, label %if.else.i357, label %if.then.i354, !prof !147

if.then.i354:                                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  %call.i353 = tail call i32 %90(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit359

if.else.i357:                                     ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i355 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %91 = ptrtoint ptr %ioaddr.i355 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioaddr.i355, align 16
  %add.ptr.i356 = getelementptr i8, ptr %92, i32 288
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356) #7, !srcloc !150
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit359

sdhci_readl.exit359:                              ; preds = %if.else.i357, %if.then.i354
  %retval.0.i358 = phi i32 [ %call.i353, %if.then.i354 ], [ %94, %if.else.i357 ]
  %or155 = or i32 %retval.0.i358, 16
  %95 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i, align 4
  %write_l.i361 = getelementptr inbounds %struct.sdhci_ops, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %write_l.i361 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_l.i361, align 4
  %tobool.not.i362 = icmp eq ptr %98, null
  br i1 %tobool.not.i362, label %do.body.i366, label %if.then.i363, !prof !147

if.then.i363:                                     ; preds = %sdhci_readl.exit359
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %98(ptr noundef %host, i32 noundef %or155, i32 noundef 288) #7
  br label %sdhci_writel.exit368

do.body.i366:                                     ; preds = %sdhci_readl.exit359
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %99 = tail call i32 @llvm.bswap.i32(i32 %or155) #7
  %ioaddr.i364 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %100 = ptrtoint ptr %ioaddr.i364 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioaddr.i364, align 16
  %add.ptr.i365 = getelementptr i8, ptr %101, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365, i32 %99) #7, !srcloc !153
  br label %sdhci_writel.exit368

sdhci_writel.exit368:                             ; preds = %do.body.i366, %if.then.i363
  %102 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %tobool.not.i370 = icmp eq ptr %105, null
  br i1 %tobool.not.i370, label %if.else.i375, label %if.then.i372, !prof !147

if.then.i372:                                     ; preds = %sdhci_writel.exit368
  call void @__sanitizer_cov_trace_pc() #9
  %call.i371 = tail call i32 %105(ptr noundef %host, i32 noundef 324) #7
  br label %sdhci_readl.exit377

if.else.i375:                                     ; preds = %sdhci_writel.exit368
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i373 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %106 = ptrtoint ptr %ioaddr.i373 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ioaddr.i373, align 16
  %add.ptr.i374 = getelementptr i8, ptr %107, i32 324
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374) #7, !srcloc !150
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit377

sdhci_readl.exit377:                              ; preds = %if.else.i375, %if.then.i372
  %retval.0.i376 = phi i32 [ %call.i371, %if.then.i372 ], [ %109, %if.else.i375 ]
  %or157 = or i32 %retval.0.i376, 32768
  %110 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i, align 4
  %write_l.i379 = getelementptr inbounds %struct.sdhci_ops, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %write_l.i379 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write_l.i379, align 4
  %tobool.not.i380 = icmp eq ptr %113, null
  br i1 %tobool.not.i380, label %do.body.i384, label %if.then.i381, !prof !147

if.then.i381:                                     ; preds = %sdhci_readl.exit377
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %113(ptr noundef %host, i32 noundef %or157, i32 noundef 324) #7
  br label %sdhci_writel.exit386

do.body.i384:                                     ; preds = %sdhci_readl.exit377
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %114 = tail call i32 @llvm.bswap.i32(i32 %or157) #7
  %ioaddr.i382 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %115 = ptrtoint ptr %ioaddr.i382 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ioaddr.i382, align 16
  %add.ptr.i383 = getelementptr i8, ptr %116, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i383, i32 %114) #7, !srcloc !153
  br label %sdhci_writel.exit386

sdhci_writel.exit386:                             ; preds = %do.body.i384, %if.then.i381
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext true)
  %117 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %tobool.not.i388 = icmp eq ptr %120, null
  br i1 %tobool.not.i388, label %if.else.i393, label %if.then.i390, !prof !147

if.then.i390:                                     ; preds = %sdhci_writel.exit386
  call void @__sanitizer_cov_trace_pc() #9
  %call.i389 = tail call i32 %120(ptr noundef %host, i32 noundef 352) #7
  br label %sdhci_readl.exit395

if.else.i393:                                     ; preds = %sdhci_writel.exit386
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i391 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %121 = ptrtoint ptr %ioaddr.i391 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ioaddr.i391, align 16
  %add.ptr.i392 = getelementptr i8, ptr %122, i32 352
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i392) #7, !srcloc !150
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit395

sdhci_readl.exit395:                              ; preds = %if.else.i393, %if.then.i390
  %retval.0.i394 = phi i32 [ %call.i389, %if.then.i390 ], [ %124, %if.else.i393 ]
  %125 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmc6, align 8
  %actual_clock161 = getelementptr inbounds %struct.mmc_host, ptr %126, i32 0, i32 58
  %127 = ptrtoint ptr %actual_clock161 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %actual_clock161, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %128)
  %cmp162 = icmp eq i32 %128, 200000000
  %spec.select326.v = select i1 %cmp162, i32 -2013265920, i32 -2147483648
  %spec.select326 = or i32 %spec.select326.v, %retval.0.i394
  %129 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ops.i, align 4
  %write_l.i397 = getelementptr inbounds %struct.sdhci_ops, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %write_l.i397 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write_l.i397, align 4
  %tobool.not.i398 = icmp eq ptr %132, null
  br i1 %tobool.not.i398, label %do.body.i402, label %if.then.i399, !prof !147

if.then.i399:                                     ; preds = %sdhci_readl.exit395
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %132(ptr noundef %host, i32 noundef %spec.select326, i32 noundef 352) #7
  br label %sdhci_writel.exit404

do.body.i402:                                     ; preds = %sdhci_readl.exit395
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %133 = tail call i32 @llvm.bswap.i32(i32 %spec.select326) #7
  %ioaddr.i400 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %134 = ptrtoint ptr %ioaddr.i400 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ioaddr.i400, align 16
  %add.ptr.i401 = getelementptr i8, ptr %135, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 %133) #7, !srcloc !153
  br label %sdhci_writel.exit404

sdhci_writel.exit404:                             ; preds = %do.body.i402, %if.then.i399
  %or167 = or i32 %spec.select326, 1073741824
  %136 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i, align 4
  %write_l.i406 = getelementptr inbounds %struct.sdhci_ops, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %write_l.i406 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write_l.i406, align 4
  %tobool.not.i407 = icmp eq ptr %139, null
  br i1 %tobool.not.i407, label %do.body.i411, label %if.then.i408, !prof !147

if.then.i408:                                     ; preds = %sdhci_writel.exit404
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %139(ptr noundef %host, i32 noundef %or167, i32 noundef 352) #7
  br label %sdhci_writel.exit413

do.body.i411:                                     ; preds = %sdhci_writel.exit404
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %140 = tail call i32 @llvm.bswap.i32(i32 %or167) #7
  %ioaddr.i409 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %141 = ptrtoint ptr %ioaddr.i409 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %ioaddr.i409, align 16
  %add.ptr.i410 = getelementptr i8, ptr %142, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i410, i32 %140) #7, !srcloc !153
  br label %sdhci_writel.exit413

sdhci_writel.exit413:                             ; preds = %do.body.i411, %if.then.i408
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %143 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %143(i32 noundef 214748) #7
  %and168 = and i32 %spec.select326, -1073741825
  %144 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ops.i, align 4
  %write_l.i415 = getelementptr inbounds %struct.sdhci_ops, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %write_l.i415 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %write_l.i415, align 4
  %tobool.not.i416 = icmp eq ptr %147, null
  br i1 %tobool.not.i416, label %do.body.i420, label %if.then.i417, !prof !147

if.then.i417:                                     ; preds = %sdhci_writel.exit413
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %147(ptr noundef %host, i32 noundef %and168, i32 noundef 352) #7
  br label %sdhci_writel.exit422

do.body.i420:                                     ; preds = %sdhci_writel.exit413
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %148 = tail call i32 @llvm.bswap.i32(i32 %and168) #7
  %ioaddr.i418 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %149 = ptrtoint ptr %ioaddr.i418 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ioaddr.i418, align 16
  %add.ptr.i419 = getelementptr i8, ptr %150, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i419, i32 %148) #7, !srcloc !153
  br label %sdhci_writel.exit422

sdhci_writel.exit422:                             ; preds = %do.body.i420, %if.then.i417
  %call169 = tail call i64 @ktime_get() #7
  %add.i423 = add i64 %call169, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 763) #7
  %ioaddr.i428 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then199, %sdhci_writel.exit422
  %151 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ops.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %tobool.not.i425 = icmp eq ptr %154, null
  br i1 %tobool.not.i425, label %if.else.i430, label %if.then.i427, !prof !147

if.then.i427:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call.i426 = tail call i32 %154(ptr noundef %host, i32 noundef 368) #7
  br label %sdhci_readl.exit432

if.else.i430:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %155 = ptrtoint ptr %ioaddr.i428 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %ioaddr.i428, align 16
  %add.ptr.i429 = getelementptr i8, ptr %156, i32 368
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #7, !srcloc !150
  %158 = tail call i32 @llvm.bswap.i32(i32 %157) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit432

sdhci_readl.exit432:                              ; preds = %if.else.i430, %if.then.i427
  %retval.0.i431 = phi i32 [ %call.i426, %if.then.i427 ], [ %158, %if.else.i430 ]
  %and185 = and i32 %retval.0.i431, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %land.lhs.true190, label %sdhci_readl.exit432.for.end_crit_edge

sdhci_readl.exit432.for.end_crit_edge:            ; preds = %sdhci_readl.exit432
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true190:                                 ; preds = %sdhci_readl.exit432
  %call191 = tail call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call191, %add.i423
  br i1 %cmp3.i, label %if.then195, label %if.then199

if.then195:                                       ; preds = %land.lhs.true190
  %159 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ops.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %tobool.not.i435 = icmp eq ptr %162, null
  br i1 %tobool.not.i435, label %if.else.i440, label %if.then.i437, !prof !147

if.then.i437:                                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #9
  %call.i436 = tail call i32 %162(ptr noundef %host, i32 noundef 368) #7
  br label %for.end

if.else.i440:                                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %ioaddr.i428 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %ioaddr.i428, align 16
  %add.ptr.i439 = getelementptr i8, ptr %164, i32 368
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i439) #7, !srcloc !150
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %for.end

if.then199:                                       ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  br label %for.cond

for.end:                                          ; preds = %if.else.i440, %if.then.i437, %sdhci_readl.exit432.for.end_crit_edge
  %temp.1 = phi i32 [ %call.i436, %if.then.i437 ], [ %166, %if.else.i440 ], [ %retval.0.i431, %sdhci_readl.exit432.for.end_crit_edge ]
  %and203 = and i32 %temp.1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and203)
  %tobool204.not = icmp eq i32 %and203, 0
  br i1 %tobool204.not, label %do.end209, label %for.end.if.end215_crit_edge

for.end.if.end215_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

do.end209:                                        ; preds = %for.end
  %167 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mmc6, align 8
  %init_name.i443 = getelementptr inbounds %struct.mmc_host, ptr %168, i32 0, i32 1, i32 3
  %169 = ptrtoint ptr %init_name.i443 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %init_name.i443, align 8
  %tobool.not.i444 = icmp eq ptr %170, null
  br i1 %tobool.not.i444, label %if.end.i445, label %do.end209.dev_name.exit447_crit_edge

do.end209.dev_name.exit447_crit_edge:             ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit447

if.end.i445:                                      ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev212 = getelementptr inbounds %struct.mmc_host, ptr %168, i32 0, i32 1
  %171 = ptrtoint ptr %class_dev212 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %class_dev212, align 4
  br label %dev_name.exit447

dev_name.exit447:                                 ; preds = %if.end.i445, %do.end209.dev_name.exit447_crit_edge
  %retval.0.i446 = phi ptr [ %172, %if.end.i445 ], [ %170, %do.end209.dev_name.exit447_crit_edge ]
  %call214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i446) #10
  br label %if.end215

if.end215:                                        ; preds = %dev_name.exit447, %for.end.if.end215_crit_edge
  %173 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ops.i, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %tobool.not.i449 = icmp eq ptr %176, null
  br i1 %tobool.not.i449, label %if.else.i454, label %if.then.i451, !prof !147

if.then.i451:                                     ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  %call.i450 = tail call i32 %176(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit456

if.else.i454:                                     ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %ioaddr.i428 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ioaddr.i428, align 16
  %add.ptr.i453 = getelementptr i8, ptr %178, i32 288
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i453) #7, !srcloc !150
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit456

sdhci_readl.exit456:                              ; preds = %if.else.i454, %if.then.i451
  %retval.0.i455 = phi i32 [ %call.i450, %if.then.i451 ], [ %180, %if.else.i454 ]
  %or217 = or i32 %retval.0.i455, 64
  %181 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops.i, align 4
  %write_l.i458 = getelementptr inbounds %struct.sdhci_ops, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %write_l.i458 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %write_l.i458, align 4
  %tobool.not.i459 = icmp eq ptr %184, null
  br i1 %tobool.not.i459, label %do.body.i463, label %if.then.i460, !prof !147

if.then.i460:                                     ; preds = %sdhci_readl.exit456
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %184(ptr noundef %host, i32 noundef %or217, i32 noundef 288) #7
  br label %sdhci_writel.exit465

do.body.i463:                                     ; preds = %sdhci_readl.exit456
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %185 = tail call i32 @llvm.bswap.i32(i32 %or217) #7
  %186 = ptrtoint ptr %ioaddr.i428 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ioaddr.i428, align 16
  %add.ptr.i462 = getelementptr i8, ptr %187, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i462, i32 %185) #7, !srcloc !153
  br label %sdhci_writel.exit465

sdhci_writel.exit465:                             ; preds = %do.body.i463, %if.then.i460
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext false)
  tail call fastcc void @esdhc_flush_async_fifo(ptr noundef %host)
  br label %cleanup219

cleanup219:                                       ; preds = %sdhci_writel.exit465, %while.end143.cleanup219_crit_edge, %if.then
  %188 = xor i1 %cmp, true
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext %188)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i18 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %quirk_trans_complete_erratum = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i18, i32 0, i32 9
  %0 = ptrtoint ptr %quirk_trans_complete_erratum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %quirk_trans_complete_erratum, align 1, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call zeroext i16 %5(ptr noundef %host, i32 noundef 14) #7
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 14
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #7, !srcloc !148
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %10 = and i16 %retval.0.i, 16128
  call void @__sanitizer_cov_trace_const_cmp2(i16 6400, i16 %10)
  %cmp = icmp eq i16 %10, 6400
  br i1 %cmp, label %land.lhs.true, label %sdhci_readw.exit.if.end12_crit_edge

sdhci_readw.exit.if.end12_crit_edge:              ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %sdhci_readw.exit
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %read_w.i20 = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %read_w.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_w.i20, align 4
  %tobool.not.i21 = icmp eq ptr %14, null
  br i1 %tobool.not.i21, label %if.else.i26, label %if.then.i23, !prof !147

if.then.i23:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i22 = tail call zeroext i16 %14(ptr noundef %host, i32 noundef 6) #7
  br label %sdhci_readw.exit28

if.else.i26:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i24 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i24, align 16
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 6
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i25) #7, !srcloc !148
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  br label %sdhci_readw.exit28

sdhci_readw.exit28:                               ; preds = %if.else.i26, %if.then.i23
  %retval.0.i27 = phi i16 [ %call.i22, %if.then.i23 ], [ %18, %if.else.i26 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i27)
  %tobool6.not = icmp eq i16 %retval.0.i27, 0
  %and8 = and i32 %intmask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = or i1 %tobool9.not, %tobool6.not
  br i1 %or.cond, label %sdhci_readw.exit28.if.end12_crit_edge, label %if.then10

sdhci_readw.exit28.if.end12_crit_edge:            ; preds = %sdhci_readw.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %sdhci_readw.exit28
  %and11 = and i32 %intmask, -3
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i30 = icmp eq ptr %22, null
  br i1 %tobool.not.i30, label %do.body.i, label %if.then.i31, !prof !147

if.then.i31:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %host, i32 noundef 2, i32 noundef 48) #7
  br label %if.end12

do.body.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %ioaddr.i32 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i32, align 16
  %add.ptr.i33 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 33554432) #7, !srcloc !153
  br label %if.end12

if.end12:                                         ; preds = %do.body.i, %if.then.i31, %sdhci_readw.exit28.if.end12_crit_edge, %sdhci_readw.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %intmask.addr.0 = phi i32 [ %intmask, %sdhci_readw.exit28.if.end12_crit_edge ], [ %intmask, %sdhci_readw.exit.if.end12_crit_edge ], [ %intmask, %entry.if.end12_crit_edge ], [ %and11, %if.then.i31 ], [ %and11, %do.body.i ]
  ret i32 %intmask.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_of_enable_dma(ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %5, ptr noundef nonnull @.str.23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 1099511627775) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %dma_set_mask_and_coherent.exit.thread, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dma_set_mask_and_coherent.exit.thread:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 1099511627775) #7
  br label %if.end7

if.end7:                                          ; preds = %dma_set_mask_and_coherent.exit.thread, %lor.lhs.false.if.end7_crit_edge
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i24, !prof !147

if.then.i24:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call.i23 = tail call i32 %11(ptr noundef %host, i32 noundef 1036) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %13, i32 1036
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i24
  %retval.0.i = phi i32 [ %call.i23, %if.then.i24 ], [ %15, %if.else.i ]
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call10 = tail call zeroext i1 @of_dma_is_coherent(ptr noundef %17) #7
  %and = and i32 %retval.0.i, -65
  %masksel = select i1 %call10, i32 64, i32 0
  %value.0 = or i32 %masksel, %and
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i26 = icmp eq ptr %21, null
  br i1 %tobool.not.i26, label %do.body.i, label %if.then.i27, !prof !147

if.then.i27:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %host, i32 noundef %value.0, i32 noundef 1036) #7
  br label %cleanup

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %value.0) #7
  %ioaddr.i28 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %23 = ptrtoint ptr %ioaddr.i28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i28, align 16
  %add.ptr.i29 = getelementptr i8, ptr %24, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %22) #7, !srcloc !153
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i27, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then.i27 ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_of_get_max_clock(ptr nocapture noundef readonly %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i6 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %peripheral_clock = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i6, i32 0, i32 11
  %0 = ptrtoint ptr %peripheral_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peripheral_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.else ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esdhc_of_get_min_clock(ptr nocapture noundef readonly %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i9 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %peripheral_clock = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i9, i32 0, i32 11
  %0 = ptrtoint ptr %peripheral_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %peripheral_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clock3 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 1
  %2 = ptrtoint ptr %clock3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clock3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %clock.0 = phi i32 [ %3, %if.else ], [ %1, %entry.if.end_crit_edge ]
  %div48 = lshr i32 %clock.0, 12
  ret i32 %div48
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_pltfm_set_bus_width(ptr noundef %host, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 40) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and = and i32 %retval.0.i, -7
  %8 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %width, label %sdhci_readl.exit.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb1
  ]

sdhci_readl.exit.sw.epilog_crit_edge:             ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %and, 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or2 = or i32 %and, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %sdhci_readl.exit.sw.epilog_crit_edge
  %ctrl.0 = phi i32 [ %and, %sdhci_readl.exit.sw.epilog_crit_edge ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i8 = icmp eq ptr %12, null
  br i1 %tobool.not.i8, label %do.body.i, label %if.then.i9, !prof !147

if.then.i9:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %12(ptr noundef %host, i32 noundef %ctrl.0, i32 noundef 40) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0) #7
  %ioaddr.i10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i10, align 16
  %add.ptr.i11 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %13) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i74 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %quirk_delay_before_data_reset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %0 = ptrtoint ptr %quirk_delay_before_data_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %quirk_delay_before_data_reset, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = and i8 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and4 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true3.if.end_crit_edge, label %while.body.preheader

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body.preheader:                             ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  br label %if.end

if.end:                                           ; preds = %while.body.preheader, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  %conv7 = zext i8 %mask to i32
  %and8 = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.end
  %10 = ptrtoint ptr %private.i74 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %private.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %11)
  %cmp = icmp ult i8 %11, 19
  br i1 %cmp, label %if.then13, label %land.lhs.true10.land.lhs.true20_crit_edge

land.lhs.true10.land.lhs.true20_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true20

if.then13:                                        ; preds = %land.lhs.true10
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %15(ptr noundef %host, i32 noundef 40) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %17, i32 40
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %19, %if.else.i ]
  %and15 = and i32 %retval.0.i, 6
  br label %land.lhs.true20

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #7
  br label %if.end29

land.lhs.true20:                                  ; preds = %sdhci_readl.exit, %land.lhs.true10.land.lhs.true20_crit_edge
  %bus_width.0.ph = phi i32 [ 0, %land.lhs.true10.land.lhs.true20_crit_edge ], [ %and15, %sdhci_readl.exit ]
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #7
  %20 = ptrtoint ptr %private.i74 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %private.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %21)
  %cmp23 = icmp ult i8 %21, 19
  br i1 %cmp23, label %if.then25, label %land.lhs.true20.if.end29_crit_edge

land.lhs.true20.if.end29_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true20
  %ops.i75 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %22 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i75, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool.not.i76 = icmp eq ptr %25, null
  br i1 %tobool.not.i76, label %if.else.i81, label %if.then.i78, !prof !147

if.then.i78:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call.i77 = tail call i32 %25(ptr noundef %host, i32 noundef 40) #7
  br label %sdhci_readl.exit83

if.else.i81:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i79 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %26 = ptrtoint ptr %ioaddr.i79 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr.i79, align 16
  %add.ptr.i80 = getelementptr i8, ptr %27, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #7, !srcloc !150
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit83

sdhci_readl.exit83:                               ; preds = %if.else.i81, %if.then.i78
  %retval.0.i82 = phi i32 [ %call.i77, %if.then.i78 ], [ %29, %if.else.i81 ]
  %and27 = and i32 %retval.0.i82, -7
  %or = or i32 %and27, %bus_width.0.ph
  %30 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i75, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i85 = icmp eq ptr %33, null
  br i1 %tobool.not.i85, label %do.body.i, label %if.then.i86, !prof !147

if.then.i86:                                      ; preds = %sdhci_readl.exit83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %33(ptr noundef %host, i32 noundef %or, i32 noundef 40) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %34 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i87 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %35 = ptrtoint ptr %ioaddr.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i87, align 16
  %add.ptr.i88 = getelementptr i8, ptr %36, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %34) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i86
  %ier = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 66
  %37 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ier, align 4
  %39 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i75, align 4
  %write_l.i90 = getelementptr inbounds %struct.sdhci_ops, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %write_l.i90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write_l.i90, align 4
  %tobool.not.i91 = icmp eq ptr %42, null
  br i1 %tobool.not.i91, label %do.body.i95, label %if.then.i92, !prof !147

if.then.i92:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %42(ptr noundef %host, i32 noundef %38, i32 noundef 52) #7
  br label %sdhci_writel.exit96

do.body.i95:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %ioaddr.i93 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %44 = ptrtoint ptr %ioaddr.i93 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr.i93, align 16
  %add.ptr.i94 = getelementptr i8, ptr %45, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %43) #7, !srcloc !153
  br label %sdhci_writel.exit96

sdhci_writel.exit96:                              ; preds = %do.body.i95, %if.then.i92
  %46 = ptrtoint ptr %ier to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ier, align 4
  %48 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i75, align 4
  %write_l.i98 = getelementptr inbounds %struct.sdhci_ops, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %write_l.i98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write_l.i98, align 4
  %tobool.not.i99 = icmp eq ptr %51, null
  br i1 %tobool.not.i99, label %do.body.i103, label %if.then.i100, !prof !147

if.then.i100:                                     ; preds = %sdhci_writel.exit96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %51(ptr noundef %host, i32 noundef %47, i32 noundef 56) #7
  br label %if.end29

do.body.i103:                                     ; preds = %sdhci_writel.exit96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %ioaddr.i101 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %53 = ptrtoint ptr %ioaddr.i101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr.i101, align 16
  %add.ptr.i102 = getelementptr i8, ptr %54, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %52) #7, !srcloc !153
  br label %if.end29

if.end29:                                         ; preds = %do.body.i103, %if.then.i100, %land.lhs.true20.if.end29_crit_edge, %if.end16
  %and31 = and i32 %conv7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end45_crit_edge, label %land.lhs.true33

if.end29.if.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true33:                                  ; preds = %if.end29
  %spec_ver = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i74, i32 0, i32 1
  %55 = ptrtoint ptr %spec_ver to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %spec_ver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %56)
  %cmp35 = icmp ugt i8 %56, 1
  br i1 %cmp35, label %if.then37, label %land.lhs.true33.if.end45_crit_edge

land.lhs.true33.if.end45_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then37:                                        ; preds = %land.lhs.true33
  %ops.i105 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %57 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops.i105, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool.not.i106 = icmp eq ptr %60, null
  br i1 %tobool.not.i106, label %if.else.i111, label %if.then.i108, !prof !147

if.then.i108:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %call.i107 = tail call i32 %60(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit113

if.else.i111:                                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i109 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %61 = ptrtoint ptr %ioaddr.i109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr.i109, align 16
  %add.ptr.i110 = getelementptr i8, ptr %62, i32 288
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #7, !srcloc !150
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit113

sdhci_readl.exit113:                              ; preds = %if.else.i111, %if.then.i108
  %retval.0.i112 = phi i32 [ %call.i107, %if.then.i108 ], [ %64, %if.else.i111 ]
  %and39 = and i32 %retval.0.i112, -5
  %65 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i105, align 4
  %write_l.i115 = getelementptr inbounds %struct.sdhci_ops, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %write_l.i115 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write_l.i115, align 4
  %tobool.not.i116 = icmp eq ptr %68, null
  br i1 %tobool.not.i116, label %do.body.i120, label %if.then.i117, !prof !147

if.then.i117:                                     ; preds = %sdhci_readl.exit113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %68(ptr noundef %host, i32 noundef %and39, i32 noundef 288) #7
  br label %sdhci_writel.exit121

do.body.i120:                                     ; preds = %sdhci_readl.exit113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %69 = tail call i32 @llvm.bswap.i32(i32 %and39) #7
  %ioaddr.i118 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %70 = ptrtoint ptr %ioaddr.i118 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ioaddr.i118, align 16
  %add.ptr.i119 = getelementptr i8, ptr %71, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %69) #7, !srcloc !153
  br label %sdhci_writel.exit121

sdhci_writel.exit121:                             ; preds = %do.body.i120, %if.then.i117
  %quirk_unreliable_pulse_detection = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %72 = ptrtoint ptr %quirk_unreliable_pulse_detection to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %quirk_unreliable_pulse_detection, align 4, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool40.not = icmp eq i8 %73, 0
  br i1 %tobool40.not, label %sdhci_writel.exit121.if.end45_crit_edge, label %if.then41

sdhci_writel.exit121.if.end45_crit_edge:          ; preds = %sdhci_writel.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %sdhci_writel.exit121
  %74 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i105, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %tobool.not.i123 = icmp eq ptr %77, null
  br i1 %tobool.not.i123, label %if.else.i128, label %if.then.i125, !prof !147

if.then.i125:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %call.i124 = tail call i32 %77(ptr noundef %host, i32 noundef 356) #7
  br label %sdhci_readl.exit130

if.else.i128:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i126 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %78 = ptrtoint ptr %ioaddr.i126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr.i126, align 16
  %add.ptr.i127 = getelementptr i8, ptr %79, i32 356
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #7, !srcloc !150
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit130

sdhci_readl.exit130:                              ; preds = %if.else.i128, %if.then.i125
  %retval.0.i129 = phi i32 [ %call.i124, %if.then.i125 ], [ %81, %if.else.i128 ]
  %and43 = and i32 %retval.0.i129, 2147483647
  %82 = ptrtoint ptr %ops.i105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops.i105, align 4
  %write_l.i132 = getelementptr inbounds %struct.sdhci_ops, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %write_l.i132 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write_l.i132, align 4
  %tobool.not.i133 = icmp eq ptr %85, null
  br i1 %tobool.not.i133, label %do.body.i137, label %if.then.i134, !prof !147

if.then.i134:                                     ; preds = %sdhci_readl.exit130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %85(ptr noundef %host, i32 noundef %and43, i32 noundef 356) #7
  br label %if.end45

do.body.i137:                                     ; preds = %sdhci_readl.exit130
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %and43) #7
  %ioaddr.i135 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %87 = ptrtoint ptr %ioaddr.i135 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ioaddr.i135, align 16
  %add.ptr.i136 = getelementptr i8, ptr %88, i32 356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %86) #7, !srcloc !153
  br label %if.end45

if.end45:                                         ; preds = %do.body.i137, %if.then.i134, %sdhci_writel.exit121.if.end45_crit_edge, %land.lhs.true33.if.end45_crit_edge, %if.end29.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdhci_readl.exit.if.end_crit_edge, label %if.then

sdhci_readl.exit.if.end_crit_edge:                ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sdhci_readl.exit
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not.i40 = icmp eq ptr %11, null
  br i1 %tobool.not.i40, label %if.else.i45, label %if.then.i42, !prof !147

if.then.i42:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i41 = tail call i32 %11(ptr noundef %host, i32 noundef 328) #7
  br label %sdhci_readl.exit47

if.else.i45:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i43 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i43, align 16
  %add.ptr.i44 = getelementptr i8, ptr %13, i32 328
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !150
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit47

sdhci_readl.exit47:                               ; preds = %if.else.i45, %if.then.i42
  %retval.0.i46 = phi i32 [ %call.i41, %if.then.i42 ], [ %15, %if.else.i45 ]
  %and2 = and i32 %retval.0.i46, -32769
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i49 = icmp eq ptr %19, null
  br i1 %tobool.not.i49, label %do.body.i, label %if.then.i50, !prof !147

if.then.i50:                                      ; preds = %sdhci_readl.exit47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %host, i32 noundef %and2, i32 noundef 328) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %and2) #7
  %ioaddr.i51 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr.i51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i51, align 16
  %add.ptr.i52 = getelementptr i8, ptr %22, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %20) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i50
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool.not.i54 = icmp eq ptr %26, null
  br i1 %tobool.not.i54, label %if.else.i59, label %if.then.i56, !prof !147

if.then.i56:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i55 = tail call i32 %26(ptr noundef %host, i32 noundef 324) #7
  br label %sdhci_readl.exit61

if.else.i59:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i57 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i57, align 16
  %add.ptr.i58 = getelementptr i8, ptr %28, i32 324
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #7, !srcloc !150
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit61

sdhci_readl.exit61:                               ; preds = %if.else.i59, %if.then.i56
  %retval.0.i60 = phi i32 [ %call.i55, %if.then.i56 ], [ %30, %if.else.i59 ]
  %and4 = and i32 %retval.0.i60, -32769
  %31 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i, align 4
  %write_l.i63 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write_l.i63 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write_l.i63, align 4
  %tobool.not.i64 = icmp eq ptr %34, null
  br i1 %tobool.not.i64, label %do.body.i68, label %if.then.i65, !prof !147

if.then.i65:                                      ; preds = %sdhci_readl.exit61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %34(ptr noundef %host, i32 noundef %and4, i32 noundef 324) #7
  br label %sdhci_writel.exit69

do.body.i68:                                      ; preds = %sdhci_readl.exit61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %and4) #7
  %ioaddr.i66 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i66, align 16
  %add.ptr.i67 = getelementptr i8, ptr %37, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 %35) #7, !srcloc !153
  br label %sdhci_writel.exit69

sdhci_writel.exit69:                              ; preds = %do.body.i68, %if.then.i65
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext false)
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool.not.i71 = icmp eq ptr %41, null
  br i1 %tobool.not.i71, label %if.else.i76, label %if.then.i73, !prof !147

if.then.i73:                                      ; preds = %sdhci_writel.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %call.i72 = tail call i32 %41(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit78

if.else.i76:                                      ; preds = %sdhci_writel.exit69
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i74 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %42 = ptrtoint ptr %ioaddr.i74 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i74, align 16
  %add.ptr.i75 = getelementptr i8, ptr %43, i32 288
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #7, !srcloc !150
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit78

sdhci_readl.exit78:                               ; preds = %if.else.i76, %if.then.i73
  %retval.0.i77 = phi i32 [ %call.i72, %if.then.i73 ], [ %45, %if.else.i76 ]
  %and6 = and i32 %retval.0.i77, -17
  %46 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i, align 4
  %write_l.i80 = getelementptr inbounds %struct.sdhci_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %write_l.i80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_l.i80, align 4
  %tobool.not.i81 = icmp eq ptr %49, null
  br i1 %tobool.not.i81, label %do.body.i85, label %if.then.i82, !prof !147

if.then.i82:                                      ; preds = %sdhci_readl.exit78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %49(ptr noundef %host, i32 noundef %and6, i32 noundef 288) #7
  br label %sdhci_writel.exit86

do.body.i85:                                      ; preds = %sdhci_readl.exit78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %and6) #7
  %ioaddr.i83 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %51 = ptrtoint ptr %ioaddr.i83 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i83, align 16
  %add.ptr.i84 = getelementptr i8, ptr %52, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %50) #7, !srcloc !153
  br label %sdhci_writel.exit86

sdhci_writel.exit86:                              ; preds = %do.body.i85, %if.then.i82
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext true)
  %53 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ops.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %tobool.not.i88 = icmp eq ptr %56, null
  br i1 %tobool.not.i88, label %if.else.i93, label %if.then.i90, !prof !147

if.then.i90:                                      ; preds = %sdhci_writel.exit86
  call void @__sanitizer_cov_trace_pc() #9
  %call.i89 = tail call i32 %56(ptr noundef %host, i32 noundef 352) #7
  br label %sdhci_readl.exit95

if.else.i93:                                      ; preds = %sdhci_writel.exit86
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i91 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %57 = ptrtoint ptr %ioaddr.i91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i91, align 16
  %add.ptr.i92 = getelementptr i8, ptr %58, i32 352
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #7, !srcloc !150
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit95

sdhci_readl.exit95:                               ; preds = %if.else.i93, %if.then.i90
  %retval.0.i94 = phi i32 [ %call.i89, %if.then.i90 ], [ %60, %if.else.i93 ]
  %and8 = and i32 %retval.0.i94, 2013265919
  %61 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i, align 4
  %write_l.i97 = getelementptr inbounds %struct.sdhci_ops, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %write_l.i97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_l.i97, align 4
  %tobool.not.i98 = icmp eq ptr %64, null
  br i1 %tobool.not.i98, label %do.body.i102, label %if.then.i99, !prof !147

if.then.i99:                                      ; preds = %sdhci_readl.exit95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %64(ptr noundef %host, i32 noundef %and8, i32 noundef 352) #7
  br label %sdhci_writel.exit103

do.body.i102:                                     ; preds = %sdhci_readl.exit95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %and8) #7
  %ioaddr.i100 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %66 = ptrtoint ptr %ioaddr.i100 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr.i100, align 16
  %add.ptr.i101 = getelementptr i8, ptr %67, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %65) #7, !srcloc !153
  br label %sdhci_writel.exit103

sdhci_writel.exit103:                             ; preds = %do.body.i102, %if.then.i99
  %68 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool.not.i105 = icmp eq ptr %71, null
  br i1 %tobool.not.i105, label %if.else.i110, label %if.then.i107, !prof !147

if.then.i107:                                     ; preds = %sdhci_writel.exit103
  call void @__sanitizer_cov_trace_pc() #9
  %call.i106 = tail call i32 %71(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit112

if.else.i110:                                     ; preds = %sdhci_writel.exit103
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i108 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %72 = ptrtoint ptr %ioaddr.i108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr.i108, align 16
  %add.ptr.i109 = getelementptr i8, ptr %73, i32 288
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #7, !srcloc !150
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit112

sdhci_readl.exit112:                              ; preds = %if.else.i110, %if.then.i107
  %retval.0.i111 = phi i32 [ %call.i106, %if.then.i107 ], [ %75, %if.else.i110 ]
  %and10 = and i32 %retval.0.i111, -65
  %76 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i, align 4
  %write_l.i114 = getelementptr inbounds %struct.sdhci_ops, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %write_l.i114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write_l.i114, align 4
  %tobool.not.i115 = icmp eq ptr %79, null
  br i1 %tobool.not.i115, label %do.body.i119, label %if.then.i116, !prof !147

if.then.i116:                                     ; preds = %sdhci_readl.exit112
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %79(ptr noundef %host, i32 noundef %and10, i32 noundef 288) #7
  br label %sdhci_writel.exit120

do.body.i119:                                     ; preds = %sdhci_readl.exit112
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %and10) #7
  %ioaddr.i117 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %81 = ptrtoint ptr %ioaddr.i117 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr.i117, align 16
  %add.ptr.i118 = getelementptr i8, ptr %82, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %80) #7, !srcloc !153
  br label %sdhci_writel.exit120

sdhci_writel.exit120:                             ; preds = %do.body.i119, %if.then.i116
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %host, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %sdhci_writel.exit120, %sdhci_readl.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %timing)
  %cmp = icmp eq i32 %timing, 10
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @esdhc_tuning_block_enable(ptr noundef %host, i1 noundef zeroext true)
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sdhci_set_uhs_signaling(ptr noundef %host, i32 noundef %timing) #7
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_of_adma_workaround(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %intmask, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %.not = icmp eq i32 %0, 6
  br i1 %.not, label %land.rhs, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %entry
  %private.i25 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %1 = ptrtoint ptr %private.i25 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %private.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %2)
  %cmp = icmp eq i8 %2, 19
  br i1 %cmp, label %if.end, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.rhs
  %data = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 36
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 16
  %error = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error, align 4
  %6 = load ptr, ptr %data, align 16
  %sg = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_address, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes_xfered, align 4
  %add = add i32 %10, 524288
  %13 = add i32 %add, %12
  %add9 = and i32 %13, -524288
  %sub = sub i32 %add9, %10
  store i32 %sub, ptr %bytes_xfered, align 4
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %17(ptr noundef %host, i32 noundef %add9, i32 noundef 0) #7
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %add9) #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !153
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i35 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %0 = ptrtoint ptr %private.i35 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %private.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %1)
  %cmp = icmp ult i8 %1, 19
  %spec.select = select i1 %cmp, i32 15, i32 8
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %5(ptr noundef %host, i32 noundef 44) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %or5 = or i32 %retval.0.i, %spec.select
  %neg = xor i32 %spec.select, -1
  %and = and i32 %retval.0.i, %neg
  %val.0 = select i1 %enable, i32 %or5, i32 %and
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i37 = icmp eq ptr %13, null
  br i1 %tobool.not.i37, label %do.body.i, label %if.then.i38, !prof !147

if.then.i38:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %host, i32 noundef %val.0, i32 noundef 44) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %ioaddr.i39 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %15 = ptrtoint ptr %ioaddr.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i39, align 16
  %add.ptr.i40 = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %14) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i38
  %call7 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call7, 20000000
  %17 = ptrtoint ptr %private.i35 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %private.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %18)
  %cmp1154 = icmp ugt i8 %18, 18
  br i1 %cmp1154, label %while.body.lr.ph, label %sdhci_writel.exit.while.end_crit_edge

sdhci_writel.exit.while.end_crit_edge:            ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %sdhci_writel.exit
  %ioaddr.i45 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i.i = icmp sgt i64 %call13, %add.i
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i42 = icmp eq ptr %22, null
  br i1 %tobool.not.i42, label %if.else.i47, label %if.then.i44, !prof !147

if.then.i44:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i43 = tail call i32 %22(ptr noundef %host, i32 noundef 36) #7
  br label %sdhci_readl.exit49

if.else.i47:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ioaddr.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i45, align 16
  %add.ptr.i46 = getelementptr i8, ptr %24, i32 36
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #7, !srcloc !150
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit49

sdhci_readl.exit49:                               ; preds = %if.else.i47, %if.then.i44
  %retval.0.i48 = phi i32 [ %call.i43, %if.then.i44 ], [ %26, %if.else.i47 ]
  %and17 = and i32 %retval.0.i48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %sdhci_readl.exit49.while.end_crit_edge

sdhci_readl.exit49.while.end_crit_edge:           ; preds = %sdhci_readl.exit49
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end20:                                         ; preds = %sdhci_readl.exit49
  br i1 %cmp3.i.i, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end20
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %27 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i50 = icmp eq ptr %30, null
  br i1 %tobool.not.i50, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %28, i32 0, i32 1
  %31 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i51 = phi ptr [ %32, %if.end.i ], [ %30, %do.end.dev_name.exit_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %retval.0.i51) #10
  br label %while.end

cleanup:                                          ; preds = %if.end20
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  %33 = ptrtoint ptr %private.i35 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %private.i35, align 4
  %cmp11 = icmp ugt i8 %34, 18
  br i1 %cmp11, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %dev_name.exit, %sdhci_readl.exit49.while.end_crit_edge, %sdhci_writel.exit.while.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esdhc_flush_async_fifo(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 1036) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 1036
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %or = or i32 %retval.0.i, 262144
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i16 = icmp eq ptr %11, null
  br i1 %tobool.not.i16, label %do.body.i, label %if.then.i17, !prof !147

if.then.i17:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %host, i32 noundef %or, i32 noundef 1036) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i18 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i18, align 16
  %add.ptr.i19 = getelementptr i8, ptr %14, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %12) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i17
  %call1 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call1, 20000000
  %ioaddr.i24 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %sdhci_writel.exit
  %call3 = tail call i64 @ktime_get() #7
  %cmp3.i.i = icmp sgt i64 %call3, %add.i
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool.not.i21 = icmp eq ptr %18, null
  br i1 %tobool.not.i21, label %if.else.i26, label %if.then.i23, !prof !147

if.then.i23:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call.i22 = tail call i32 %18(ptr noundef %host, i32 noundef 1036) #7
  br label %sdhci_readl.exit28

if.else.i26:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %ioaddr.i24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i24, align 16
  %add.ptr.i25 = getelementptr i8, ptr %20, i32 1036
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #7, !srcloc !150
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit28

sdhci_readl.exit28:                               ; preds = %if.else.i26, %if.then.i23
  %retval.0.i27 = phi i32 [ %call.i22, %if.then.i23 ], [ %22, %if.else.i26 ]
  %and = and i32 %retval.0.i27, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sdhci_readl.exit28.while.end_crit_edge, label %if.end

sdhci_readl.exit28.while.end_crit_edge:           ; preds = %sdhci_readl.exit28
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %sdhci_readl.exit28
  br i1 %cmp3.i.i, label %do.end, label %cleanup

do.end:                                           ; preds = %if.end
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %23 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i29 = icmp eq ptr %26, null
  br i1 %tobool.not.i29, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i30 = phi ptr [ %28, %if.end.i ], [ %26, %do.end.dev_name.exit_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %retval.0.i30) #10
  br label %while.end

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  br label %while.cond

while.end:                                        ; preds = %dev_name.exit, %sdhci_readl.exit28.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_dma_is_coherent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esdhc_tuning_block_enable(ptr noundef %host, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext false)
  tail call fastcc void @esdhc_flush_async_fifo(ptr noundef %host)
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and = and i32 %retval.0.i, -5
  %masksel = select i1 %enable, i32 4, i32 0
  %val.0 = or i32 %and, %masksel
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i8 = icmp eq ptr %11, null
  br i1 %tobool.not.i8, label %do.body.i, label %if.then.i9, !prof !147

if.then.i9:                                       ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %host, i32 noundef %val.0, i32 noundef 288) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %val.0) #7
  %ioaddr.i10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i10, align 16
  %add.ptr.i11 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %12) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i9
  tail call fastcc void @esdhc_clock_enable(ptr noundef %host, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_uhs_signaling(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_be_readl(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %reg)
  %cmp = icmp eq i32 %reg, 68
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  br i1 %cmp, label %if.end5.i.thread, label %if.end

if.end5.i.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %1, i32 276
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %and18.i = and i32 %2, -8
  br label %esdhc_readl_fixup.exit

if.end:                                           ; preds = %entry
  %add.ptr3 = getelementptr i8, ptr %1, i32 %reg
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %reg)
  %cmp.i = icmp ne i32 %reg, 64
  %and.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end5.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %private.i49.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %4 = ptrtoint ptr %private.i49.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %private.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %5)
  %cmp2.i = icmp ugt i8 %5, 18
  %or.i = or i32 %3, 524288
  %spec.select.i = select i1 %cmp2.i, i32 %or.i, i32 %3
  br label %esdhc_readl_fixup.exit

if.end5.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %reg)
  %cond = icmp eq i32 %reg, 36
  br i1 %cond, label %if.then8.i, label %if.end5.i.esdhc_readl_fixup.exit_crit_edge

if.end5.i.esdhc_readl_fixup.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_readl_fixup.exit

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %and9.i = and i32 %3, 1048575
  %shr.i = lshr i32 %3, 4
  %and10.i = and i32 %shr.i, 15728640
  %or11.i = or i32 %and10.i, %and9.i
  %shl.i = shl i32 %3, 1
  %and12.i = and i32 %shl.i, 16777216
  %or13.i = or i32 %or11.i, %and12.i
  br label %esdhc_readl_fixup.exit

esdhc_readl_fixup.exit:                           ; preds = %if.then8.i, %if.end5.i.esdhc_readl_fixup.exit_crit_edge, %if.then.i, %if.end5.i.thread
  %retval.0.i = phi i32 [ %or13.i, %if.then8.i ], [ %and18.i, %if.end5.i.thread ], [ %3, %if.end5.i.esdhc_readl_fixup.exit_crit_edge ], [ %spec.select.i, %if.then.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @esdhc_be_readw(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %private.i21.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_mode_shadow.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %3 = ptrtoint ptr %xfer_mode_shadow.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %xfer_mode_shadow.i, align 8
  br label %esdhc_readw_fixup.exit

if.end.i:                                         ; preds = %entry
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %reg)
  %cmp2.i = icmp eq i32 %reg, 254
  %shr.i = select i1 %cmp2.i, i32 0, i32 %mul.i
  %ret.0.in.i = lshr i32 %2, %shr.i
  %ret.0.i = trunc i32 %ret.0.in.i to i16
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.esdhc_readw_fixup.exit_crit_edge

if.end.i.esdhc_readw_fixup.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_readw_fixup.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %quirk_incorrect_hostver.i = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i21.i, i32 0, i32 2
  %5 = ptrtoint ptr %quirk_incorrect_hostver.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %quirk_incorrect_hostver.i, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %spec.select.i = select i1 %tobool.not.i, i16 %ret.0.i, i16 4865
  br label %esdhc_readw_fixup.exit

esdhc_readw_fixup.exit:                           ; preds = %land.lhs.true.i, %if.end.i.esdhc_readw_fixup.exit_crit_edge, %if.then.i
  %retval.0.i = phi i16 [ %4, %if.then.i ], [ %ret.0.i, %if.end.i.esdhc_readw_fixup.exit_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  ret i16 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @esdhc_be_readb(ptr nocapture noundef readonly %host, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 24
  %shr.i = lshr i32 %2, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 40
  %shr3.i = lshr i32 %2, 5
  %conv5.i = and i32 %shr3.i, 24
  %conv8.i = and i32 %shr.i, 231
  %or.i = or i32 %conv8.i, %conv5.i
  %ret.0.in.i = select i1 %cmp.i, i32 %or.i, i32 %shr.i
  %ret.0.i = trunc i32 %ret.0.in.i to i8
  ret i8 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_be_writel(ptr nocapture noundef readonly %host, i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 52
  %or.i = or i32 %val, 4
  %ret.0.i = select i1 %cmp.i, i32 %or.i, i32 %val
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %ret.0.i) #7, !srcloc !153
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_be_writew(ptr nocapture noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i35 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  %3 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %reg, label %esdhc_writew_fixup.exit [
    i32 12, label %esdhc_writew_fixup.exit.thread
    i32 14, label %esdhc_writew_fixup.exit.thread39
  ]

esdhc_writew_fixup.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_mode_shadow.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %4 = ptrtoint ptr %xfer_mode_shadow.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %val, ptr %xfer_mode_shadow.i, align 8
  br label %if.end

esdhc_writew_fixup.exit.thread39:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %val to i32
  %shl.i = shl nuw i32 %conv.i, 16
  %xfer_mode_shadow2.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 2
  %5 = ptrtoint ptr %xfer_mode_shadow2.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %xfer_mode_shadow2.i, align 8
  %conv3.i = zext i16 %6 to i32
  %or.i = or i32 %shl.i, %conv3.i
  br label %do.body

esdhc_writew_fixup.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 16
  %shl4.i = shl nuw i32 65535, %mul.i
  %neg.i = xor i32 %shl4.i, -1
  %and5.i = and i32 %2, %neg.i
  %conv6.i = zext i16 %val to i32
  %shl7.i = shl nuw i32 %conv6.i, %mul.i
  %or8.i = or i32 %and5.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg)
  %cmp.i = icmp eq i32 %reg, 4
  %and10.i = and i32 %or8.i, -28673
  %spec.select.i = select i1 %cmp.i, i32 %and10.i, i32 %or8.i
  br label %do.body

do.body:                                          ; preds = %esdhc_writew_fixup.exit, %esdhc_writew_fixup.exit.thread39
  %retval.0.i42 = phi i32 [ %or.i, %esdhc_writew_fixup.exit.thread39 ], [ %spec.select.i, %esdhc_writew_fixup.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr, align 16
  %add.ptr5 = getelementptr i8, ptr %8, i32 %and
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %retval.0.i42) #7, !srcloc !153
  br label %if.end

if.end:                                           ; preds = %do.body, %esdhc_writew_fixup.exit.thread
  %retval.0.i38 = phi i32 [ %2, %esdhc_writew_fixup.exit.thread ], [ %retval.0.i42, %do.body ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and)
  %cmp6 = icmp ne i32 %and, 60
  %and8 = and i32 %2, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp ne i32 %and8, 0
  %or.cond = select i1 %cmp6, i1 true, i1 %tobool.not
  %and9 = and i32 %retval.0.i38, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %or.cond34 = select i1 %or.cond, i1 true, i1 %tobool10.not
  br i1 %or.cond34, label %if.end.if.end20_crit_edge, label %land.lhs.true11

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true11:                                  ; preds = %if.end
  %in_sw_tuning = getelementptr inbounds %struct.sdhci_esdhc, ptr %private.i35, i32 0, i32 10
  %9 = ptrtoint ptr %in_sw_tuning to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in_sw_tuning, align 2, !range !159
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.end20_crit_edge, label %if.then13

land.lhs.true11.if.end20_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #7
  %or = or i32 %retval.0.i38, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 16
  %add.ptr18 = getelementptr i8, ptr %13, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %or) #7, !srcloc !153
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %land.lhs.true11.if.end20_crit_edge, %if.end.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esdhc_be_writeb(ptr nocapture noundef readonly %host, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, -4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %3 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %reg, label %if.end17.i [
    i32 41, label %entry.esdhc_writeb_fixup.exit_crit_edge
    i32 40, label %if.then2.i
  ]

entry.esdhc_writeb_fixup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_writeb_fixup.exit

if.then2.i:                                       ; preds = %entry
  %quirks2.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %quirks2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks2.i, align 8
  %and3.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.then2.i.esdhc_writeb_fixup.exit_crit_edge

if.then2.i.esdhc_writeb_fixup.exit_crit_edge:     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %esdhc_writeb_fixup.exit

if.end5.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %val to i32
  %and6.i = shl nuw nsw i32 %conv.i, 5
  %shl.i = and i32 %and6.i, 768
  %and7.i = and i32 %2, -1024
  %and9.i = and i32 %conv.i, 230
  %and10.i = and i32 %2, 24
  %or.i = or i32 %shl.i, %and9.i
  %or11.i = or i32 %or.i, %and10.i
  %or15.i = or i32 %or11.i, %and7.i
  br label %esdhc_writeb_fixup.exit

if.end17.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = shl i32 %reg, 3
  %mul.i = and i32 %and.i, 24
  %shl18.i = shl nuw i32 255, %mul.i
  %neg.i = xor i32 %shl18.i, -1
  %and19.i = and i32 %2, %neg.i
  %conv20.i = zext i8 %val to i32
  %shl21.i = shl nuw i32 %conv20.i, %mul.i
  %or22.i = or i32 %and19.i, %shl21.i
  br label %esdhc_writeb_fixup.exit

esdhc_writeb_fixup.exit:                          ; preds = %if.end17.i, %if.end5.i, %if.then2.i.esdhc_writeb_fixup.exit_crit_edge, %entry.esdhc_writeb_fixup.exit_crit_edge
  %retval.0.i = phi i32 [ %or15.i, %if.end5.i ], [ %or22.i, %if.end17.i ], [ %2, %entry.esdhc_writeb_fixup.exit_crit_edge ], [ %2, %if.then2.i.esdhc_writeb_fixup.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 16
  %add.ptr3 = getelementptr i8, ptr %7, i32 %and
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %retval.0.i) #7, !srcloc !153
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_execute_tuning(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esdhc_tuning_window_ptr(ptr noundef %host, ptr nocapture noundef writeonly %window_start, ptr nocapture noundef writeonly %window_end) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %3(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 288
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %7, %if.else.i ]
  %and = and i32 %retval.0.i, -3841
  %or = or i32 %and, 2048
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i18 = icmp eq ptr %11, null
  br i1 %tobool.not.i18, label %do.body.i, label %if.then.i19, !prof !147

if.then.i19:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %host, i32 noundef %or, i32 noundef 288) #7
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %ioaddr.i20 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %13 = ptrtoint ptr %ioaddr.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i20, align 16
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %12) #7, !srcloc !153
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i23 = icmp eq ptr %19, null
  br i1 %tobool.not.i23, label %if.else.i28, label %if.then.i25, !prof !147

if.then.i25:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i24 = tail call i32 %19(ptr noundef %host, i32 noundef 288) #7
  br label %sdhci_readl.exit30

if.else.i28:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i26 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %20 = ptrtoint ptr %ioaddr.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr.i26, align 16
  %add.ptr.i27 = getelementptr i8, ptr %21, i32 288
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !150
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit30

sdhci_readl.exit30:                               ; preds = %if.else.i28, %if.then.i25
  %retval.0.i29 = phi i32 [ %call.i24, %if.then.i25 ], [ %23, %if.else.i28 ]
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %write_l.i32 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %write_l.i32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_l.i32, align 4
  %tobool.not.i33 = icmp eq ptr %27, null
  br i1 %tobool.not.i33, label %do.body.i37, label %if.then.i34, !prof !147

if.then.i34:                                      ; preds = %sdhci_readl.exit30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %27(ptr noundef %host, i32 noundef %retval.0.i29, i32 noundef 288) #7
  br label %sdhci_writel.exit38

do.body.i37:                                      ; preds = %sdhci_readl.exit30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i29) #7
  %ioaddr.i35 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %29 = ptrtoint ptr %ioaddr.i35 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i35, align 16
  %add.ptr.i36 = getelementptr i8, ptr %30, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %28) #7, !srcloc !153
  br label %sdhci_writel.exit38

sdhci_writel.exit38:                              ; preds = %do.body.i37, %if.then.i34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #7
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i40 = icmp eq ptr %35, null
  br i1 %tobool.not.i40, label %if.else.i45, label %if.then.i42, !prof !147

if.then.i42:                                      ; preds = %sdhci_writel.exit38
  call void @__sanitizer_cov_trace_pc() #9
  %call.i41 = tail call i32 %35(ptr noundef %host, i32 noundef 292) #7
  br label %sdhci_readl.exit47

if.else.i45:                                      ; preds = %sdhci_writel.exit38
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i43 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %36 = ptrtoint ptr %ioaddr.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr.i43, align 16
  %add.ptr.i44 = getelementptr i8, ptr %37, i32 292
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #7, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit47

sdhci_readl.exit47:                               ; preds = %if.else.i45, %if.then.i42
  %39 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %tobool.not.i49 = icmp eq ptr %42, null
  br i1 %tobool.not.i49, label %if.else.i54, label %if.then.i51, !prof !147

if.then.i51:                                      ; preds = %sdhci_readl.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %call.i50 = tail call i32 %42(ptr noundef %host, i32 noundef 292) #7
  br label %sdhci_readl.exit56

if.else.i54:                                      ; preds = %sdhci_readl.exit47
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i52 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %43 = ptrtoint ptr %ioaddr.i52 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i52, align 16
  %add.ptr.i53 = getelementptr i8, ptr %44, i32 292
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !150
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit56

sdhci_readl.exit56:                               ; preds = %if.else.i54, %if.then.i51
  %retval.0.i55 = phi i32 [ %call.i50, %if.then.i51 ], [ %46, %if.else.i54 ]
  %conv = trunc i32 %retval.0.i55 to i8
  %47 = ptrtoint ptr %window_end to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv, ptr %window_end, align 1
  %shr = lshr i32 %retval.0.i55, 8
  %conv6 = trunc i32 %shr to i8
  %48 = ptrtoint ptr %window_start to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv6, ptr %window_start, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_of_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 40) #7
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !150
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  store i32 %retval.0.i, ptr @esdhc_proctl, align 4
  %tuning_mode = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 73
  %10 = ptrtoint ptr %tuning_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuning_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not = icmp eq i32 %11, 2
  br i1 %cmp.not, label %sdhci_readl.exit.if.end_crit_edge, label %if.then

sdhci_readl.exit.if.end_crit_edge:                ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sdhci_readl.exit
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 8
  %can_retune.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 29
  %14 = ptrtoint ptr %can_retune.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load.i = load i16, ptr %can_retune.i, align 8
  %15 = and i16 %bf.load.i, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i6 = icmp eq i16 %15, 0
  br i1 %tobool.not.i6, label %if.then.if.end_crit_edge, label %if.then.i7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i7:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %need_retune.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 32
  %16 = ptrtoint ptr %need_retune.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %need_retune.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i7, %if.then.if.end_crit_edge, %sdhci_readl.exit.if.end_crit_edge
  %call2 = tail call i32 @sdhci_suspend_host(ptr noundef %1) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @esdhc_of_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @sdhci_resume_host(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @esdhc_of_enable_dma(ptr noundef %1)
  %2 = load i32, ptr @esdhc_proctl, align 4
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i, !prof !147

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %6(ptr noundef %1, i32 noundef %2, i32 noundef 40) #7
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %9, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #7, !srcloc !153
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_suspend_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_sdhci_of_esdhc__274_1519_sdhci_esdhc_driver_init6, !1, !"__initcall__kmod_sdhci_of_esdhc__274_1519_sdhci_esdhc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1519, i32 1}
!2 = !{ptr @__exitcall_sdhci_esdhc_driver_exit, !1, !"__exitcall_sdhci_esdhc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description275, !4, !"__UNIQUE_ID_description275", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1521, i32 1}
!5 = !{ptr @__UNIQUE_ID_author276, !6, !"__UNIQUE_ID_author276", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1522, i32 1}
!7 = !{ptr @__UNIQUE_ID_file277, !8, !"__UNIQUE_ID_file277", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1524, i32 1}
!9 = !{ptr @__UNIQUE_ID_license278, !8, !"__UNIQUE_ID_license278", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1510, i32 11}
!12 = !{ptr @sdhci_esdhc_driver, !13, !"sdhci_esdhc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1508, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1428, i32 32}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1466, i32 42}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1471, i32 34}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1472, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1473, i32 34}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1474, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1475, i32 34}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1478, i32 34}
!30 = !{ptr @sdhci_esdhc_le_pdata, !31, !"sdhci_esdhc_le_pdata", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1309, i32 38}
!32 = !{ptr @sdhci_esdhc_le_ops, !33, !"sdhci_esdhc_le_ops", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1281, i32 31}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 697, i32 4}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @esdhc_of_set_clock._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @esdhc_of_set_clock._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 705, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @esdhc_of_set_clock.__UNIQUE_ID_ddebug273, !41, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 731, i32 4}
!46 = !{ptr @esdhc_of_set_clock._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @esdhc_of_set_clock._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 764, i32 4}
!50 = !{ptr @esdhc_of_set_clock._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @esdhc_of_set_clock._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 610, i32 4}
!54 = !{ptr @esdhc_clock_enable._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @esdhc_clock_enable._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 636, i32 4}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @esdhc_flush_async_fifo._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @esdhc_flush_async_fifo._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 531, i32 44}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 532, i32 44}
!65 = !{ptr @sdhci_esdhc_be_pdata, !66, !"sdhci_esdhc_be_pdata", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1299, i32 38}
!67 = !{ptr @sdhci_esdhc_be_ops, !68, !"sdhci_esdhc_be_ops", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1263, i32 31}
!69 = !{ptr @scfg_device_ids, !70, !"scfg_device_ids", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 867, i32 34}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1127, i32 4}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @esdhc_execute_tuning._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @esdhc_execute_tuning._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1147, i32 5}
!78 = !{ptr @esdhc_execute_tuning._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @esdhc_execute_tuning._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1388, i32 35}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1389, i32 35}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1317, i32 14}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1317, i32 41}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1318, i32 41}
!90 = !{ptr @soc_incorrect_hostver, !91, !"soc_incorrect_hostver", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1316, i32 36}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1323, i32 14}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1325, i32 14}
!96 = !{ptr @soc_fixup_sdhc_clkdivs, !97, !"soc_fixup_sdhc_clkdivs", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1322, i32 36}
!98 = !{ptr @soc_unreliable_pulse_detection, !99, !"soc_unreliable_pulse_detection", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1329, i32 36}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 933, i32 14}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 934, i32 14}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 935, i32 14}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 936, i32 14}
!108 = !{ptr @soc_tuning_erratum_type1, !109, !"soc_tuning_erratum_type1", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 932, i32 36}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 941, i32 14}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 942, i32 14}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 943, i32 14}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 944, i32 14}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 945, i32 14}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 946, i32 14}
!122 = !{ptr @soc_tuning_erratum_type2, !123, !"soc_tuning_erratum_type2", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 940, i32 36}
!124 = !{ptr @sdhci_esdhc_of_match, !125, !"sdhci_esdhc_of_match", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 64, i32 34}
!126 = !{ptr @ls1021a_esdhc_clk, !127, !"ls1021a_esdhc_clk", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 39, i32 37}
!128 = !{ptr @ls1046a_esdhc_clk, !129, !"ls1046a_esdhc_clk", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 45, i32 37}
!130 = !{ptr @ls1012a_esdhc_clk, !131, !"ls1012a_esdhc_clk", i1 false, i1 false}
!131 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 51, i32 37}
!132 = !{ptr @p1010_esdhc_clk, !133, !"p1010_esdhc_clk", i1 false, i1 false}
!133 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 57, i32 37}
!134 = !{ptr @esdhc_of_dev_pm_ops, !135, !"esdhc_of_dev_pm_ops", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1259, i32 8}
!136 = !{ptr @esdhc_proctl, !137, !"esdhc_proctl", i1 false, i1 false}
!137 = !{!"../drivers/mmc/host/sdhci-of-esdhc.c", i32 1232, i32 12}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 724245}
!149 = !{i64 2154808695}
!150 = !{i64 725083}
!151 = !{i64 2154807991}
!152 = !{i64 2154806021}
!153 = !{i64 724665}
!154 = !{i64 2154832765}
!155 = !{i64 2154834416}
!156 = !{!"auto-init"}
!157 = !{i64 2154807233}
!158 = !{i64 724468}
!159 = !{i8 0, i8 2}
!160 = !{i64 2148910256}
!161 = !{i64 2148911611}
!162 = !{i64 2148202306, i64 2148202311, i64 2148202324, i64 2148202368, i64 2148202402, i64 2148202423}
!163 = !{i64 2154813672}
!164 = !{i64 2154813974}
!165 = !{i64 2154814307}
!166 = !{i64 2154814620}
!167 = !{i64 2154814873}
!168 = !{i64 2154815249}
!169 = !{i64 2154815497}
!170 = !{i64 2154816374}
!171 = !{i64 2154817346}
!172 = !{i64 2154817589}
