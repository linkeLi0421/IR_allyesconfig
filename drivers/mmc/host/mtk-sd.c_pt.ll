; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mtk-sd.c_pt.bc'
source_filename = "../drivers/mmc/host/mtk-sd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mtk_mmc_compatible = type { i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.msdc_host = type { ptr, ptr, i32, %struct.spinlock, ptr, ptr, ptr, i32, ptr, ptr, %struct.msdc_dma, i64, i32, i32, ptr, ptr, ptr, %struct.delayed_work, i32, ptr, ptr, ptr, ptr, ptr, ptr, [3 x %struct.clk_bulk_data], i32, i32, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, %struct.msdc_save_para, %struct.msdc_tune_para, %struct.msdc_tune_para, ptr }
%struct.msdc_dma = type { ptr, ptr, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.msdc_save_para = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.msdc_tune_para = type { i32, i32, i32, i32, i32 }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.mt_gpdma_desc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mt_bdma_desc = type { i32, i32, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
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
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_mtk_sd__331_2901_mt_msdc_driver_init6 = internal global ptr @mt_msdc_driver_init, section ".initcall6.init", align 4
@mt_msdc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @msdc_drv_probe, ptr @msdc_drv_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @msdc_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msdc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt_msdc_driver_exit = internal global ptr @mt_msdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file332 = internal constant [36 x i8] c"mtk_sd.file=drivers/mmc/host/mtk-sd\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [22 x i8] c"mtk_sd.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description334 = internal constant [47 x i8] c"mtk_sd.description=MediaTek SD/MMC Card Driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtk-msdc\00", [23 x i8] zeroinitializer }, align 32
@msdc_of_ids = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8135_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8516_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7620-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7620_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6779-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6779_compat }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@msdc_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @msdc_suspend, ptr @msdc_resume, ptr @msdc_suspend, ptr @msdc_resume, ptr @msdc_suspend, ptr @msdc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msdc_runtime_suspend, ptr @msdc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"No DT found\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc_drv_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/mtk-sd.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry_ptr = internal global ptr @msdc_drv_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hrst\00", [27 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 2616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot find pinctrl!\0A\00", [42 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry_ptr.9 = internal global ptr @msdc_drv_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2623, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot find pinctrl default!\0A\00", [34 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry_ptr.13 = internal global ptr @msdc_drv_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"state_uhs\00", [22 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot find pinctrl uhs!\0A\00", [38 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry_ptr.17 = internal global ptr @msdc_drv_probe._entry.15, section ".printk_index", align 4
@mt_msdc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @msdc_post_req, ptr @msdc_pre_req, ptr @msdc_ops_request, ptr null, ptr @msdc_ops_set_ios, ptr @mmc_gpio_get_ro, ptr @msdc_get_cd, ptr @msdc_enable_sdio_irq, ptr @msdc_ack_sdio_irq, ptr null, ptr @msdc_ops_switch_volt, ptr @msdc_card_busy, ptr @msdc_execute_tuning, ptr @msdc_prepare_hs400_tuning, ptr @msdc_execute_hs400_tuning, ptr null, ptr null, ptr null, ptr @msdc_hs400_enhanced_strobe, ptr null, ptr @msdc_hw_reset, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@msdc_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&host->req_timeout)->work)\00", [49 x i8] zeroinitializer }, align 32
@msdc_drv_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&host->req_timeout)->timer\00", [35 x i8] zeroinitializer }, align 32
@msdc_drv_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2695, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot ungate clocks!\0A\00", [41 x i8] zeroinitializer }, align 32
@msdc_drv_probe._entry_ptr.25 = internal global ptr @msdc_drv_probe._entry.23, section ".printk_index", align 4
@msdc_cmdq_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr null, ptr null, ptr null, ptr @msdc_cqe_enable, ptr @msdc_cqe_disable, ptr null, ptr @msdc_cqe_pre_enable, ptr @msdc_cqe_post_disable, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bus_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"source_cg\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys_cg\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pclk_cg\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axi_cg\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ahb_cg\00", [25 x i8] zeroinitializer }, align 32
@msdc_of_clock_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 2550, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot get pclk/axi/ahb clock gates\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msdc_of_clock_parse\00", [44 x i8] zeroinitializer }, align 32
@msdc_of_clock_parse._entry_ptr = internal global ptr @msdc_of_clock_parse._entry, section ".printk_index", align 4
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,latch-ck\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hs400-ds-delay\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,hs400-ds-dly3\00", [41 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mediatek,hs200-cmd-int-delay\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mediatek,hs400-cmd-int-delay\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mediatek,hs400-cmd-resp-sel-rising\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"supports-cqe\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@msdc_start_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TX/RX FIFO non-empty before start of IO. Reset\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msdc_start_command\00", [45 x i8] zeroinitializer }, align 32
@msdc_start_command._entry_ptr = internal global ptr @msdc_start_command._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@msdc_cmd_is_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD bus busy detected\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc_cmd_is_ready\00", [46 x i8] zeroinitializer }, align 32
@msdc_cmd_is_ready._entry_ptr = internal global ptr @msdc_cmd_is_ready._entry, section ".printk_index", align 4
@msdc_cmd_is_ready._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Controller busy detected\0A\00", [38 x i8] zeroinitializer }, align 32
@msdc_cmd_is_ready._entry_ptr.49 = internal global ptr @msdc_cmd_is_ready._entry.47, section ".printk_index", align 4
@msdc_cmd_done.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 1, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mtk_sd\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msdc_cmd_done\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: cmd=%d arg=%08X; rsp %08X; cmd_error=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@msdc_auto_cmd_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1085, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: AUTO_CMD%d arg=%08X; rsp %08X; cmd_error=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msdc_auto_cmd_done\00", [45 x i8] zeroinitializer }, align 32
@msdc_auto_cmd_done._entry_ptr = internal global ptr @msdc_auto_cmd_done._entry, section ".printk_index", align 4
@msdc_track_cmd_data.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msdc_track_cmd_data\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: cmd=%d arg=%08X; host->error=0x%08X\0A\00", [55 x i8] zeroinitializer }, align 32
@msdc_start_data.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msdc_start_data\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA start\0A\00", [21 x i8] zeroinitializer }, align 32
@msdc_start_data.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 1, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: cmd=%d DMA data: %d blocks; read=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@msdc_ops_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 1837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to set vmmc power!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msdc_ops_set_ios\00", [47 x i8] zeroinitializer }, align 32
@msdc_ops_set_ios._entry_ptr = internal global ptr @msdc_ops_set_ios._entry, section ".printk_index", align 4
@msdc_ops_set_ios._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 1846, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set vqmmc power!\0A\00", [36 x i8] zeroinitializer }, align 32
@msdc_ops_set_ios._entry_ptr.64 = internal global ptr @msdc_ops_set_ios._entry.62, section ".printk_index", align 4
@msdc_set_buswidth.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 1, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc_set_buswidth\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bus Width = %d\00", [17 x i8] zeroinitializer }, align 32
@msdc_set_mclk.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msdc_set_mclk\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set mclk to 0\0A\00", [17 x i8] zeroinitializer }, align 32
@msdc_set_mclk.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.67, ptr @.str.3, ptr @.str.69, i8 0, i8 -16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sclk: %d, timing: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@msdc_ops_switch_volt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 1454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported signal voltage!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msdc_ops_switch_volt\00", [43 x i8] zeroinitializer }, align 32
@msdc_ops_switch_volt._entry_ptr = internal global ptr @msdc_ops_switch_volt._entry, section ".printk_index", align 4
@msdc_ops_switch_volt.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Regulator set error %d (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@msdc_execute_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 2227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tune response fail!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msdc_execute_tuning\00", [44 x i8] zeroinitializer }, align 32
@msdc_execute_tuning._entry_ptr = internal global ptr @msdc_execute_tuning._entry, section ".printk_index", align 4
@msdc_execute_tuning._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 2233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Tune data fail!\0A\00", [47 x i8] zeroinitializer }, align 32
@msdc_execute_tuning._entry_ptr.77 = internal global ptr @msdc_execute_tuning._entry.75, section ".printk_index", align 4
@msdc_tune_together.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.78, ptr @.str.3, ptr @.str.79, i8 2, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msdc_tune_together\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Final pad delay: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@get_best_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 1893, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phase error: [map:%x]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"get_best_delay\00", [17 x i8] zeroinitializer }, align 32
@get_best_delay._entry_ptr = internal global ptr @get_best_delay._entry, section ".printk_index", align 4
@get_best_delay._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.3, i32 1915, ptr @.str.84, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"phase: [map:%x] [maxlen:%d] [final:%d]\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@get_best_delay._entry_ptr.85 = internal global ptr @get_best_delay._entry.82, section ".printk_index", align 4
@hs400_tune_response.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 2, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hs400_tune_response\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Final cmd pad delay: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@msdc_tune_response.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.88, ptr @.str.3, ptr @.str.89, i8 1, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msdc_tune_response\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Final internal delay: 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@msdc_tune_response.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.88, ptr @.str.3, ptr @.str.87, i8 1, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@msdc_tune_data.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.90, ptr @.str.3, ptr @.str.91, i8 2, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc_tune_data\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Final data pad delay: %x\0A\00", [38 x i8] zeroinitializer }, align 32
@msdc_execute_hs400_tuning._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 2306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get DLY1 delay!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"msdc_execute_hs400_tuning\00", [38 x i8] zeroinitializer }, align 32
@msdc_execute_hs400_tuning._entry_ptr = internal global ptr @msdc_execute_hs400_tuning._entry, section ".printk_index", align 4
@msdc_execute_hs400_tuning._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 2321, ptr @.str.84, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Fianl PAD_DS_TUNE: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@msdc_execute_hs400_tuning._entry_ptr.96 = internal global ptr @msdc_execute_hs400_tuning._entry.94, section ".printk_index", align 4
@msdc_execute_hs400_tuning._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.3, i32 2326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to tuning DS pin delay!\0A\00", [32 x i8] zeroinitializer }, align 32
@msdc_execute_hs400_tuning._entry_ptr.99 = internal global ptr @msdc_execute_hs400_tuning._entry.97, section ".printk_index", align 4
@msdc_request_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 1489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: aborting cmd/data/mrq\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msdc_request_timeout\00", [43 x i8] zeroinitializer }, align 32
@msdc_request_timeout._entry_ptr = internal global ptr @msdc_request_timeout._entry, section ".printk_index", align 4
@msdc_request_timeout._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 1492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: aborting mrq=%p cmd=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@msdc_request_timeout._entry_ptr.104 = internal global ptr @msdc_request_timeout._entry.102, section ".printk_index", align 4
@msdc_request_timeout._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.3, i32 1495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: aborting cmd=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@msdc_request_timeout._entry_ptr.107 = internal global ptr @msdc_request_timeout._entry.105, section ".printk_index", align 4
@msdc_request_timeout._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.3, i32 1501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: abort data: cmd%d; %d blocks\0A\00", [62 x i8] zeroinitializer }, align 32
@msdc_request_timeout._entry_ptr.110 = internal global ptr @msdc_request_timeout._entry.108, section ".printk_index", align 4
@msdc_data_xfer_done.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msdc_data_xfer_done\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA status: 0x%8X\0A\00", [45 x i8] zeroinitializer }, align 32
@msdc_data_xfer_done.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.111, ptr @.str.3, ptr @.str.113, i8 1, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA stop timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@msdc_data_xfer_done.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.111, ptr @.str.3, ptr @.str.114, i8 1, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMA stop\0A\00", [22 x i8] zeroinitializer }, align 32
@msdc_data_xfer_done.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.111, ptr @.str.3, ptr @.str.115, i8 1, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interrupt events: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@msdc_data_xfer_done.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.111, ptr @.str.3, ptr @.str.116, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: cmd=%d; blocks=%d\00", [42 x i8] zeroinitializer }, align 32
@msdc_data_xfer_done.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.111, ptr @.str.3, ptr @.str.117, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"data_error=%d xfer_size=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@msdc_ungate_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot enable pclk/axi/ahb clock gates\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc_ungate_clock\00", [46 x i8] zeroinitializer }, align 32
@msdc_ungate_clock._entry_ptr = internal global ptr @msdc_ungate_clock._entry, section ".printk_index", align 4
@msdc_init_hw.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 1, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc_init_hw\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init hardware done!\00", [44 x i8] zeroinitializer }, align 32
@msdc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 1612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: MRQ=NULL; events=%08X; event_mask=%08X\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msdc_irq\00", [23 x i8] zeroinitializer }, align 32
@msdc_irq._entry_ptr = internal global ptr @msdc_irq._entry, section ".printk_index", align 4
@msdc_irq.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.50, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 1, i8 -108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: events=%08X\0A\00", [47 x i8] zeroinitializer }, align 32
@msdc_cmdq_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.3, i32 1543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: CMD CRC ERR\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msdc_cmdq_irq\00", [18 x i8] zeroinitializer }, align 32
@msdc_cmdq_irq._entry_ptr = internal global ptr @msdc_cmdq_irq._entry, section ".printk_index", align 4
@msdc_cmdq_irq._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.3, i32 1546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: CMD TIMEOUT ERR\00", [44 x i8] zeroinitializer }, align 32
@msdc_cmdq_irq._entry_ptr.129 = internal global ptr @msdc_cmdq_irq._entry.127, section ".printk_index", align 4
@msdc_cmdq_irq._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.3, i32 1551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: DATA CRC ERR\00", [47 x i8] zeroinitializer }, align 32
@msdc_cmdq_irq._entry_ptr.132 = internal global ptr @msdc_cmdq_irq._entry.130, section ".printk_index", align 4
@msdc_cmdq_irq._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.126, ptr @.str.3, i32 1554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: DATA TIMEOUT ERR\00", [43 x i8] zeroinitializer }, align 32
@msdc_cmdq_irq._entry_ptr.135 = internal global ptr @msdc_cmdq_irq._entry.133, section ".printk_index", align 4
@msdc_cmdq_irq._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.3, i32 1559, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cmd_err = %d, dat_err =%d, intsts = 0x%x\00", [55 x i8] zeroinitializer }, align 32
@msdc_cmdq_irq._entry_ptr.138 = internal global ptr @msdc_cmdq_irq._entry.136, section ".printk_index", align 4
@mt8135_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 8, i8 1, i8 0, i32 236, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8173_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 8, i8 1, i8 1, i32 236, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8183_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 12, i8 0, i8 0, i32 240, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt2701_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 12, i8 1, i8 0, i32 240, i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt2712_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 12, i8 0, i8 0, i32 240, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt7622_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 12, i8 1, i8 0, i32 240, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt8516_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 12, i8 1, i8 0, i32 240, i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@mt7620_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 8, i8 1, i8 0, i32 236, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@mt6779_compat = internal constant { %struct.mtk_mmc_compatible, [16 x i8] } { %struct.mtk_mmc_compatible { i8 12, i8 0, i8 0, i32 240, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.141 = internal global [10 x i64] [i64 8, i64 32, i64 6, i64 8, i64 11, i64 12, i64 13, i64 22, i64 51, i64 52]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 21]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967212]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 19, i64 21]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 9]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 9]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"mt_msdc_driver\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2890, i32 31 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2894, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [12 x i8] c"msdc_of_ids\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 589, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"msdc_dev_pm_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2885, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2565, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2601, i32 9 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2616, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2620, i32 59 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2623, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2627, i32 55 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2630, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [12 x i8] c"mt_msdc_ops\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2446, i32 34 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2689, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2690, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2695, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"msdc_cmdq_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2464, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2507, i32 43 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2511, i32 41 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2515, i32 52 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2520, i32 55 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2537, i32 55 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2544, i32 26 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2545, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2546, i32 26 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2550, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2474, i32 42 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2477, i32 42 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2480, i32 42 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2483, i32 42 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2486, i32 42 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2490, i32 7 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2496, i32 7 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1268, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1233, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1244, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1210, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1083, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1119, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1060, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1061, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1837, i32 5 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1846, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1443, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 847, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 960, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1454, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1460, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2227, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2233, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2202, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1893, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1914, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2087, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2032, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2138, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2306, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2321, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 2326, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1489, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1491, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1494, i32 4 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1499, i32 4 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1383, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1391, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1396, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1401, i32 4 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1411, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1413, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 828, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1769, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1610, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1617, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1543, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1546, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1551, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1554, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 1558, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant [14 x i8] c"mt8135_compat\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 474, i32 40 }
@___asan_gen_.579 = private unnamed_addr constant [14 x i8] c"mt8173_compat\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 487, i32 40 }
@___asan_gen_.582 = private unnamed_addr constant [14 x i8] c"mt8183_compat\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 500, i32 40 }
@___asan_gen_.585 = private unnamed_addr constant [14 x i8] c"mt2701_compat\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 513, i32 40 }
@___asan_gen_.588 = private unnamed_addr constant [14 x i8] c"mt2712_compat\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 526, i32 40 }
@___asan_gen_.591 = private unnamed_addr constant [14 x i8] c"mt7622_compat\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 539, i32 40 }
@___asan_gen_.594 = private unnamed_addr constant [14 x i8] c"mt8516_compat\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 552, i32 40 }
@___asan_gen_.597 = private unnamed_addr constant [14 x i8] c"mt7620_compat\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 563, i32 40 }
@___asan_gen_.600 = private unnamed_addr constant [14 x i8] c"mt6779_compat\00", align 1
@___asan_gen_.601 = private constant [29 x i8] c"../drivers/mmc/host/mtk-sd.c\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.601, i32 576, i32 40 }
@llvm.compiler.used = appending global [188 x ptr] [ptr @__UNIQUE_ID_description334, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_mt_msdc_driver_exit, ptr @__initcall__kmod_mtk_sd__331_2901_mt_msdc_driver_init6, ptr @get_best_delay._entry, ptr @get_best_delay._entry.82, ptr @get_best_delay._entry_ptr, ptr @get_best_delay._entry_ptr.85, ptr @msdc_auto_cmd_done._entry, ptr @msdc_auto_cmd_done._entry_ptr, ptr @msdc_cmd_is_ready._entry, ptr @msdc_cmd_is_ready._entry.47, ptr @msdc_cmd_is_ready._entry_ptr, ptr @msdc_cmd_is_ready._entry_ptr.49, ptr @msdc_cmdq_irq._entry, ptr @msdc_cmdq_irq._entry.127, ptr @msdc_cmdq_irq._entry.130, ptr @msdc_cmdq_irq._entry.133, ptr @msdc_cmdq_irq._entry.136, ptr @msdc_cmdq_irq._entry_ptr, ptr @msdc_cmdq_irq._entry_ptr.129, ptr @msdc_cmdq_irq._entry_ptr.132, ptr @msdc_cmdq_irq._entry_ptr.135, ptr @msdc_cmdq_irq._entry_ptr.138, ptr @msdc_drv_probe._entry, ptr @msdc_drv_probe._entry.11, ptr @msdc_drv_probe._entry.15, ptr @msdc_drv_probe._entry.23, ptr @msdc_drv_probe._entry.7, ptr @msdc_drv_probe._entry_ptr, ptr @msdc_drv_probe._entry_ptr.13, ptr @msdc_drv_probe._entry_ptr.17, ptr @msdc_drv_probe._entry_ptr.25, ptr @msdc_drv_probe._entry_ptr.9, ptr @msdc_execute_hs400_tuning._entry, ptr @msdc_execute_hs400_tuning._entry.94, ptr @msdc_execute_hs400_tuning._entry.97, ptr @msdc_execute_hs400_tuning._entry_ptr, ptr @msdc_execute_hs400_tuning._entry_ptr.96, ptr @msdc_execute_hs400_tuning._entry_ptr.99, ptr @msdc_execute_tuning._entry, ptr @msdc_execute_tuning._entry.75, ptr @msdc_execute_tuning._entry_ptr, ptr @msdc_execute_tuning._entry_ptr.77, ptr @msdc_irq._entry, ptr @msdc_irq._entry_ptr, ptr @msdc_of_clock_parse._entry, ptr @msdc_of_clock_parse._entry_ptr, ptr @msdc_ops_set_ios._entry, ptr @msdc_ops_set_ios._entry.62, ptr @msdc_ops_set_ios._entry_ptr, ptr @msdc_ops_set_ios._entry_ptr.64, ptr @msdc_ops_switch_volt._entry, ptr @msdc_ops_switch_volt._entry_ptr, ptr @msdc_request_timeout._entry, ptr @msdc_request_timeout._entry.102, ptr @msdc_request_timeout._entry.105, ptr @msdc_request_timeout._entry.108, ptr @msdc_request_timeout._entry_ptr, ptr @msdc_request_timeout._entry_ptr.104, ptr @msdc_request_timeout._entry_ptr.107, ptr @msdc_request_timeout._entry_ptr.110, ptr @msdc_start_command._entry, ptr @msdc_start_command._entry_ptr, ptr @msdc_ungate_clock._entry, ptr @msdc_ungate_clock._entry_ptr, ptr @mt_msdc_driver_exit, ptr @mt_msdc_driver, ptr @.str, ptr @msdc_of_ids, ptr @msdc_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @mt_msdc_ops, ptr @msdc_drv_probe.__key, ptr @.str.18, ptr @msdc_drv_probe.__key.19, ptr @.str.20, ptr @msdc_drv_probe.__key.21, ptr @.str.22, ptr @.str.24, ptr @msdc_cmdq_ops, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @mt8135_compat, ptr @mt8173_compat, ptr @mt8183_compat, ptr @mt2701_compat, ptr @mt2712_compat, ptr @mt7622_compat, ptr @mt8516_compat, ptr @mt7620_compat, ptr @mt6779_compat], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_msdc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_of_ids to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_msdc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_drv_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmdq_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_of_clock_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_start_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmd_is_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmd_is_ready._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_auto_cmd_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_ops_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_ops_set_ios._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_ops_switch_volt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_execute_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_execute_tuning._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_best_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_best_delay._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_execute_hs400_tuning._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_execute_hs400_tuning._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_execute_hs400_tuning._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_request_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_request_timeout._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_request_timeout._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_request_timeout._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_ungate_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmdq_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmdq_irq._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmdq_irq._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmdq_irq._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cmdq_irq._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8135_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8516_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7620_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6779_compat to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_msdc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt_msdc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt_msdc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt_msdc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_drv_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @mmc_alloc_host(i32 noundef 432, ptr noundef %dev) #8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %call7 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.host_free_crit_edge

if.end5.host_free_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_free

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call11 to i32
  br label %host_free

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end28_crit_edge, label %if.then20

if.end17.if.end28_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call18) #8
  %top_base = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %cmp.i388 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i388, ptr null, ptr %call22
  %4 = ptrtoint ptr %top_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select, ptr %top_base, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.end17.if.end28_crit_edge
  %call29 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.host_free_crit_edge

if.end28.host_free_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_free

if.end32:                                         ; preds = %if.end28
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.26) #8
  %src_clk.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5
  %5 = ptrtoint ptr %src_clk.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %src_clk.i, align 8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end32.msdc_of_clock_parse.exit_crit_edge, label %if.end.i

if.end32.msdc_of_clock_parse.exit_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_of_clock_parse.exit

if.end.i:                                         ; preds = %if.end32
  %call6.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  %h_clk.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5, i32 1
  %6 = ptrtoint ptr %h_clk.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6.i, ptr %h_clk.i, align 4
  %cmp.i93.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93.i, label %if.end.i.msdc_of_clock_parse.exit_crit_edge, label %if.end12.i

if.end.i.msdc_of_clock_parse.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_of_clock_parse.exit

if.end12.i:                                       ; preds = %if.end.i
  %call14.i = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  %bus_clk.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5, i32 1, i32 1
  %cmp.i94.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select.i = select i1 %cmp.i94.i, ptr null, ptr %call14.i
  %7 = ptrtoint ptr %bus_clk.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spec.store.select.i, ptr %bus_clk.i, align 8
  %call21.i = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  %src_clk_cg.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5, i32 2
  %8 = ptrtoint ptr %src_clk_cg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21.i, ptr %src_clk_cg.i, align 4
  %cmp.i95.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95.i, label %if.end12.i.msdc_of_clock_parse.exit_crit_edge, label %if.end27.i

if.end12.i.msdc_of_clock_parse.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_of_clock_parse.exit

if.end27.i:                                       ; preds = %if.end12.i
  %tobool.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool.not.i, label %if.then29.i, label %if.end27.i.if.end39.i_crit_edge

if.end27.i.if.end39.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end27.i
  %9 = ptrtoint ptr %src_clk.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %src_clk.i, align 8
  %call31.i = tail call ptr @clk_get_parent(ptr noundef %10) #8
  %11 = ptrtoint ptr %src_clk_cg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call31.i, ptr %src_clk_cg.i, align 4
  %cmp.i96.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i, label %if.then29.i.msdc_of_clock_parse.exit_crit_edge, label %if.then29.i.if.end39.i_crit_edge

if.then29.i.if.end39.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.i

if.then29.i.msdc_of_clock_parse.exit_crit_edge:   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_of_clock_parse.exit

if.end39.i:                                       ; preds = %if.then29.i.if.end39.i_crit_edge, %if.end27.i.if.end39.i_crit_edge
  %call41.i = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  %sys_clk_cg.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5, i32 3
  %cmp.i97.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  %spec.store.select98.i = select i1 %cmp.i97.i, ptr null, ptr %call41.i
  %12 = ptrtoint ptr %sys_clk_cg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spec.store.select98.i, ptr %sys_clk_cg.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %spec.store.select98.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end39.i.clk_prepare_enable.exit.i_crit_edge

if.end39.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.end39.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %spec.store.select98.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %spec.store.select98.i) #8
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.end39.i.clk_prepare_enable.exit.i_crit_edge
  %bulk_clks.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 5, i32 6
  %13 = ptrtoint ptr %bulk_clks.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.31, ptr %bulk_clks.i, align 4
  %arrayidx50.i = getelementptr %struct.mmc_host, ptr %call, i32 1, i32 1, i32 10
  %14 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.32, ptr %arrayidx50.i, align 4
  %arrayidx53.i = getelementptr %struct.mmc_host, ptr %call, i32 1, i32 1, i32 10, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.33, ptr %arrayidx53.i, align 4
  %call57.i = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev, i32 noundef 3, ptr noundef %bulk_clks.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end36, label %msdc_of_clock_parse.exit.thread402

msdc_of_clock_parse.exit.thread402:               ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #11
  br label %host_free

msdc_of_clock_parse.exit:                         ; preds = %if.then29.i.msdc_of_clock_parse.exit_crit_edge, %if.end12.i.msdc_of_clock_parse.exit_crit_edge, %if.end.i.msdc_of_clock_parse.exit_crit_edge, %if.end32.msdc_of_clock_parse.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call.i, %if.end32.msdc_of_clock_parse.exit_crit_edge ], [ %call6.i, %if.end.i.msdc_of_clock_parse.exit_crit_edge ], [ %call21.i, %if.end12.i.msdc_of_clock_parse.exit_crit_edge ], [ %call31.i, %if.then29.i.msdc_of_clock_parse.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  br label %host_free

if.end36:                                         ; preds = %clk_prepare_enable.exit.i
  %call.i389 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 4
  %16 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i389, ptr %reset, align 4
  %cmp.i390 = icmp ugt ptr %call.i389, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i390, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call.i389 to i32
  br label %host_free

if.end44:                                         ; preds = %if.end36
  %call45 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9, i32 3, i32 1
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call45, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %if.end44.host_free_crit_edge, label %if.end48

if.end44.host_free_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_free

if.end48:                                         ; preds = %if.end44
  %call50 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #8
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  %19 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call50, ptr %pinctrl, align 8
  %cmp.i391 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i391, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call50 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %host_free

if.end60:                                         ; preds = %if.end48
  %call62 = tail call ptr @pinctrl_lookup_state(ptr noundef %call50, ptr noundef nonnull @.str.10) #8
  %pins_default = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %21 = ptrtoint ptr %pins_default to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call62, ptr %pins_default, align 4
  %cmp.i392 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i392, label %if.then65, label %if.end72

if.then65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call62 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %host_free

if.end72:                                         ; preds = %if.end60
  %23 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pinctrl, align 8
  %call74 = tail call ptr @pinctrl_lookup_state(ptr noundef %24, ptr noundef nonnull @.str.14) #8
  %pins_uhs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %25 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call74, ptr %pins_uhs, align 8
  %cmp.i393 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i393, label %if.then77, label %if.end84

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call74 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %host_free

if.end84:                                         ; preds = %if.end72
  tail call fastcc void @msdc_of_property_parse(ptr noundef %pdev, ptr noundef %private.i)
  %27 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %private.i, align 8
  %call88 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev_comp to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call88, ptr %dev_comp, align 4
  %29 = ptrtoint ptr %src_clk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src_clk.i, align 8
  %call89 = tail call i32 @clk_get_rate(ptr noundef %30) #8
  %src_clk_freq = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 10, i32 1, i32 4
  %31 = ptrtoint ptr %src_clk_freq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call89, ptr %src_clk_freq, align 8
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mt_msdc_ops, ptr %ops, align 4
  %33 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_comp, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %36)
  %cmp91 = icmp eq i8 %36, 8
  %. = select i1 %cmp91, i32 1019, i32 16379
  %.408 = select i1 %cmp91, i32 1020, i32 16380
  %sub97 = add i32 %call89, %.
  %div98 = udiv i32 %sub97, %.408
  %37 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div98, ptr %37, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %39 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %caps, align 32
  %and = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  br i1 %tobool101.not, label %land.lhs.true, label %if.end84.if.end108_crit_edge

if.end84.if.end108_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

land.lhs.true:                                    ; preds = %if.end84
  %call102 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef nonnull %call) #8
  br i1 %call102, label %land.lhs.true.if.end108_crit_edge, label %land.lhs.true103

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

land.lhs.true103:                                 ; preds = %land.lhs.true
  %41 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_comp, align 4
  %use_internal_cd = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %use_internal_cd to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %use_internal_cd, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool105.not = icmp eq i8 %44, 0
  br i1 %tobool105.not, label %land.lhs.true103.if.end108_crit_edge, label %if.then107

land.lhs.true103.if.end108_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then107:                                       ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #10
  %internal_cd = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 38
  %45 = ptrtoint ptr %internal_cd to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %internal_cd, align 1
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %land.lhs.true103.if.end108_crit_edge, %land.lhs.true.if.end108_crit_edge, %if.end84.if.end108_crit_edge
  %46 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %caps, align 32
  %and110 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end108.if.end113_crit_edge, label %if.then112

if.end108.if.end113_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %48 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps2, align 4
  %or = or i32 %49, 131072
  store i32 %or, ptr %caps2, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end108.if.end113_crit_edge
  %50 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %caps, align 32
  %or115 = or i32 %51, 1073741824
  store i32 %or115, ptr %caps, align 32
  %cqhci = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 10, i32 3
  %52 = ptrtoint ptr %cqhci to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cqhci, align 8, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool116.not = icmp eq i8 %53, 0
  br i1 %tobool116.not, label %if.end113.if.end120_crit_edge, label %if.then117

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then117:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %caps2118 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %54 = ptrtoint ptr %caps2118 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %caps2118, align 4
  %or119 = or i32 %55, 25165824
  store i32 %or119, ptr %caps2118, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.end113.if.end120_crit_edge
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %56 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1024, ptr %max_segs, align 4
  %57 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_comp, align 4
  %support_64g = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %support_64g to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %support_64g, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool122.not = icmp eq i8 %60, 0
  %spec.select = select i1 %tobool122.not, i32 65535, i32 16777215
  %61 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.select, ptr %61, align 16
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %63 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2048, ptr %max_blk_size, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %64 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 524288, ptr %max_req_size, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %65 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1024, ptr %max_blk_count, align 128
  %66 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_comp, align 4
  %support_64g130 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %support_64g130 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %support_64g130, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool131.not = icmp eq i8 %69, 0
  %.sink405 = select i1 %tobool131.not, i64 4294967295, i64 68719476735
  %70 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %.sink405, ptr %70, align 8
  %72 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call, align 128
  %dma_mask137 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 18
  %74 = ptrtoint ptr %dma_mask137 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %70, ptr %dma_mask137, align 8
  %timeout_clks = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 2
  %75 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3145728, ptr %timeout_clks, align 4
  %gpd_addr = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %call.i394 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 56, ptr noundef %gpd_addr, i32 noundef 3264, i32 noundef 0) #8
  %gpd = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %gpd to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i394, ptr %gpd, align 4
  %bd_addr = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %call.i395 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef %bd_addr, i32 noundef 3264, i32 noundef 0) #8
  %bd = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %77 = ptrtoint ptr %bd to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i395, ptr %bd, align 8
  %78 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gpd, align 4
  %tobool147.not = icmp eq ptr %79, null
  %tobool150.not = icmp eq ptr %call.i395, null
  %or.cond = select i1 %tobool147.not, i1 true, i1 %tobool150.not
  br i1 %or.cond, label %if.end120.release_mem_crit_edge, label %if.end152

if.end120.release_mem_crit_edge:                  ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_mem

if.end152:                                        ; preds = %if.end120
  %dma = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  tail call fastcc void @msdc_init_gpd_bd(ptr noundef %private.i, ptr noundef %dma)
  %req_timeout = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 2
  tail call void @__init_work(ptr noundef %req_timeout, i32 noundef 0) #8
  %80 = ptrtoint ptr %req_timeout to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -64, ptr %req_timeout, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 2
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @msdc_drv_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry162 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 3
  %81 = ptrtoint ptr %entry162 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %entry162, ptr %entry162, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 8
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %entry162, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 1
  %83 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @msdc_request_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 9
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @msdc_drv_probe.__key.19) #8
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @msdc_drv_probe.__key.21, i16 noundef signext 3) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %84 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call177 = tail call fastcc i32 @msdc_ungate_clock(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end184, label %do.end182

do.end182:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  br label %release_memthread-pre-split

if.end184:                                        ; preds = %if.end152
  tail call fastcc void @msdc_init_hw(ptr noundef %private.i)
  %caps2185 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %85 = ptrtoint ptr %caps2185 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %caps2185, align 4
  %and186 = and i32 %86, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end184.if.end209_crit_edge, label %if.then188

if.end184.if.end209_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end209

if.then188:                                       ; preds = %if.end184
  %87 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call, align 128
  %call.i396 = tail call noalias ptr @devm_kmalloc(ptr noundef %88, i32 noundef 248, i32 noundef 3520) #8
  %cq_host = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %cq_host to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i396, ptr %cq_host, align 8
  %tobool192.not = icmp eq ptr %call.i396, null
  br i1 %tobool192.not, label %if.then188.host_free_crit_edge, label %if.end194

if.then188.host_free_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_free

if.end194:                                        ; preds = %if.then188
  %caps196 = getelementptr inbounds %struct.cqhci_host, ptr %call.i396, i32 0, i32 9
  %90 = ptrtoint ptr %caps196 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %caps196, align 4
  %or197 = or i32 %91, 1
  store i32 %or197, ptr %caps196, align 4
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %93, i32 2048
  %94 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cq_host, align 8
  %mmio = getelementptr inbounds %struct.cqhci_host, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %add.ptr, ptr %mmio, align 4
  %97 = load ptr, ptr %cq_host, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @msdc_cmdq_ops, ptr %97, align 4
  %99 = load ptr, ptr %cq_host, align 8
  %call203 = tail call i32 @cqhci_init(ptr noundef %99, ptr noundef nonnull %call, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.end206, label %if.end194.host_free_crit_edge

if.end194.host_free_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_free

if.end206:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 128, ptr %max_segs, align 4
  %101 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 65536, ptr %61, align 16
  br label %if.end209

if.end209:                                        ; preds = %if.end206, %if.end184.if.end209_crit_edge
  %102 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %irq, align 8
  %104 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdev, align 8
  %call.i397 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %103, ptr noundef nonnull @msdc_irq, ptr noundef null, i32 noundef 0, ptr noundef %105, ptr noundef %private.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %tobool213.not = icmp eq i32 %call.i397, 0
  br i1 %tobool213.not, label %if.end215, label %if.end209.release_crit_edge

if.end209.release_crit_edge:                      ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #10
  br label %release

if.end215:                                        ; preds = %if.end209
  %106 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %private.i, align 8
  %call.i398 = tail call i32 @__pm_runtime_set_status(ptr noundef %107, i32 noundef 0) #8
  %108 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %private.i, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %109, i32 noundef 50) #8
  %110 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %private.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %111, i1 noundef zeroext true) #8
  %112 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %private.i, align 8
  tail call void @pm_runtime_enable(ptr noundef %113) #8
  %call221 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %if.end215.cleanup_crit_edge, label %end

if.end215.cleanup_crit_edge:                      ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

end:                                              ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %private.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %115, i1 noundef zeroext true) #8
  br label %release

release:                                          ; preds = %end, %if.end209.release_crit_edge
  %ret.0 = phi i32 [ %call.i397, %if.end209.release_crit_edge ], [ %call221, %end ]
  %116 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call fastcc void @msdc_deinit_hw(ptr noundef %private.i)
  tail call fastcc void @msdc_gate_clock(ptr noundef %private.i)
  br label %release_memthread-pre-split

release_memthread-pre-split:                      ; preds = %release, %do.end182
  %ret.1.ph = phi i32 [ %ret.0, %release ], [ %call177, %do.end182 ]
  %117 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %117)
  %.pr = load ptr, ptr %gpd, align 4
  br label %release_mem

release_mem:                                      ; preds = %release_memthread-pre-split, %if.end120.release_mem_crit_edge
  %118 = phi ptr [ %.pr, %release_memthread-pre-split ], [ %79, %if.end120.release_mem_crit_edge ]
  %ret.1 = phi i32 [ %ret.1.ph, %release_memthread-pre-split ], [ -12, %if.end120.release_mem_crit_edge ]
  %tobool228.not = icmp eq ptr %118, null
  br i1 %tobool228.not, label %release_mem.if.end235_crit_edge, label %if.then229

release_mem.if.end235_crit_edge:                  ; preds = %release_mem
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end235

if.then229:                                       ; preds = %release_mem
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %gpd_addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %gpd_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 56, ptr noundef nonnull %118, i32 noundef %120, i32 noundef 0) #8
  br label %if.end235

if.end235:                                        ; preds = %if.then229, %release_mem.if.end235_crit_edge
  %121 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bd, align 8
  %tobool238.not = icmp eq ptr %122, null
  br i1 %tobool238.not, label %if.end235.host_free_crit_edge, label %if.then239

if.end235.host_free_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %host_free

if.then239:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bd_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 16384, ptr noundef nonnull %122, i32 noundef %124, i32 noundef 0) #8
  br label %host_free

host_free:                                        ; preds = %if.then239, %if.end235.host_free_crit_edge, %if.end194.host_free_crit_edge, %if.then188.host_free_crit_edge, %if.then77, %if.then65, %if.then53, %if.end44.host_free_crit_edge, %if.then41, %msdc_of_clock_parse.exit, %msdc_of_clock_parse.exit.thread402, %if.end28.host_free_crit_edge, %if.then14, %if.end5.host_free_crit_edge
  %ret.2 = phi i32 [ %call7, %if.end5.host_free_crit_edge ], [ %3, %if.then14 ], [ %call29, %if.end28.host_free_crit_edge ], [ %retval.0.i, %msdc_of_clock_parse.exit ], [ %17, %if.then41 ], [ %20, %if.then53 ], [ %22, %if.then65 ], [ %26, %if.then77 ], [ %ret.1, %if.then239 ], [ %ret.1, %if.end235.host_free_crit_edge ], [ %call203, %if.end194.host_free_crit_edge ], [ -22, %if.end44.host_free_crit_edge ], [ -12, %if.then188.host_free_crit_edge ], [ %call57.i, %msdc_of_clock_parse.exit.thread402 ]
  tail call void @mmc_free_host(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %host_free, %if.end215.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %host_free ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end215.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_drv_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mmc_remove_host(ptr noundef %1) #8
  tail call fastcc void @msdc_deinit_hw(ptr noundef %private.i)
  tail call fastcc void @msdc_gate_clock(ptr noundef %private.i)
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 8
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #8
  %7 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private.i, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !309
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !310
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %gpd = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %gpd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpd, align 4
  %gpd_addr = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %12 = ptrtoint ptr %gpd_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpd_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef 56, ptr noundef %11, i32 noundef %13, i32 noundef 0) #8
  %bd = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bd, align 8
  %bd_addr = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %16 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bd_addr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef 16384, ptr noundef %15, i32 noundef %17, i32 noundef 0) #8
  tail call void @mmc_free_host(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_of_property_parse(ptr nocapture noundef readonly %pdev, ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %latch_ck = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 30
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef %latch_ck, i32 noundef 1, i32 noundef 0) #8
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %hs400_ds_delay = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 31
  %call.i.i38 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %hs400_ds_delay, i32 noundef 1, i32 noundef 0) #8
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %hs400_ds_dly3 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 32
  %call.i.i39 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.38, ptr noundef %hs400_ds_dly3, i32 noundef 1, i32 noundef 0) #8
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %hs200_cmd_int_delay = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 33
  %call.i.i40 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef %hs200_cmd_int_delay, i32 noundef 1, i32 noundef 0) #8
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %hs400_cmd_int_delay = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 34
  %call.i.i41 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.40, ptr noundef %hs400_cmd_int_delay, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.41, ptr noundef null) #8
  %tobool.i.not = icmp ne ptr %call.i, null
  %spec.select = zext i1 %tobool.i.not to i8
  %12 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 35
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %12, align 4
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i42 = tail call ptr @of_find_property(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef null) #8
  %tobool.i43.not = icmp ne ptr %call.i42, null
  %.sink44 = zext i1 %tobool.i43.not to i8
  %16 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 39
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink44, ptr %16, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_init_gpd_bd(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %dma) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %gpd1 = getelementptr inbounds %struct.msdc_dma, ptr %dma, i32 0, i32 1
  %0 = ptrtoint ptr %gpd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpd1, align 4
  %bd2 = getelementptr inbounds %struct.msdc_dma, ptr %dma, i32 0, i32 2
  %2 = ptrtoint ptr %bd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd2, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 56)
  %gpd_addr = getelementptr inbounds %struct.msdc_dma, ptr %dma, i32 0, i32 3
  %5 = ptrtoint ptr %gpd_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpd_addr, align 4
  %add = add i32 %6, 28
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %1, align 4
  %next = getelementptr inbounds %struct.mt_gpdma_desc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %next, align 4
  %bd_addr = getelementptr inbounds %struct.msdc_dma, ptr %dma, i32 0, i32 4
  %9 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bd_addr, align 4
  %ptr = getelementptr inbounds %struct.mt_gpdma_desc, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ptr, align 4
  %12 = call ptr @memset(ptr %3, i32 0, i32 16384)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.057 = phi i32 [ 0, %entry ], [ %add20, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %bd_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bd_addr, align 4
  %add20 = add nuw nsw i32 %i.057, 1
  %mul = shl i32 %add20, 4
  %add21 = add i32 %14, %mul
  %next23 = getelementptr %struct.mt_bdma_desc, ptr %3, i32 %i.057, i32 1
  %15 = ptrtoint ptr %next23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add21, ptr %next23, align 4
  %exitcond.not = icmp eq i32 %add20, 1023
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_request_timeout(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -132
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101) #11
  %mrq = getelementptr i8, ptr %work, i32 -76
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %do.end3

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end3:                                          ; preds = %entry
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.101, ptr noundef nonnull %3, i32 noundef %9) #11
  %cmd7 = getelementptr i8, ptr %work, i32 -72
  %10 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.else, label %do.end12

do.end12:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef %15) #11
  %16 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mrq, align 8
  %18 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd7, align 4
  tail call fastcc void @msdc_cmd_done(ptr noundef %add.ptr, i32 noundef 512, ptr noundef %17, ptr noundef %19)
  br label %if.end32

if.else:                                          ; preds = %do.end3
  %data = getelementptr i8, ptr %work, i32 -68
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 8
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %if.else.if.end32_crit_edge, label %do.end22

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %24 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mrq, align 8
  %cmd25 = getelementptr inbounds %struct.mmc_request, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %cmd25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd25, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %21, i32 0, i32 3
  %30 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blocks, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.101, i32 noundef %29, i32 noundef %31) #11
  %32 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mrq, align 8
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  tail call fastcc void @msdc_data_xfer_done(ptr noundef %add.ptr, i32 noundef 16384, ptr noundef %33, ptr noundef %35)
  br label %if.end32

if.end32:                                         ; preds = %do.end22, %if.else.if.end32_crit_edge, %do.end12, %entry.if.end32_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msdc_ungate_clock(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %h_clk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 21
  %0 = ptrtoint ptr %h_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %bus_clk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 22
  %2 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_clk, align 8
  %call.i56 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %if.end.i60, label %clk_prepare_enable.exit.clk_prepare_enable.exit62_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit62_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit62

if.end.i60:                                       ; preds = %clk_prepare_enable.exit
  %call1.i58 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool2.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool2.not.i59, label %if.end.i60.clk_prepare_enable.exit62_crit_edge, label %if.then3.i61

if.end.i60.clk_prepare_enable.exit62_crit_edge:   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit62

if.then3.i61:                                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit62

clk_prepare_enable.exit62:                        ; preds = %if.then3.i61, %if.end.i60.clk_prepare_enable.exit62_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit62_crit_edge
  %src_clk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 20
  %4 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src_clk, align 8
  %call.i63 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i67, label %clk_prepare_enable.exit62.clk_prepare_enable.exit69_crit_edge

clk_prepare_enable.exit62.clk_prepare_enable.exit69_crit_edge: ; preds = %clk_prepare_enable.exit62
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit69

if.end.i67:                                       ; preds = %clk_prepare_enable.exit62
  %call1.i65 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool2.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool2.not.i66, label %if.end.i67.clk_prepare_enable.exit69_crit_edge, label %if.then3.i68

if.end.i67.clk_prepare_enable.exit69_crit_edge:   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit69

if.then3.i68:                                     ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit69

clk_prepare_enable.exit69:                        ; preds = %if.then3.i68, %if.end.i67.clk_prepare_enable.exit69_crit_edge, %clk_prepare_enable.exit62.clk_prepare_enable.exit69_crit_edge
  %src_clk_cg = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 23
  %6 = ptrtoint ptr %src_clk_cg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_clk_cg, align 4
  %call.i70 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end.i74, label %clk_prepare_enable.exit69.clk_prepare_enable.exit76_crit_edge

clk_prepare_enable.exit69.clk_prepare_enable.exit76_crit_edge: ; preds = %clk_prepare_enable.exit69
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit76

if.end.i74:                                       ; preds = %clk_prepare_enable.exit69
  %call1.i72 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool2.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool2.not.i73, label %if.end.i74.clk_prepare_enable.exit76_crit_edge, label %if.then3.i75

if.end.i74.clk_prepare_enable.exit76_crit_edge:   ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit76

if.then3.i75:                                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %clk_prepare_enable.exit76

clk_prepare_enable.exit76:                        ; preds = %if.then3.i75, %if.end.i74.clk_prepare_enable.exit76_crit_edge, %clk_prepare_enable.exit69.clk_prepare_enable.exit76_crit_edge
  %bulk_clks = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 25
  %call.i77 = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef %bulk_clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %if.end.i81, label %clk_prepare_enable.exit76.do.end_crit_edge

clk_prepare_enable.exit76.do.end_crit_edge:       ; preds = %clk_prepare_enable.exit76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i81:                                       ; preds = %clk_prepare_enable.exit76
  %call1.i79 = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef %bulk_clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i79)
  %tobool2.not.i80 = icmp eq i32 %call1.i79, 0
  br i1 %tobool2.not.i80, label %if.end, label %if.then3.i82

if.then3.i82:                                     ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %bulk_clks) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i82, %clk_prepare_enable.exit76.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i79, %if.then3.i82 ], [ %call.i77, %clk_prepare_enable.exit76.do.end_crit_edge ]
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.118) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i81
  %call5 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call5, 20000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 833) #8
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool20.not90 = icmp sgt i32 %12, -1
  br i1 %tobool20.not90, label %if.end.land.lhs.true_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then37.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then37

if.then37:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  %tobool20.not = icmp sgt i32 %15, -1
  br i1 %tobool20.not, label %if.then37.land.lhs.true_crit_edge, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then37.land.lhs.true_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool41.not.inv = icmp slt i32 %18, 0
  %spec.select = select i1 %tobool41.not.inv, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ], [ 0, %if.then37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_init_hw(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pad_tune_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_tune_reg, align 4
  %reset = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 19
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @reset_control_assert(ptr noundef nonnull %5) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 50, i32 noundef 2) #8
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %call4 = tail call i32 @reset_control_deassert(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %11 = or i32 %10, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #8, !srcloc !316
  tail call fastcc void @msdc_reset_hw(ptr noundef %host)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !316
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr8 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %add.ptr15 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %16) #8, !srcloc !316
  %internal_cd = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 38
  %19 = ptrtoint ptr %internal_cd to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %internal_cd, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 8
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr19 = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %24 = and i32 %23, -15728641
  %25 = or i32 %24, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %25) #8, !srcloc !316
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr21 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %29) #8, !srcloc !316
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 8
  %add.ptr23 = getelementptr i8, ptr %31, i32 16
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %33 = or i32 %32, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %33) #8, !srcloc !316
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 8
  %add.ptr25 = getelementptr i8, ptr %35, i32 48
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %37 = or i32 %36, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %37) #8, !srcloc !316
  br label %if.end32

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr27 = getelementptr i8, ptr %22, i32 48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %39 = and i32 %38, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %39) #8, !srcloc !316
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 8
  %add.ptr29 = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %43 = and i32 %42, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %43) #8, !srcloc !316
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 8
  %add.ptr31 = getelementptr i8, ptr %45, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %47 = and i32 %46, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %47) #8, !srcloc !316
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then17
  %top_base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 9
  %48 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %top_base, align 4
  %tobool33.not = icmp eq ptr %49, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool33.not, label %do.body46, label %do.body35

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %top_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 0) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %top_base, align 4
  %add.ptr44 = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #8, !srcloc !316
  br label %do.body52

do.body46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 8
  %add.ptr50 = getelementptr i8, ptr %55, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 0) #8, !srcloc !316
  br label %do.body52

do.body52:                                        ; preds = %do.body46, %do.body35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 8
  %add.ptr56 = getelementptr i8, ptr %57, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 0) #8, !srcloc !316
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 8
  %add.ptr58 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %61 = and i32 %60, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %61) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @arm_heavy_mb() #8
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 8
  %add.ptr63 = getelementptr i8, ptr %63, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 1174420544) #8, !srcloc !316
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 8
  %add.ptr65 = getelementptr i8, ptr %65, i32 176
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %67 = and i32 %66, -8126465
  %68 = or i32 %67, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %68) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 8
  %add.ptr70 = getelementptr i8, ptr %70, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 -1992228865) #8, !srcloc !316
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 8
  %add.ptr72 = getelementptr i8, ptr %72, i32 520
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %74 = or i32 %73, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %74) #8, !srcloc !316
  %75 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_comp, align 4
  %stop_clk_fix = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %stop_clk_fix to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %stop_clk_fix, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool74.not = icmp eq i8 %78, 0
  br i1 %tobool74.not, label %do.body52.if.end82_crit_edge, label %if.then75

do.body52.if.end82_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then75:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 8
  %add.ptr77 = getelementptr i8, ptr %80, i32 180
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %82 = and i32 %81, -983041
  %83 = or i32 %82, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %83) #8, !srcloc !316
  %84 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base, align 8
  %add.ptr79 = getelementptr i8, ptr %85, i32 552
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %87 = and i32 %86, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %87) #8, !srcloc !316
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 8
  %add.ptr81 = getelementptr i8, ptr %89, i32 552
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %91 = and i32 %90, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %91) #8, !srcloc !316
  br label %if.end82

if.end82:                                         ; preds = %if.then75, %do.body52.if.end82_crit_edge
  %92 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_comp, align 4
  %busy_check = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %93, i32 0, i32 6
  %94 = ptrtoint ptr %busy_check to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %busy_check, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool84.not = icmp eq i8 %95, 0
  br i1 %tobool84.not, label %if.end82.if.end88_crit_edge, label %if.then85

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 8
  %add.ptr87 = getelementptr i8, ptr %97, i32 180
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %99 = and i32 %98, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %99) #8, !srcloc !316
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %if.end82.if.end88_crit_edge
  %100 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev_comp, align 4
  %async_fifo = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %async_fifo to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %async_fifo, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool90.not = icmp eq i8 %103, 0
  br i1 %tobool90.not, label %if.end88.if.end116_crit_edge, label %if.then91

if.end88.if.end116_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end116

if.then91:                                        ; preds = %if.end88
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 8
  %add.ptr93 = getelementptr i8, ptr %105, i32 184
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %107 = or i32 %106, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %107) #8, !srcloc !316
  %108 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev_comp, align 4
  %enhance_rx = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %enhance_rx to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %enhance_rx, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool95.not = icmp eq i8 %111, 0
  br i1 %tobool95.not, label %if.else106, label %if.then96

if.then96:                                        ; preds = %if.then91
  %112 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %top_base, align 4
  %tobool98.not = icmp eq ptr %113, null
  br i1 %tobool98.not, label %if.else102, label %if.then99

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %113) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %115 = or i32 %114, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %113, i32 %115) #8, !srcloc !316
  br label %if.end111

if.else102:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base, align 8
  %add.ptr104 = getelementptr i8, ptr %117, i32 100
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %119 = or i32 %118, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %119) #8, !srcloc !316
  br label %if.end111

if.else106:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 8
  %add.ptr108 = getelementptr i8, ptr %121, i32 184
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %123 = and i32 %122, -1793
  %124 = or i32 %123, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %124) #8, !srcloc !316
  %125 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base, align 8
  %add.ptr110 = getelementptr i8, ptr %126, i32 184
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr110) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %128 = and i32 %127, -225
  %129 = or i32 %128, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %129) #8, !srcloc !316
  br label %if.end111

if.end111:                                        ; preds = %if.else106, %if.else102, %if.then99
  %130 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base, align 8
  %add.ptr113 = getelementptr i8, ptr %131, i32 184
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %133 = and i32 %132, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %133) #8, !srcloc !316
  %134 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base, align 8
  %add.ptr115 = getelementptr i8, ptr %135, i32 184
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %137 = or i32 %136, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %137) #8, !srcloc !316
  br label %if.end116

if.end116:                                        ; preds = %if.end111, %if.end88.if.end116_crit_edge
  %138 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev_comp, align 4
  %support_64g = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %139, i32 0, i32 9
  %140 = ptrtoint ptr %support_64g to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %support_64g, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool118.not = icmp eq i8 %141, 0
  br i1 %tobool118.not, label %if.end116.if.end122_crit_edge, label %if.then119

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base, align 8
  %add.ptr121 = getelementptr i8, ptr %143, i32 184
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr121) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %145 = or i32 %144, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %145) #8, !srcloc !316
  br label %if.end122

if.end122:                                        ; preds = %if.then119, %if.end116.if.end122_crit_edge
  %146 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev_comp, align 4
  %data_tune = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %data_tune to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %data_tune, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool124.not = icmp eq i8 %149, 0
  %150 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %top_base, align 4
  %tobool141.not = icmp eq ptr %151, null
  br i1 %tobool124.not, label %if.else139, label %if.then125

if.then125:                                       ; preds = %if.end122
  br i1 %tobool141.not, label %if.else135, label %if.then128

if.then128:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %151) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %153 = or i32 %152, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %151, i32 %153) #8, !srcloc !316
  %154 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %top_base, align 4
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %157 = and i32 %156, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %157) #8, !srcloc !316
  %158 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %top_base, align 4
  %add.ptr134 = getelementptr i8, ptr %159, i32 4
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %161 = or i32 %160, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134, i32 %161) #8, !srcloc !316
  br label %if.end149

if.else135:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %base, align 8
  %add.ptr137 = getelementptr i8, ptr %163, i32 %3
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %165 = or i32 %164, 2105344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %165) #8, !srcloc !316
  br label %if.end149

if.else139:                                       ; preds = %if.end122
  br i1 %tobool141.not, label %if.else145, label %if.then142

if.then142:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #10
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %151) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %167 = or i32 %166, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %151, i32 %167) #8, !srcloc !316
  br label %if.end149

if.else145:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base, align 8
  %add.ptr147 = getelementptr i8, ptr %169, i32 %3
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %171 = or i32 %170, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %171) #8, !srcloc !316
  br label %if.end149

if.end149:                                        ; preds = %if.else145, %if.then142, %if.else135, %if.then128
  %caps2 = getelementptr i8, ptr %host, i32 -924
  %172 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %caps2, align 4
  %and = and i32 %173, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool150.not = icmp eq i32 %and, 0
  %174 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %base, align 8
  %add.ptr160 = getelementptr i8, ptr %175, i32 48
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool150.not, label %if.else158, label %if.then151

if.then151:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %177 = and i32 %176, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %177) #8, !srcloc !316
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 8
  %add.ptr155 = getelementptr i8, ptr %179, i32 16
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %181 = and i32 %180, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 %181) #8, !srcloc !316
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 8
  %add.ptr157 = getelementptr i8, ptr %183, i32 100
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %185 = and i32 %184, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %185) #8, !srcloc !316
  br label %if.end165

if.else158:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  %186 = or i32 %176, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %186) #8, !srcloc !316
  %187 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base, align 8
  %add.ptr162 = getelementptr i8, ptr %188, i32 48
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %190 = and i32 %189, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %190) #8, !srcloc !316
  %191 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base, align 8
  %add.ptr164 = getelementptr i8, ptr %192, i32 100
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %194 = or i32 %193, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr164, i32 %194) #8, !srcloc !316
  br label %if.end165

if.end165:                                        ; preds = %if.else158, %if.then151
  %195 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base, align 8
  %add.ptr167 = getelementptr i8, ptr %196, i32 48
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr167) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %198 = and i32 %197, -256
  %199 = or i32 %198, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr167, i32 %199) #8, !srcloc !316
  %200 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base, align 8
  %add.ptr171 = getelementptr i8, ptr %201, i32 4
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #8, !srcloc !311
  %203 = tail call i32 @llvm.bswap.i32(i32 %202)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  %def_tune_para = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41
  %204 = ptrtoint ptr %def_tune_para to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %203, ptr %def_tune_para, align 8
  %205 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %base, align 8
  %add.ptr178 = getelementptr i8, ptr %206, i32 4
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #8, !srcloc !311
  %208 = tail call i32 @llvm.bswap.i32(i32 %207)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  %saved_tune_para = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42
  %209 = ptrtoint ptr %saved_tune_para to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %saved_tune_para, align 4
  %210 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %top_base, align 4
  %tobool184.not = icmp eq ptr %211, null
  br i1 %tobool184.not, label %if.else220, label %if.then185

if.then185:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %211) #8, !srcloc !311
  %213 = tail call i32 @llvm.bswap.i32(i32 %212)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  %emmc_top_control = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41, i32 3
  %214 = ptrtoint ptr %emmc_top_control to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %emmc_top_control, align 4
  %215 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %top_base, align 4
  %add.ptr197 = getelementptr i8, ptr %216, i32 4
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #8, !srcloc !311
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  %emmc_top_cmd = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41, i32 4
  %219 = ptrtoint ptr %emmc_top_cmd to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %emmc_top_cmd, align 8
  %220 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %top_base, align 4
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %221) #8, !srcloc !311
  %223 = tail call i32 @llvm.bswap.i32(i32 %222)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  %emmc_top_control210 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 3
  %224 = ptrtoint ptr %emmc_top_control210 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %emmc_top_control210, align 4
  %225 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %top_base, align 4
  %add.ptr214 = getelementptr i8, ptr %226, i32 4
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr214) #8, !srcloc !311
  %228 = tail call i32 @llvm.bswap.i32(i32 %227)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  %emmc_top_cmd219 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 4
  %229 = ptrtoint ptr %emmc_top_cmd219 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %emmc_top_cmd219, align 4
  br label %do.body239

if.else220:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base, align 8
  %add.ptr224 = getelementptr i8, ptr %231, i32 %3
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #8, !srcloc !311
  %233 = tail call i32 @llvm.bswap.i32(i32 %232)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  %pad_tune = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41, i32 1
  %234 = ptrtoint ptr %pad_tune to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %pad_tune, align 4
  %235 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base, align 8
  %add.ptr232 = getelementptr i8, ptr %236, i32 %3
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr232) #8, !srcloc !311
  %238 = tail call i32 @llvm.bswap.i32(i32 %237)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  %pad_tune237 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 1
  %239 = ptrtoint ptr %pad_tune237 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %238, ptr %pad_tune237, align 4
  br label %do.body239

do.body239:                                       ; preds = %if.else220, %if.then185
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_init_hw.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_init_hw, %if.then245)) #8
          to label %do.end248 [label %if.then245], !srcloc !336

if.then245:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_init_hw.__UNIQUE_ID_ddebug319, ptr noundef %241, ptr noundef nonnull @.str.121) #8
  br label %do.end248

do.end248:                                        ; preds = %if.then245, %do.body239
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 -1920
  %lock = getelementptr inbounds %struct.msdc_host, ptr %dev_id, i32 0, i32 3
  %base = getelementptr inbounds %struct.msdc_host, ptr %dev_id, i32 0, i32 8
  %mrq14 = getelementptr inbounds %struct.msdc_host, ptr %dev_id, i32 0, i32 4
  %cmd15 = getelementptr inbounds %struct.msdc_host, ptr %dev_id, i32 0, i32 5
  %data16 = getelementptr inbounds %struct.msdc_host, ptr %dev_id, i32 0, i32 6
  %internal_cd = getelementptr inbounds %struct.msdc_host, ptr %dev_id, i32 0, i32 38
  %caps2 = getelementptr i8, ptr %dev_id, i32 -924
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !311
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  %and = and i32 %7, %3
  %and10 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %while.cond.do.body_crit_edge, label %if.then

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr6.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %11 = and i32 %10, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %11) #8, !srcloc !316
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr8.i = getelementptr i8, ptr %13, i32 48
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %15 = and i32 %14, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %15) #8, !srcloc !316
  br label %do.body

do.body:                                          ; preds = %if.then, %while.cond.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %and)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 8
  %add.ptr13 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %16) #8, !srcloc !316
  %19 = ptrtoint ptr %mrq14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mrq14, align 8
  %21 = ptrtoint ptr %cmd15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmd15, align 4
  %23 = ptrtoint ptr %data16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data16, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br i1 %tobool.not, label %do.body.if.end22_crit_edge, label %if.then21

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sdio_signal_irq(ptr noundef %add.ptr.i) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %do.body.if.end22_crit_edge
  %and24 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end32_crit_edge, label %if.then26

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then26:                                        ; preds = %if.end22
  %25 = ptrtoint ptr %internal_cd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %internal_cd, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool27.not = icmp eq i8 %26, 0
  br i1 %tobool27.not, label %if.then26.if.end30_crit_edge, label %if.then28

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmc_detect_change(ptr noundef %add.ptr.i, i32 noundef 2) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then26.if.end30_crit_edge
  %and31 = and i32 %3, -3
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %if.end22.if.end32_crit_edge
  %events.0 = phi i32 [ %and31, %if.end30 ], [ %3, %if.end22.if.end32_crit_edge ]
  %and33 = and i32 %7, -129
  %and34 = and i32 %and33, %events.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.cleanup104_crit_edge, label %if.end37

if.end32.cleanup104_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end37:                                         ; preds = %if.end32
  %27 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %caps2, align 4
  %and38 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %and40 = and i32 %events.0, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond = select i1 %tobool39.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.end49, label %if.then42

if.then42:                                        ; preds = %if.end37
  %and.i = and i32 %events.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then42.if.end8.sink.split.i_crit_edge

if.then42.if.end8.sink.split.i_crit_edge:         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.sink.split.i

if.else.i:                                        ; preds = %if.then42
  %and1.i = and i32 %events.0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.if.end8.sink.split.i_crit_edge

if.else.i.if.end8.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.sink.split.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.end8.sink.split.i:                             ; preds = %if.else.i.if.end8.sink.split.i_crit_edge, %if.then42.if.end8.sink.split.i_crit_edge
  %.str.128.sink.i = phi ptr [ @.str.125, %if.then42.if.end8.sink.split.i_crit_edge ], [ @.str.128, %if.else.i.if.end8.sink.split.i_crit_edge ]
  %cmd_err.0.ph.i = phi i32 [ -84, %if.then42.if.end8.sink.split.i_crit_edge ], [ -110, %if.else.i.if.end8.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull %.str.128.sink.i, ptr noundef nonnull @.str.126) #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end8.sink.split.i, %if.else.i.if.end8.i_crit_edge
  %tobool26.not.i = phi i1 [ false, %if.else.i.if.end8.i_crit_edge ], [ true, %if.end8.sink.split.i ]
  %cmd_err.0.i = phi i32 [ 0, %if.else.i.if.end8.i_crit_edge ], [ %cmd_err.0.ph.i, %if.end8.sink.split.i ]
  %and9.i = and i32 %events.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else16.i, label %if.end8.i.do.end31.sink.split.i_crit_edge

if.end8.i.do.end31.sink.split.i_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.sink.split.i

if.else16.i:                                      ; preds = %if.end8.i
  %and17.i = and i32 %events.0, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end25.i, label %if.else16.i.do.end31.sink.split.i_crit_edge

if.else16.i.do.end31.sink.split.i_crit_edge:      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.sink.split.i

if.end25.i:                                       ; preds = %if.else16.i
  br i1 %tobool26.not.i, label %if.end25.i.do.end31.i_crit_edge, label %if.end25.i.msdc_cmdq_irq.exit_crit_edge

if.end25.i.msdc_cmdq_irq.exit_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmdq_irq.exit

if.end25.i.do.end31.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31.i

do.end31.sink.split.i:                            ; preds = %if.else16.i.do.end31.sink.split.i_crit_edge, %if.end8.i.do.end31.sink.split.i_crit_edge
  %.str.131.sink.i = phi ptr [ @.str.131, %if.end8.i.do.end31.sink.split.i_crit_edge ], [ @.str.134, %if.else16.i.do.end31.sink.split.i_crit_edge ]
  %dat_err.06.ph.i = phi i32 [ -84, %if.end8.i.do.end31.sink.split.i_crit_edge ], [ -110, %if.else16.i.do.end31.sink.split.i_crit_edge ]
  %31 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull %.str.131.sink.i, ptr noundef nonnull @.str.126) #11
  br label %do.end31.i

do.end31.i:                                       ; preds = %do.end31.sink.split.i, %if.end25.i.do.end31.i_crit_edge
  %dat_err.06.i = phi i32 [ 0, %if.end25.i.do.end31.i_crit_edge ], [ %dat_err.06.ph.i, %do.end31.sink.split.i ]
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.137, i32 noundef %cmd_err.0.i, i32 noundef %dat_err.06.i, i32 noundef %events.0) #11
  br label %msdc_cmdq_irq.exit

msdc_cmdq_irq.exit:                               ; preds = %do.end31.i, %if.end25.i.msdc_cmdq_irq.exit_crit_edge
  %dat_err.07.i = phi i32 [ 0, %if.end25.i.msdc_cmdq_irq.exit_crit_edge ], [ %dat_err.06.i, %do.end31.i ]
  %call34.i = tail call i32 @cqhci_irq(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %cmd_err.0.i, i32 noundef %dat_err.07.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %events.0)
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 8
  %add.ptr48 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %35) #8, !srcloc !316
  br label %cleanup104

if.end49:                                         ; preds = %if.end37
  %tobool50.not = icmp eq ptr %20, null
  br i1 %tobool50.not, label %do.end54, label %do.body77

do.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, i32 noundef %events.0, i32 noundef %7) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1613, i32 noundef 9, ptr noundef null) #8
  br label %cleanup104

do.body77:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_irq.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_irq, %if.then87)) #8
          to label %do.end91 [label %if.then87], !srcloc !336

if.then87:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_irq.__UNIQUE_ID_ddebug318, ptr noundef %41, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i32 noundef %events.0) #8
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body77
  %tobool92.not = icmp eq ptr %22, null
  br i1 %tobool92.not, label %if.else, label %if.then93

if.then93:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_cmd_done(ptr noundef %dev_id, i32 noundef %events.0, ptr noundef nonnull %20, ptr noundef nonnull %22)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then96, %if.else.while.cond.backedge_crit_edge, %if.then93
  br label %while.cond

if.else:                                          ; preds = %do.end91
  %tobool95.not = icmp eq ptr %24, null
  br i1 %tobool95.not, label %if.else.while.cond.backedge_crit_edge, label %if.then96

if.else.while.cond.backedge_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then96:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_data_xfer_done(ptr noundef %dev_id, i32 noundef %events.0, ptr noundef nonnull %20, ptr noundef nonnull %24)
  br label %while.cond.backedge

cleanup104:                                       ; preds = %do.end54, %msdc_cmdq_irq.exit, %if.end32.cleanup104_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_deinit_hw(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %internal_cd = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %internal_cd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %internal_cd, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !316
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #8, !srcloc !316
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !341
  tail call void @arm_heavy_mb() #8
  %base3 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base3, align 8
  %add.ptr4 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #8, !srcloc !316
  %12 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base3, align 8
  %add.ptr6 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !342
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !343
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base3, align 8
  %add.ptr12 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %14) #8, !srcloc !316
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_gate_clock(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bulk_clks = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 25
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef %bulk_clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef %bulk_clks) #8
  %src_clk_cg = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 23
  %0 = ptrtoint ptr %src_clk_cg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src_clk_cg, align 4
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  %src_clk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 20
  %2 = ptrtoint ptr %src_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_clk, align 8
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %bus_clk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 22
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %h_clk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 21
  %6 = ptrtoint ptr %h_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %h_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_post_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %and = and i32 %3, -3
  %4 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %host_cookie, align 4
  %5 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %.not.i.not = icmp eq i32 %5, 0
  br i1 %.not.i.not, label %if.then3.cleanup_crit_edge, label %if.then4.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %7, ptr noundef %9, i32 noundef %11, i32 noundef %cond.i.i, i32 noundef 0) #8
  %14 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_cookie, align 4
  %and6.i = and i32 %15, -2
  store i32 %and6.i, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_pre_req(ptr nocapture noundef readonly %mmc, ptr nocapture noundef readonly %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.msdc_prepare_data.exit_crit_edge

if.end.msdc_prepare_data.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_prepare_data.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %3, 1
  %4 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.i, ptr %host_cookie.i, align 4
  %5 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private.i, align 8
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call2.i = tail call i32 @dma_map_sg_attrs(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef %cond.i.i, i32 noundef 0) #8
  %sg_count.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i, ptr %sg_count.i, align 4
  br label %msdc_prepare_data.exit

msdc_prepare_data.exit:                           ; preds = %if.then.i, %if.end.msdc_prepare_data.exit_crit_edge
  %14 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_cookie.i, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %host_cookie.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %msdc_prepare_data.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_ops_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %error = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %error, align 4
  %mrq1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %1 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mrq1, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !344

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1306, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mrq, ptr %mrq1, align 8
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool22.not = icmp eq ptr %5, null
  br i1 %tobool22.not, label %if.end.if.end25_crit_edge, label %if.then23

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %if.end
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_cookie.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then23.if.end25_crit_edge

if.then23.if.end25_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %7, 1
  %8 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %host_cookie.i, align 4
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 8
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %11 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %13 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call2.i = tail call i32 @dma_map_sg_attrs(ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %cond.i.i, i32 noundef 0) #8
  %sg_count.i = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 11
  %17 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2.i, ptr %sg_count.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then.i, %if.then23.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %18 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mrq, align 4
  %tobool26.not = icmp eq ptr %19, null
  br i1 %tobool26.not, label %if.end25.if.else_crit_edge, label %land.lhs.true

if.end25.if.else_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end25
  %card = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 37
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %type = getelementptr inbounds %struct.mmc_card, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp = icmp eq i32 %23, 0
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arg = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %25)
  %tobool28.not = icmp ult i32 %25, 65536
  br i1 %tobool28.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.if.then29_crit_edge

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  tail call fastcc void @msdc_start_command(ptr noundef %private.i, ptr noundef %mrq, ptr noundef nonnull %19)
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.end25.if.else_crit_edge
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd, align 4
  tail call fastcc void @msdc_start_command(ptr noundef %private.i, ptr noundef %mrq, ptr noundef %27)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_ops_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_width, align 1
  %conv = zext i8 %1 to i32
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !345
  %5 = and i32 %4, -769
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  %7 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.do.body.i_crit_edge [
    i8 3, label %sw.bb4.i
    i8 2, label %sw.bb2.i
  ]

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or3.i = or i32 %6, 65536
  br label %do.body.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or5.i = or i32 %6, 131072
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb4.i, %sw.bb2.i, %entry.do.body.i_crit_edge
  %val.0.i = phi i32 [ %or3.i, %sw.bb2.i ], [ %or5.i, %sw.bb4.i ], [ %6, %entry.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !346
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %8) #8, !srcloc !316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_set_buswidth.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_ops_set_ios, %if.then.i)) #8
          to label %msdc_set_buswidth.exit [label %if.then.i], !srcloc !336

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_set_buswidth.__UNIQUE_ID_ddebug316, ptr noundef %12, ptr noundef nonnull @.str.66, i32 noundef %conv) #8
  br label %msdc_set_buswidth.exit

msdc_set_buswidth.exit:                           ; preds = %if.then.i, %do.body.i
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %13 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %power_mode, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %14, label %msdc_set_buswidth.exit.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
    i8 0, label %sw.bb25
  ]

msdc_set_buswidth.exit.sw.epilog_crit_edge:       ; preds = %msdc_set_buswidth.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %msdc_set_buswidth.exit
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %16 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  tail call fastcc void @msdc_init_hw(ptr noundef %private.i)
  %18 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %supply, align 16
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %20 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdd, align 4
  %call5 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %19, i16 noundef zeroext %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then.sw.epilog_crit_edge, label %do.end

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.60) #11
  br label %cleanup

sw.bb8:                                           ; preds = %msdc_set_buswidth.exit
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %24 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vqmmc, align 4
  %cmp.i85 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %sw.bb8.sw.epilog_crit_edge, label %land.lhs.true

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb8
  %vqmmc_enabled = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 29
  %26 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vqmmc_enabled, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not = icmp eq i8 %27, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then12:                                        ; preds = %land.lhs.true
  %call15 = tail call i32 @regulator_enable(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else, label %do.end20

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.63) #11
  br label %sw.epilog

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %vqmmc_enabled, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %msdc_set_buswidth.exit
  %supply26 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %31 = ptrtoint ptr %supply26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %supply26, align 16
  %cmp.i86 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %sw.bb25.if.end33_crit_edge, label %if.then29

sw.bb25.if.end33_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then29:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %32, i16 noundef zeroext 0) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %sw.bb25.if.end33_crit_edge
  %vqmmc35 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %33 = ptrtoint ptr %vqmmc35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vqmmc35, align 4
  %cmp.i87 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.end33.sw.epilog_crit_edge, label %land.lhs.true37

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true37:                                  ; preds = %if.end33
  %vqmmc_enabled38 = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 29
  %35 = ptrtoint ptr %vqmmc_enabled38 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %vqmmc_enabled38, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  br i1 %tobool39.not, label %land.lhs.true37.sw.epilog_crit_edge, label %if.then41

land.lhs.true37.sw.epilog_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 @regulator_disable(ptr noundef %34) #8
  %37 = ptrtoint ptr %vqmmc_enabled38 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %vqmmc_enabled38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then41, %land.lhs.true37.sw.epilog_crit_edge, %if.end33.sw.epilog_crit_edge, %if.else, %do.end20, %land.lhs.true.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %msdc_set_buswidth.exit.sw.epilog_crit_edge
  %mclk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 3
  %38 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mclk, align 4
  %40 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp.not = icmp eq i32 %39, %41
  br i1 %cmp.not, label %lor.lhs.false, label %sw.epilog.if.then53_crit_edge

sw.epilog.if.then53_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false:                                    ; preds = %sw.epilog
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1
  %42 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %timing, align 4
  %timing49 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %44 = ptrtoint ptr %timing49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %timing49, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp51.not = icmp eq i8 %43, %45
  br i1 %cmp51.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then53_crit_edge

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then53:                                        ; preds = %lor.lhs.false.if.then53_crit_edge, %sw.epilog.if.then53_crit_edge
  %timing54 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %46 = ptrtoint ptr %timing54 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %timing54, align 4
  tail call fastcc void @msdc_set_mclk(ptr noundef %private.i, i8 noundef zeroext %47, i32 noundef %41)
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %lor.lhs.false.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_get_cd(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 32
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %internal_cd = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 38
  %2 = ptrtoint ptr %internal_cd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %internal_cd, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  %7 = lshr i32 %6, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !347
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 17
  %8 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps2, align 4
  %and8 = lshr i32 %9, 10
  %and8.lobit23 = xor i32 %and8, %7
  %10 = and i32 %and8.lobit23, 1
  %spec.select = xor i32 %10, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 1, %entry.cleanup_crit_edge ], [ %spec.select, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call fastcc void @__msdc_enable_sdio_irq(ptr noundef %private.i, i32 noundef %enb)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enb)
  %tobool.not = icmp eq i32 %enb, 0
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %usage_count.i13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i13, i32 noundef 4) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i13, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i13, ptr %usage_count.i13, i32 1, ptr elementtype(i32) %usage_count.i13) #8, !srcloc !348
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void @llvm.prefetch.p0(ptr %usage_count.i13, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i13, ptr %usage_count.i13, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i13) #8, !srcloc !309
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.else.if.end_crit_edge, label %do.end11.i.i.i.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end11.i.i.i.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !310
  br label %if.end

if.end:                                           ; preds = %do.end11.i.i.i.i, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_ack_sdio_irq(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base5.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base5.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %3 = or i32 %2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %3) #8, !srcloc !316
  %4 = ptrtoint ptr %base5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base5.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %7 = or i32 %6, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #8, !srcloc !316
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_comp.i, align 4
  %recheck_sdio_irq.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %recheck_sdio_irq.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %recheck_sdio_irq.i, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not.i = icmp eq i8 %11, 0
  br i1 %tobool3.not.i, label %entry.__msdc_enable_sdio_irq.exit_crit_edge, label %if.then4.i

entry.__msdc_enable_sdio_irq.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__msdc_enable_sdio_irq.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_recheck_sdio_irq(ptr noundef %private.i) #8
  br label %__msdc_enable_sdio_irq.exit

__msdc_enable_sdio_irq.exit:                      ; preds = %if.then4.i, %entry.__msdc_enable_sdio_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_ops_switch_volt(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %2 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch = icmp ult i8 %3, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.70) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call8 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.body12, label %if.end23

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_ops_switch_volt.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_ops_switch_volt, %if.then16)) #8
          to label %cleanup [label %if.then16], !srcloc !336

if.then16:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private.i, align 8
  %8 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal_voltage, align 1
  %conv19 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_ops_switch_volt.__UNIQUE_ID_ddebug317, ptr noundef %7, ptr noundef nonnull @.str.72, i32 noundef %call8, i32 noundef %conv19) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %10 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp26 = icmp eq i8 %11, 1
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 3
  %12 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pinctrl, align 8
  br i1 %cmp26, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %pins_uhs = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %14 = ptrtoint ptr %pins_uhs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pins_uhs, align 8
  %call29 = tail call i32 @pinctrl_select_state(ptr noundef %13, ptr noundef %15) #8
  br label %cleanup

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %pins_default = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 6
  %16 = ptrtoint ptr %pins_default to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins_default, align 4
  %call31 = tail call i32 @pinctrl_select_state(ptr noundef %13, ptr noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then28, %if.then16, %do.body12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call8, %if.then16 ], [ 0, %if.then28 ], [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !349
  %3 = lshr i32 %2, 8
  %.lobit = and i32 %3, 1
  %4 = xor i32 %.lobit, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pad_tune_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_tune_reg, align 4
  %data_tune = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %data_tune to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data_tune, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %async_fifo = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %async_fifo to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %async_fifo, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %call4 = tail call fastcc i32 @msdc_tune_together(ptr noundef %mmc, i32 noundef %opcode)
  %hs400_mode = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 36
  %8 = ptrtoint ptr %hs400_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hs400_mode, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then.tune_done_crit_edge, label %if.then6

if.then.tune_done_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %tune_done

if.then6:                                         ; preds = %if.then
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %13 = and i32 %12, -67174401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !316
  %top_base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %14 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %17 = and i32 %16, 2146500607
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %17) #8, !srcloc !316
  br label %tune_done

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pad_tune_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pad_tune_reg.i, align 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr2.i = getelementptr i8, ptr %23, i32 %21
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %25 = and i32 %24, -2031617
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %25) #8, !srcloc !316
  br label %tune_done

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %hs400_mode8 = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 36
  %26 = ptrtoint ptr %hs400_mode8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hs400_mode8, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool9.not = icmp eq i8 %27, 0
  br i1 %tobool9.not, label %if.end7.if.else_crit_edge, label %land.lhs.true10

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true10:                                  ; preds = %if.end7
  %hs400_tune = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %hs400_tune to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hs400_tune, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool12.not = icmp eq i8 %29, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.else_crit_edge, label %if.then13

land.lhs.true10.if.else_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call fastcc i32 @hs400_tune_response(ptr noundef %mmc, i32 noundef %opcode)
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true10.if.else_crit_edge, %if.end7.if.else_crit_edge
  %call15 = tail call fastcc i32 @msdc_tune_response(ptr noundef %mmc, i32 noundef %opcode)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %call15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, -5
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.73) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end16
  %32 = ptrtoint ptr %hs400_mode8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hs400_mode8, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp21 = icmp eq i8 %33, 0
  br i1 %cmp21, label %if.then23, label %if.end18.tune_done_crit_edge

if.end18.tune_done_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %tune_done

if.then23:                                        ; preds = %if.end18
  %call24 = tail call fastcc i32 @msdc_tune_data(ptr noundef %mmc, i32 noundef %opcode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %call24)
  %cmp25 = icmp eq i32 %call24, -5
  br i1 %cmp25, label %do.end30, label %if.then23.tune_done_crit_edge

if.then23.tune_done_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %tune_done

do.end30:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.76) #11
  br label %tune_done

tune_done:                                        ; preds = %do.end30, %if.then23.tune_done_crit_edge, %if.end18.tune_done_crit_edge, %if.else.i, %if.then.i, %if.then.tune_done_crit_edge
  %ret.1 = phi i32 [ %call4, %if.then.tune_done_crit_edge ], [ -5, %do.end30 ], [ %call24, %if.then23.tune_done_crit_edge ], [ %ret.0, %if.end18.tune_done_crit_edge ], [ %call4, %if.then.i ], [ %call4, %if.else.i ]
  %base34 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base34, align 8
  %add.ptr35 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #8, !srcloc !311
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !350
  %saved_tune_para = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 3
  %40 = ptrtoint ptr %saved_tune_para to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %saved_tune_para, align 4
  %41 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base34, align 8
  %add.ptr41 = getelementptr i8, ptr %42, i32 %3
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !311
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !351
  %pad_tune = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %pad_tune to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pad_tune, align 4
  %46 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base34, align 8
  %add.ptr49 = getelementptr i8, ptr %47, i32 396
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !311
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !352
  %pad_cmd_tune = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %pad_cmd_tune to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %pad_cmd_tune, align 4
  %top_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %51 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %top_base, align 4
  %tobool54.not = icmp eq ptr %52, null
  br i1 %tobool54.not, label %tune_done.cleanup_crit_edge, label %if.then55

tune_done.cleanup_crit_edge:                      ; preds = %tune_done
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %tune_done
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %52) #8, !srcloc !311
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !353
  %emmc_top_control = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 3
  %55 = ptrtoint ptr %emmc_top_control to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %emmc_top_control, align 4
  %56 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %top_base, align 4
  %add.ptr67 = getelementptr i8, ptr %57, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #8, !srcloc !311
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !354
  %emmc_top_cmd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4
  %60 = ptrtoint ptr %emmc_top_cmd to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %emmc_top_cmd, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %tune_done.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.1, %if.then55 ], [ %ret.1, %tune_done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_prepare_hs400_tuning(ptr nocapture noundef %mmc, ptr nocapture noundef readnone %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %hs400_mode = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 36
  %0 = ptrtoint ptr %hs400_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hs400_mode, align 1
  %top_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %1 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %top_base, align 4
  %tobool.not = icmp eq ptr %2, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %hs400_ds_delay5 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 2
  %3 = ptrtoint ptr %hs400_ds_delay5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hs400_ds_delay5, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  br i1 %tobool.not, label %do.body2, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %top_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !316
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr6 = getelementptr i8, ptr %9, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #8, !srcloc !316
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  %base7 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base7, align 8
  %add.ptr8 = getelementptr i8, ptr %11, i32 184
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %13 = and i32 %12, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %13) #8, !srcloc !316
  %14 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base7, align 8
  %add.ptr10 = getelementptr i8, ptr %15, i32 544
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %17 = and i32 %16, -520093697
  %18 = or i32 %17, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %18) #8, !srcloc !316
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_execute_hs400_tuning(ptr nocapture noundef %mmc, ptr noundef %card) #2 align 64 {
entry:
  %ext_csd = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_csd) #8
  %0 = ptrtoint ptr %ext_csd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ext_csd, align 4, !annotation !355
  %top_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %1 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %top_base, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %4 = or i32 %3, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !316
  %hs400_ds_dly3 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 3
  %5 = ptrtoint ptr %hs400_ds_dly3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hs400_ds_dly3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then.if.end15_crit_edge, label %if.then3

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %top_base, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %10 = and i32 %9, -520093697
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %or.i113 = or i32 %11, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i113) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #8, !srcloc !316
  br label %if.end15

if.else:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %14, i32 392
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %16 = or i32 %15, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %16) #8, !srcloc !316
  %hs400_ds_dly38 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 3
  %17 = ptrtoint ptr %hs400_ds_dly38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hs400_ds_dly38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool9.not = icmp eq i32 %18, 0
  br i1 %tobool9.not, label %if.else.if.end15_crit_edge, label %if.then10

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 8
  %add.ptr12 = getelementptr i8, ptr %20, i32 392
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %22 = and i32 %21, -15728897
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %shl.i = shl i32 %18, 12
  %or.i116 = or i32 %23, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i116) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %24) #8, !srcloc !316
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.else.if.end15_crit_edge, %if.then3, %if.then.if.end15_crit_edge
  %hs400_tuning = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 37
  %25 = ptrtoint ptr %hs400_tuning to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %hs400_tuning, align 2
  %base22 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15
  %result_dly1.0131 = phi i32 [ 0, %if.end15 ], [ %result_dly1.1, %for.inc.for.body_crit_edge ]
  %i.0129 = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %26 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %top_base, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr20 = getelementptr i8, ptr %27, i32 12
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %29 = and i32 %28, -8126465
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %shl.i118 = shl i32 %i.0129, 10
  %or.i119 = or i32 %30, %shl.i118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %31 = call i32 @llvm.bswap.i32(i32 %or.i119) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %31) #8, !srcloc !316
  br label %if.end24

if.else21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base22, align 8
  %add.ptr23 = getelementptr i8, ptr %33, i32 392
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %35 = and i32 %34, -2080374785
  %36 = call i32 @llvm.bswap.i32(i32 %35)
  %shl.i121 = shl i32 %i.0129, 2
  %or.i122 = or i32 %36, %shl.i121
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %37 = call i32 @llvm.bswap.i32(i32 %or.i122) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %37) #8, !srcloc !316
  br label %if.end24

if.end24:                                         ; preds = %if.else21, %if.then18
  %call25 = call i32 @mmc_get_ext_csd(ptr noundef %card, ptr noundef nonnull %ext_csd) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end24.for.inc_crit_edge

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %i.0129
  %or = or i32 %result_dly1.0131, %shl
  %38 = ptrtoint ptr %ext_csd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ext_csd, align 4
  call void @kfree(ptr noundef %39) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %if.end24.for.inc_crit_edge
  %result_dly1.1 = phi i32 [ %result_dly1.0131, %if.end24.for.inc_crit_edge ], [ %or, %if.then27 ]
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %40 = ptrtoint ptr %hs400_tuning to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %hs400_tuning, align 2
  %call30 = call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %result_dly1.1)
  %tmp.coerce.0.extract.shift = lshr i32 %call30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %call30)
  %cmp31 = icmp ult i32 %call30, 16777216
  br i1 %cmp31, label %do.end, label %if.end34

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.92) #11
  %43 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.98) #11
  br label %cleanup

if.end34:                                         ; preds = %for.end
  %45 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %top_base, align 4
  %tobool36.not = icmp eq ptr %46, null
  br i1 %tobool36.not, label %if.else41, label %if.then37

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr39 = getelementptr i8, ptr %46, i32 12
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %48 = and i32 %47, -8126465
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %conv40 = shl i32 %tmp.coerce.0.extract.shift, 10
  %shl.i124 = and i32 %conv40, 261120
  %or.i125 = or i32 %49, %shl.i124
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %50 = call i32 @llvm.bswap.i32(i32 %or.i125) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %50) #8, !srcloc !316
  br label %if.end46

if.else41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base22, align 8
  %add.ptr43 = getelementptr i8, ptr %52, i32 392
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %54 = and i32 %53, -2080374785
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %conv45 = shl nuw nsw i32 %tmp.coerce.0.extract.shift, 2
  %shl.i127 = and i32 %conv45, 1020
  %or.i128 = or i32 %55, %shl.i127
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %56 = call i32 @llvm.bswap.i32(i32 %or.i128) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %56) #8, !srcloc !316
  br label %if.end46

if.end46:                                         ; preds = %if.else41, %if.then37
  %57 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %top_base, align 4
  %tobool48.not = icmp eq ptr %58, null
  br i1 %tobool48.not, label %if.else55, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr51 = getelementptr i8, ptr %58, i32 12
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #8, !srcloc !311
  %60 = call i32 @llvm.bswap.i32(i32 %59)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !356
  br label %do.end66

if.else55:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base22, align 8
  %add.ptr59 = getelementptr i8, ptr %62, i32 392
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !311
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !357
  br label %do.end66

do.end66:                                         ; preds = %if.else55, %if.then49
  %val.0 = phi i32 [ %60, %if.then49 ], [ %64, %if.else55 ]
  %65 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.95, i32 noundef %val.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_csd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_hs400_enhanced_strobe(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enhanced_strobe = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 10
  %0 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enhanced_strobe, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @msdc_prepare_hs400_tuning(ptr noundef %mmc, ptr noundef %ios)
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 520
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #8, !srcloc !316
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 520
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %9 = or i32 %8, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %9) #8, !srcloc !316
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 8
  %add.ptr5 = getelementptr i8, ptr %11, i32 524
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %13 = or i32 %12, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %13) #8, !srcloc !316
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 8
  %add.ptr7 = getelementptr i8, ptr %15, i32 2044
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %17 = and i32 %16, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #8, !srcloc !316
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 2044
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %21 = and i32 %20, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %21) #8, !srcloc !316
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr11 = getelementptr i8, ptr %23, i32 516
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %25 = and i32 %24, -15744769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %25) #8, !srcloc !316
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base12 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base12, align 8
  %add.ptr13 = getelementptr i8, ptr %27, i32 520
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %29 = and i32 %28, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %29) #8, !srcloc !316
  %30 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base12, align 8
  %add.ptr15 = getelementptr i8, ptr %31, i32 520
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %33 = and i32 %32, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %33) #8, !srcloc !316
  %34 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base12, align 8
  %add.ptr17 = getelementptr i8, ptr %35, i32 524
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %37 = and i32 %36, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %37) #8, !srcloc !316
  %38 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base12, align 8
  %add.ptr19 = getelementptr i8, ptr %39, i32 2044
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %41 = or i32 %40, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %41) #8, !srcloc !316
  %42 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base12, align 8
  %add.ptr21 = getelementptr i8, ptr %43, i32 2044
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %45 = or i32 %44, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %45) #8, !srcloc !316
  %46 = ptrtoint ptr %base12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base12, align 8
  %add.ptr23 = getelementptr i8, ptr %47, i32 516
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %49 = and i32 %48, -15744769
  %50 = or i32 %49, 4197120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %50) #8, !srcloc !316
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_hw_reset(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #8
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 124
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %8 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %8) #8, !srcloc !316
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_start_command(ptr noundef %host, ptr noundef %mrq, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !344

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1259, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %cmd1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %req_timeout = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 17
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %req_timeout, i32 noundef 500) #8
  %call.i86 = tail call i64 @ktime_get() #8
  %add.i103 = add i64 %call.i86, 20000000
  %base.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i112 = getelementptr i8, ptr %5, i32 60
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #8, !srcloc !311
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %and.i113 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.not.i114 = icmp eq i32 %and.i113, 0
  br i1 %tobool.not.i114, label %if.end.for.end.i_crit_edge, label %if.end.land.lhs.true.i_crit_edge

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call5.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call5.i, i64 %add.i103)
  %cmp3.i100 = icmp sgt i64 %call5.i, %add.i103
  br i1 %cmp3.i100, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %9, i32 60
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #8, !srcloc !311
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !359
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #8
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %14, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !358
  %and.i = and i32 %16, 2
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i.for.end.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then7.i, %if.end.for.end.i_crit_edge
  %val.0.i = phi i32 [ %11, %if.then7.i ], [ %7, %if.end.for.end.i_crit_edge ], [ %16, %cond.false.i.for.end.i_crit_edge ]
  %and24.i = and i32 %val.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end29.i, label %do.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.45) #11
  %error.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 7
  %19 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error.i, align 4
  %or.i = or i32 %20, 32
  store i32 %or.i, ptr %error.i, align 4
  tail call fastcc void @msdc_cmd_done(ptr noundef %host, i32 noundef 512, ptr noundef %mrq, ptr noundef %cmd) #8
  br label %cleanup

if.end29.i:                                       ; preds = %for.end.i
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and30.i = and i32 %22, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and30.i)
  %cmp31.i = icmp eq i32 %and30.i, 29
  br i1 %cmp31.i, label %if.end29.i.if.then33.i_crit_edge, label %lor.lhs.false.i

if.end29.i.if.then33.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33.i

lor.lhs.false.i:                                  ; preds = %if.end29.i
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %tobool32.not.i = icmp eq ptr %24, null
  br i1 %tobool32.not.i, label %lor.lhs.false.i.if.end24_crit_edge, label %lor.lhs.false.i.if.then33.i_crit_edge

lor.lhs.false.i.if.then33.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33.i

lor.lhs.false.i.if.end24_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then33.i:                                      ; preds = %lor.lhs.false.i.if.then33.i_crit_edge, %if.end29.i.if.then33.i_crit_edge
  %call37.i = tail call i64 @ktime_get() #8
  %add.i = add i64 %call37.i, 20000000
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 8
  %add.ptr43.i115 = getelementptr i8, ptr %26, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i115) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !360
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool48.not.i117 = icmp eq i32 %28, 0
  br i1 %tobool48.not.i117, label %if.then33.i.if.end24_crit_edge, label %if.then33.i.land.lhs.true52.i_crit_edge

if.then33.i.land.lhs.true52.i_crit_edge:          ; preds = %if.then33.i
  br label %land.lhs.true52.i

if.then33.i.if.end24_crit_edge:                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true52.i:                                ; preds = %cond.false70.i.land.lhs.true52.i_crit_edge, %if.then33.i.land.lhs.true52.i_crit_edge
  %call53.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call53.i, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call53.i, %add.i
  br i1 %cmp3.i, label %for.end76.i, label %cond.false70.i

cond.false70.i:                                   ; preds = %land.lhs.true52.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr43.i = getelementptr i8, ptr %31, i32 60
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !360
  %33 = and i32 %32, 16777216
  %tobool48.not.i = icmp eq i32 %33, 0
  br i1 %tobool48.not.i, label %cond.false70.i.if.end24_crit_edge, label %cond.false70.i.land.lhs.true52.i_crit_edge

cond.false70.i.land.lhs.true52.i_crit_edge:       ; preds = %cond.false70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true52.i

cond.false70.i.if.end24_crit_edge:                ; preds = %cond.false70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

for.end76.i:                                      ; preds = %land.lhs.true52.i
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %add.ptr60.i = getelementptr i8, ptr %35, i32 60
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !361
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool79.not.i = icmp eq i32 %37, 0
  br i1 %tobool79.not.i, label %for.end76.i.if.end24_crit_edge, label %do.end86.i

for.end76.i.if.end24_crit_edge:                   ; preds = %for.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end86.i:                                       ; preds = %for.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.48) #11
  %error88.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 7
  %40 = ptrtoint ptr %error88.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %error88.i, align 4
  %or89.i = or i32 %41, 32
  store i32 %or89.i, ptr %error88.i, align 4
  tail call fastcc void @msdc_cmd_done(ptr noundef %host, i32 noundef 512, ptr noundef %mrq, ptr noundef %cmd) #8
  br label %cleanup

if.end24:                                         ; preds = %for.end76.i.if.end24_crit_edge, %cond.false70.i.if.end24_crit_edge, %if.then33.i.if.end24_crit_edge, %lor.lhs.false.i.if.end24_crit_edge
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 8
  %add.ptr = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !362
  %45 = and i32 %44, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool28.not = icmp eq i32 %45, 0
  br i1 %tobool28.not, label %lor.lhs.false, label %if.end24.do.end41_crit_edge

if.end24.do.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

lor.lhs.false:                                    ; preds = %if.end24
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr32 = getelementptr i8, ptr %47, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !363
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %48)
  %tobool37.not = icmp ult i32 %48, 16777216
  br i1 %tobool37.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.do.end41_crit_edge

lor.lhs.false.do.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end41:                                         ; preds = %lor.lhs.false.do.end41_crit_edge, %if.end24.do.end41_crit_edge
  %49 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.43) #11
  tail call fastcc void @msdc_reset_hw(ptr noundef %host)
  br label %if.end42

if.end42:                                         ; preds = %do.end41, %lor.lhs.false.if.end42_crit_edge
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %51 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %error, align 4
  %52 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cmd, align 4
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %55, 31
  %56 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %and.i.i, label %sw.default.i.i [
    i32 21, label %if.end42.msdc_cmd_find_resp.exit.i_crit_edge
    i32 29, label %sw.bb1.i.i
    i32 7, label %sw.bb2.i.i
    i32 1, label %sw.bb3.i.i
  ]

if.end42.msdc_cmd_find_resp.exit.i_crit_edge:     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmd_find_resp.exit.i

sw.bb1.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmd_find_resp.exit.i

sw.bb2.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmd_find_resp.exit.i

sw.bb3.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmd_find_resp.exit.i

sw.default.i.i:                                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmd_find_resp.exit.i

msdc_cmd_find_resp.exit.i:                        ; preds = %sw.default.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %if.end42.msdc_cmd_find_resp.exit.i_crit_edge
  %resp.0.i.i = phi i32 [ 0, %sw.default.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 7, %sw.bb1.i.i ], [ 1, %if.end42.msdc_cmd_find_resp.exit.i_crit_edge ]
  %and.i87 = and i32 %53, 63
  %and3.i = shl nuw nsw i32 %resp.0.i.i, 7
  %or.i88 = or i32 %and3.i, %and.i87
  %cmd_rsp.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 2
  %57 = ptrtoint ptr %cmd_rsp.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %resp.0.i.i, ptr %cmd_rsp.i, align 8
  %58 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %53, label %msdc_cmd_find_resp.exit.i.if.end35.i_crit_edge [
    i32 52, label %land.lhs.true.i89
    i32 12, label %msdc_cmd_find_resp.exit.i.if.then.i_crit_edge
    i32 11, label %if.then8.i
    i32 51, label %msdc_cmd_find_resp.exit.i.if.then32.i_crit_edge
    i32 22, label %msdc_cmd_find_resp.exit.i.if.then32.i_crit_edge122
    i32 6, label %land.lhs.true16.i
    i32 13, label %land.lhs.true22.i
    i32 8, label %land.lhs.true28.i
  ]

msdc_cmd_find_resp.exit.i.if.then32.i_crit_edge122: ; preds = %msdc_cmd_find_resp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

msdc_cmd_find_resp.exit.i.if.then32.i_crit_edge:  ; preds = %msdc_cmd_find_resp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

msdc_cmd_find_resp.exit.i.if.then.i_crit_edge:    ; preds = %msdc_cmd_find_resp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

msdc_cmd_find_resp.exit.i.if.end35.i_crit_edge:   ; preds = %msdc_cmd_find_resp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true.i89:                                ; preds = %msdc_cmd_find_resp.exit.i
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp4.i = icmp eq i32 %60, -1
  br i1 %cmp4.i, label %land.lhs.true.i89.if.then.i_crit_edge, label %land.lhs.true.i89.if.end35.i_crit_edge

land.lhs.true.i89.if.end35.i_crit_edge:           ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true.i89.if.then.i_crit_edge:            ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i89.if.then.i_crit_edge, %msdc_cmd_find_resp.exit.i.if.then.i_crit_edge
  %or6.i = or i32 %or.i88, 16384
  br label %if.end35.i

if.then8.i:                                       ; preds = %msdc_cmd_find_resp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %or9.i = or i32 %or.i88, 1073741824
  br label %if.end35.i

land.lhs.true16.i:                                ; preds = %msdc_cmd_find_resp.exit.i
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags.i, align 4
  %and18.i = and i32 %62, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and18.i)
  %cmp19.i = icmp eq i32 %and18.i, 32
  br i1 %cmp19.i, label %land.lhs.true16.i.if.then32.i_crit_edge, label %land.lhs.true16.i.if.end35.i_crit_edge

land.lhs.true16.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true16.i.if.then32.i_crit_edge:          ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

land.lhs.true22.i:                                ; preds = %msdc_cmd_find_resp.exit.i
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  %and24.i90 = and i32 %64, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and24.i90)
  %cmp25.i = icmp eq i32 %and24.i90, 32
  br i1 %cmp25.i, label %land.lhs.true22.i.if.then32.i_crit_edge, label %land.lhs.true22.i.if.end35.i_crit_edge

land.lhs.true22.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true22.i.if.then32.i_crit_edge:          ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

land.lhs.true28.i:                                ; preds = %msdc_cmd_find_resp.exit.i
  %65 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags.i, align 4
  %and30.i91 = and i32 %66, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and30.i91)
  %cmp31.i92 = icmp eq i32 %and30.i91, 32
  br i1 %cmp31.i92, label %land.lhs.true28.i.if.then32.i_crit_edge, label %land.lhs.true28.i.if.end35.i_crit_edge

land.lhs.true28.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

land.lhs.true28.i.if.then32.i_crit_edge:          ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.then32.i:                                      ; preds = %land.lhs.true28.i.if.then32.i_crit_edge, %land.lhs.true22.i.if.then32.i_crit_edge, %land.lhs.true16.i.if.then32.i_crit_edge, %msdc_cmd_find_resp.exit.i.if.then32.i_crit_edge, %msdc_cmd_find_resp.exit.i.if.then32.i_crit_edge122
  %or33.i = or i32 %or.i88, 2048
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %land.lhs.true28.i.if.end35.i_crit_edge, %land.lhs.true22.i.if.end35.i_crit_edge, %land.lhs.true16.i.if.end35.i_crit_edge, %if.then8.i, %if.then.i, %land.lhs.true.i89.if.end35.i_crit_edge, %msdc_cmd_find_resp.exit.i.if.end35.i_crit_edge
  %rawcmd.0.i = phi i32 [ %or6.i, %if.then.i ], [ %or9.i, %if.then8.i ], [ %or33.i, %if.then32.i ], [ %or.i88, %land.lhs.true28.i.if.end35.i_crit_edge ], [ %or.i88, %msdc_cmd_find_resp.exit.i.if.end35.i_crit_edge ], [ %or.i88, %land.lhs.true.i89.if.end35.i_crit_edge ], [ %or.i88, %land.lhs.true16.i.if.end35.i_crit_edge ], [ %or.i88, %land.lhs.true22.i.if.end35.i_crit_edge ]
  %data.i93 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %67 = ptrtoint ptr %data.i93 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i93, align 4
  %tobool.not.i94 = icmp eq ptr %68, null
  br i1 %tobool.not.i94, label %if.end35.i.msdc_cmd_prepare_raw_cmd.exit_crit_edge, label %if.then36.i

if.end35.i.msdc_cmd_prepare_raw_cmd.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_cmd_prepare_raw_cmd.exit

if.then36.i:                                      ; preds = %if.end35.i
  %69 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %53, label %if.then36.i.if.end51.i_crit_edge [
    i32 25, label %if.then36.i.if.then40.i_crit_edge
    i32 18, label %if.then36.i.if.then40.i_crit_edge123
  ]

if.then36.i.if.then40.i_crit_edge123:             ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.then36.i.if.then40.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40.i

if.then36.i.if.end51.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then40.i:                                      ; preds = %if.then36.i.if.then40.i_crit_edge, %if.then36.i.if.then40.i_crit_edge123
  %card.i = getelementptr i8, ptr %host, i32 -748
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp41.i = icmp eq i32 %73, 0
  br i1 %cmp41.i, label %land.lhs.true42.i, label %if.then40.i.if.end51.i_crit_edge

if.then40.i.if.end51.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

land.lhs.true42.i:                                ; preds = %if.then40.i
  %74 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mrq, align 4
  %tobool43.not.i = icmp eq ptr %75, null
  br i1 %tobool43.not.i, label %land.lhs.true42.i.if.end51.i_crit_edge, label %land.lhs.true44.i

land.lhs.true42.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

land.lhs.true44.i:                                ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %77)
  %tobool47.not.i = icmp ult i32 %77, 65536
  %or49.i = or i32 %rawcmd.0.i, 536870912
  %spec.select.i = select i1 %tobool47.not.i, i32 %or49.i, i32 %rawcmd.0.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %land.lhs.true44.i, %land.lhs.true42.i.if.end51.i_crit_edge, %if.then40.i.if.end51.i_crit_edge, %if.then36.i.if.end51.i_crit_edge
  %rawcmd.1.i = phi i32 [ %rawcmd.0.i, %land.lhs.true42.i.if.end51.i_crit_edge ], [ %rawcmd.0.i, %if.then40.i.if.end51.i_crit_edge ], [ %rawcmd.0.i, %if.then36.i.if.end51.i_crit_edge ], [ %spec.select.i, %land.lhs.true44.i ]
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 2
  %78 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blksz.i, align 4
  %and52.i = shl i32 %79, 16
  %shl53.i = and i32 %and52.i, 268369920
  %or54.i = or i32 %shl53.i, %rawcmd.1.i
  %flags55.i = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 6
  %80 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags55.i, align 4
  %and56.i = shl i32 %81, 5
  %82 = and i32 %and56.i, 8192
  %83 = or i32 %or54.i, %82
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 3
  %84 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp61.i = icmp ugt i32 %85, 1
  %rawcmd.3.v.i = select i1 %cmp61.i, i32 4096, i32 2048
  %rawcmd.3.i = or i32 %83, %rawcmd.3.v.i
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %89 = and i32 %88, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %89) #8, !srcloc !316
  %timeout_ns.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 12
  %90 = ptrtoint ptr %timeout_ns.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %timeout_ns.i, align 8
  %92 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp68.not.i = icmp eq i32 %91, %93
  br i1 %cmp68.not.i, label %lor.lhs.false69.i, label %if.end51.i.if.then72.i_crit_edge

if.end51.i.if.then72.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

lor.lhs.false69.i:                                ; preds = %if.end51.i
  %timeout_clks.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 13
  %94 = ptrtoint ptr %timeout_clks.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %timeout_clks.i, align 4
  %timeout_clks70.i = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 1
  %96 = ptrtoint ptr %timeout_clks70.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %timeout_clks70.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp71.not.i = icmp eq i32 %95, %97
  br i1 %cmp71.not.i, label %lor.lhs.false69.i.do.body.i_crit_edge, label %lor.lhs.false69.i.if.then72.i_crit_edge

lor.lhs.false69.i.if.then72.i_crit_edge:          ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then72.i

lor.lhs.false69.i.do.body.i_crit_edge:            ; preds = %lor.lhs.false69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then72.i:                                      ; preds = %lor.lhs.false69.i.if.then72.i_crit_edge, %if.end51.i.if.then72.i_crit_edge
  %conv.i = zext i32 %93 to i64
  %timeout_clks74.i = getelementptr inbounds %struct.mmc_data, ptr %68, i32 0, i32 1
  %98 = ptrtoint ptr %timeout_clks74.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %timeout_clks74.i, align 4
  %conv75.i = zext i32 %99 to i64
  tail call fastcc void @msdc_set_timeout(ptr noundef %host, i64 noundef %conv.i, i64 noundef %conv75.i) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then72.i, %lor.lhs.false69.i.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !364
  tail call void @arm_heavy_mb() #8
  %100 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %blocks.i, align 4
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #8
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 8
  %add.ptr79.i = getelementptr i8, ptr %104, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79.i, i32 %102) #8, !srcloc !316
  br label %msdc_cmd_prepare_raw_cmd.exit

msdc_cmd_prepare_raw_cmd.exit:                    ; preds = %do.body.i, %if.end35.i.msdc_cmd_prepare_raw_cmd.exit_crit_edge
  %rawcmd.4.i = phi i32 [ %rawcmd.3.i, %do.body.i ], [ %rawcmd.0.i, %if.end35.i.msdc_cmd_prepare_raw_cmd.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 3
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 8
  %add.ptr54 = getelementptr i8, ptr %106, i32 16
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %108 = or i32 %107, 939982848
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %108) #8, !srcloc !316
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !365
  tail call void @arm_heavy_mb() #8
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %109 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arg, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 8
  %add.ptr60 = getelementptr i8, ptr %113, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %111) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !366
  tail call void @arm_heavy_mb() #8
  %114 = tail call i32 @llvm.bswap.i32(i32 %rawcmd.4.i)
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 8
  %add.ptr65 = getelementptr i8, ptr %116, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %114) #8, !srcloc !316
  br label %cleanup

cleanup:                                          ; preds = %msdc_cmd_prepare_raw_cmd.exit, %do.end86.i, %do.end.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_reset_hw(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #8, !srcloc !316
  %call = tail call i64 @ktime_get() #8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !367
  %7 = and i32 %6, 67108864
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr34 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %11 = or i32 %10, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %11) #8, !srcloc !316
  %call38 = tail call i64 @ktime_get() #8
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond52.for.cond52_crit_edge, %for.end
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr56 = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !368
  %.mask = and i32 %14, 128
  %tobool61.not = icmp eq i32 %.mask, 0
  br i1 %tobool61.not, label %for.end83, label %for.cond52.for.cond52_crit_edge

for.cond52.for.cond52_crit_edge:                  ; preds = %for.cond52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond52

for.end83:                                        ; preds = %for.cond52
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr92 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr92) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !370
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 8
  %add.ptr100 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %17) #8, !srcloc !316
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_cmd_done(ptr noundef %host, i32 noundef %events, ptr noundef %mrq, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %cmp = icmp ne ptr %3, %cmd
  %and = and i32 %events, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = or i1 %tobool3.not, %cmp
  br i1 %or.cond, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %base.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !371
  %8 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %resp.i, align 4
  %and.i = and i32 %events, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %error.i, align 4
  br label %if.end

if.else.i:                                        ; preds = %if.then
  tail call fastcc void @msdc_reset_hw(ptr noundef %host) #8
  %and2.i = and i32 %events, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else7.i, label %if.else.i.do.end.sink.split.i_crit_edge

if.else.i.do.end.sink.split.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split.i

if.else7.i:                                       ; preds = %if.else.i
  %and8.i = and i32 %events, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.else7.i.do.end.i_crit_edge, label %if.else7.i.do.end.sink.split.i_crit_edge

if.else7.i.do.end.sink.split.i_crit_edge:         ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.sink.split.i

if.else7.i.do.end.i_crit_edge:                    ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.sink.split.i:                              ; preds = %if.else7.i.do.end.sink.split.i_crit_edge, %if.else.i.do.end.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -84, %if.else.i.do.end.sink.split.i_crit_edge ], [ -110, %if.else7.i.do.end.sink.split.i_crit_edge ]
  %.sink1.i = phi i32 [ 8, %if.else.i.do.end.sink.split.i_crit_edge ], [ 16, %if.else7.i.do.end.sink.split.i_crit_edge ]
  %error11.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %error11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink.i, ptr %error11.i, align 4
  %error12.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 7
  %11 = ptrtoint ptr %error12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error12.i, align 4
  %or.i = or i32 %12, %.sink1.i
  store i32 %or.i, ptr %error12.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.sink.split.i, %if.else7.i.do.end.i_crit_edge
  %13 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %host, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg.i, align 4
  %19 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resp.i, align 4
  %error16.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %error16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error16.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22) #11
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.i, %land.lhs.true.if.end_crit_edge
  %23 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load ptr, ptr %mrq, align 4
  %tobool6.not = icmp eq ptr %.pr, null
  br i1 %tobool6.not, label %if.end.land.end_crit_edge, label %land.rhs

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.mmc_command, ptr %.pr, i32 0, i32 5
  %24 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool8 = icmp eq i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge, %entry.land.end_crit_edge
  %26 = phi i1 [ true, %if.end.land.end_crit_edge ], [ %tobool8, %land.rhs ], [ true, %entry.land.end_crit_edge ]
  %and11 = and i32 %events, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond1 = and i1 %tobool12.not, %26
  br i1 %or.cond1, label %land.end.cleanup_crit_edge, label %do.body16

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body16:                                        ; preds = %land.end
  %lock = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 3
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cmd22 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 5
  %27 = ptrtoint ptr %cmd22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cmd22, align 4
  %tobool23.not = icmp eq ptr %28, null
  store ptr null, ptr %cmd22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #8
  br i1 %tobool23.not, label %do.body16.cleanup_crit_edge, label %if.end29

do.body16.cleanup_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %do.body16
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %30, i32 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %32 = and i32 %31, -939982849
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %32) #8, !srcloc !316
  %flags30 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %33 = ptrtoint ptr %flags30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags30, align 4
  %and31 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end76_crit_edge, label %if.then33

if.end29.if.end76_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then33:                                        ; preds = %if.end29
  %and35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 8
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr39 = getelementptr i8, ptr %36, i32 76
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8, !srcloc !311
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !372
  %39 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %resp, align 4
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 8
  %add.ptr46 = getelementptr i8, ptr %41, i32 72
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #8, !srcloc !311
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !373
  %arrayidx50 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx50, align 4
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 8
  %add.ptr54 = getelementptr i8, ptr %46, i32 68
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #8, !srcloc !311
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !374
  %arrayidx58 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx58, align 4
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 8
  %add.ptr62 = getelementptr i8, ptr %51, i32 64
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #8, !srcloc !311
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !375
  %arrayidx66 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %54 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx66, align 4
  br label %if.end76

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr70 = getelementptr i8, ptr %36, i32 64
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #8, !srcloc !311
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !376
  %57 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %resp, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then37, %if.end29.if.end76_crit_edge
  %and79 = and i32 %events, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  %or.cond3 = and i1 %tobool80.not, %26
  br i1 %or.cond3, label %if.then81, label %if.end76.if.end108_crit_edge

if.end76.if.end108_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then81:                                        ; preds = %if.end76
  %and82 = and i32 %events, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %if.then81.if.then92_crit_edge

if.then81.if.then92_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.then81
  %58 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %59, label %land.lhs.true90 [
    i32 19, label %lor.lhs.false.if.end93_crit_edge
    i32 21, label %lor.lhs.false.if.end93_crit_edge15
  ]

lor.lhs.false.if.end93_crit_edge15:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

lor.lhs.false.if.end93_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true90:                                  ; preds = %lor.lhs.false
  %hs400_tuning = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 37
  %61 = ptrtoint ptr %hs400_tuning to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %hs400_tuning, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool91.not = icmp eq i8 %62, 0
  br i1 %tobool91.not, label %land.lhs.true90.if.then92_crit_edge, label %land.lhs.true90.if.end93_crit_edge

land.lhs.true90.if.end93_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true90.if.then92_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92

if.then92:                                        ; preds = %land.lhs.true90.if.then92_crit_edge, %if.then81.if.then92_crit_edge
  tail call fastcc void @msdc_reset_hw(ptr noundef %host)
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %land.lhs.true90.if.end93_crit_edge, %lor.lhs.false.if.end93_crit_edge, %lor.lhs.false.if.end93_crit_edge15
  %and94 = and i32 %events, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp ne i32 %and94, 0
  %tobool83.not.not = xor i1 %tobool83.not, true
  %brmerge = or i1 %tobool95.not, %tobool83.not.not
  br i1 %brmerge, label %if.end108.sink.split, label %if.end93.if.end108_crit_edge

if.end93.if.end108_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.end108.sink.split:                             ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  %.mux14 = select i1 %tobool95.not, i32 1, i32 2
  %.mux = select i1 %tobool95.not, i32 -84, i32 -110
  %error103 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %63 = ptrtoint ptr %error103 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.mux, ptr %error103, align 4
  %error104 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 7
  %64 = ptrtoint ptr %error104 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %error104, align 4
  %or = or i32 %65, %.mux14
  store i32 %or, ptr %error104, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end108.sink.split, %if.end93.if.end108_crit_edge, %if.end76.if.end108_crit_edge
  %error109 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %66 = ptrtoint ptr %error109 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %error109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool110.not = icmp eq i32 %67, 0
  br i1 %tobool110.not, label %if.end108.if.end127_crit_edge, label %do.body112

if.end108.if.end127_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

do.body112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_cmd_done.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_cmd_done, %if.then120)) #8
          to label %if.end127 [label %if.then120], !srcloc !336

if.then120:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %host, align 8
  %70 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %72 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arg, align 4
  %74 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %resp, align 4
  %76 = ptrtoint ptr %error109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %error109, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_cmd_done.__UNIQUE_ID_ddebug309, ptr noundef %69, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef %77) #8
  br label %if.end127

if.end127:                                        ; preds = %if.then120, %do.body112, %if.end108.if.end127_crit_edge
  %78 = ptrtoint ptr %error109 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %error109, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %79, label %if.end127.if.then.i8_crit_edge [
    i32 0, label %if.end127.lor.lhs.false8.i_crit_edge
    i32 -84, label %land.lhs.true2.i
  ]

if.end127.lor.lhs.false8.i_crit_edge:             ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false8.i

if.end127.if.then.i8_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i8

land.lhs.true2.i:                                 ; preds = %if.end127
  %81 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cmd, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %82, label %lor.lhs.false6.i [
    i32 19, label %land.lhs.true2.i.lor.lhs.false8.i_crit_edge
    i32 21, label %land.lhs.true2.i.lor.lhs.false8.i_crit_edge16
  ]

land.lhs.true2.i.lor.lhs.false8.i_crit_edge16:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false8.i

land.lhs.true2.i.lor.lhs.false8.i_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false8.i

lor.lhs.false6.i:                                 ; preds = %land.lhs.true2.i
  %hs400_tuning.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 37
  %84 = ptrtoint ptr %hs400_tuning.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %hs400_tuning.i, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool7.not.i = icmp eq i8 %85, 0
  br i1 %tobool7.not.i, label %lor.lhs.false6.i.if.then.i8_crit_edge, label %lor.lhs.false6.i.lor.lhs.false8.i_crit_edge

lor.lhs.false6.i.lor.lhs.false8.i_crit_edge:      ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false8.i

lor.lhs.false6.i.if.then.i8_crit_edge:            ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i8

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false6.i.lor.lhs.false8.i_crit_edge, %land.lhs.true2.i.lor.lhs.false8.i_crit_edge, %land.lhs.true2.i.lor.lhs.false8.i_crit_edge16, %if.end127.lor.lhs.false8.i_crit_edge
  %86 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mrq, align 4
  %tobool9.not.i6 = icmp eq ptr %87, null
  br i1 %tobool9.not.i6, label %lor.lhs.false8.i.if.else.i9_crit_edge, label %land.lhs.true10.i

lor.lhs.false8.i.if.else.i9_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i9

land.lhs.true10.i:                                ; preds = %lor.lhs.false8.i
  %error12.i7 = getelementptr inbounds %struct.mmc_command, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %error12.i7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %error12.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool13.not.i = icmp eq i32 %89, 0
  br i1 %tobool13.not.i, label %land.lhs.true10.i.if.else.i9_crit_edge, label %land.lhs.true10.i.if.then.i8_crit_edge

land.lhs.true10.i.if.then.i8_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i8

land.lhs.true10.i.if.else.i9_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i9

if.then.i8:                                       ; preds = %land.lhs.true10.i.if.then.i8_crit_edge, %lor.lhs.false6.i.if.then.i8_crit_edge, %if.end127.if.then.i8_crit_edge
  tail call fastcc void @msdc_request_done(ptr noundef %host, ptr noundef %mrq) #8
  br label %cleanup

if.else.i9:                                       ; preds = %land.lhs.true10.i.if.else.i9_crit_edge, %lor.lhs.false8.i.if.else.i9_crit_edge
  %cmp15.i = icmp eq ptr %87, %cmd
  br i1 %cmp15.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.else.i9
  call void @__sanitizer_cov_trace_pc() #10
  %cmd17.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %90 = ptrtoint ptr %cmd17.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cmd17.i, align 4
  tail call fastcc void @msdc_start_command(ptr noundef %host, ptr noundef %mrq, ptr noundef %91) #8
  br label %cleanup

if.else18.i:                                      ; preds = %if.else.i9
  %data.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %92 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i, align 4
  %tobool19.not.i = icmp eq ptr %93, null
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else21.i

if.then20.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_request_done(ptr noundef %host, ptr noundef %mrq) #8
  br label %cleanup

if.else21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_start_data(ptr noundef %host, ptr noundef %cmd, ptr noundef nonnull %93) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else21.i, %if.then20.i, %if.then16.i, %if.then.i8, %do.body16.cleanup_crit_edge, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_request_done(ptr noundef %host, ptr noundef %mrq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %req_timeout = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 17
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %req_timeout) #8
  %lock = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %mrq6 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %mrq6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mrq6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cmd, align 4
  %error.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 7
  %3 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.msdc_track_cmd_data.exit_crit_edge, label %do.body.i

entry.msdc_track_cmd_data.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_track_cmd_data.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_track_cmd_data.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_request_done, %if.then4.i)) #8
          to label %msdc_track_cmd_data.exit [label %if.then4.i], !srcloc !336

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg.i, align 4
  %11 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_track_cmd_data.__UNIQUE_ID_ddebug308, ptr noundef %6, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %8, i32 noundef %10, i32 noundef %12) #8
  br label %msdc_track_cmd_data.exit

msdc_track_cmd_data.exit:                         ; preds = %if.then4.i, %do.body.i, %entry.msdc_track_cmd_data.exit_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %msdc_track_cmd_data.exit.if.end_crit_edge, label %if.then

msdc_track_cmd_data.exit.if.end_crit_edge:        ; preds = %msdc_track_cmd_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %msdc_track_cmd_data.exit
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %host_cookie.i, align 4
  %17 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %.not.i = icmp eq i32 %17, 1
  br i1 %.not.i, label %if.then4.i29, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4.i29:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 8
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 12
  %20 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 10
  %22 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 6
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %cond.i.i, i32 noundef 0) #8
  %26 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %host_cookie.i, align 4
  %and6.i = and i32 %27, -2
  store i32 %and6.i, ptr %host_cookie.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4.i29, %if.then.if.end_crit_edge, %msdc_track_cmd_data.exit.if.end_crit_edge
  %28 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  br i1 %tobool9.not, label %if.end.if.end11_crit_edge, label %if.then10

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_reset_hw(ptr noundef %host)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1920
  tail call void @mmc_request_done(ptr noundef %add.ptr.i, ptr noundef %mrq) #8
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  %30 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_comp, align 4
  %recheck_sdio_irq = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %recheck_sdio_irq to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %recheck_sdio_irq, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not = icmp eq i8 %33, 0
  br i1 %tobool13.not, label %if.end11.if.end15_crit_edge, label %if.then14

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_recheck_sdio_irq(ptr noundef %host)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end11.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_start_data(ptr noundef %host, ptr nocapture noundef readonly %cmd, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !344

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1052, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %data1, align 8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %req_timeout = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 17
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %req_timeout, i32 noundef 500) #8
  %gpd2.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %gpd2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpd2.i, align 4
  %bd3.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %bd3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd3.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %or5.i = and i32 %11, -65284
  %and.i = or i32 %or5.i, 3
  %12 = lshr i32 %11, 24
  %13 = trunc i32 %12 to i8
  %14 = lshr i32 %11, 16
  %15 = trunc i32 %14 to i8
  %16 = trunc i32 %and.i to i8
  %arrayidx.4.i.i = getelementptr i8, ptr %7, i32 4
  %17 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4.i.i, align 1
  %arrayidx.5.i.i = getelementptr i8, ptr %7, i32 5
  %19 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx.6.i.i = getelementptr i8, ptr %7, i32 6
  %21 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.6.i.i, align 1
  %arrayidx.7.i.i = getelementptr i8, ptr %7, i32 7
  %23 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.7.i.i, align 1
  %arrayidx.8.i.i = getelementptr i8, ptr %7, i32 8
  %25 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.8.i.i, align 1
  %arrayidx.9.i.i = getelementptr i8, ptr %7, i32 9
  %27 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.9.i.i, align 1
  %arrayidx.10.i.i = getelementptr i8, ptr %7, i32 10
  %29 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.10.i.i, align 1
  %arrayidx.11.i.i = getelementptr i8, ptr %7, i32 11
  %31 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.11.i.i, align 1
  %arrayidx.12.i.i = getelementptr i8, ptr %7, i32 12
  %33 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.12.i.i, align 1
  %arrayidx.13.i.i = getelementptr i8, ptr %7, i32 13
  %35 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.13.i.i, align 1
  %arrayidx.14.i.i = getelementptr i8, ptr %7, i32 14
  %37 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.14.i.i, align 1
  %arrayidx.15.i.i = getelementptr i8, ptr %7, i32 15
  %39 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.15.i.i, align 1
  %add.1.i.i = add i8 %18, %13
  %add.3.i.i = add i8 %add.1.i.i, %15
  %add.4.i.i = add i8 %add.3.i.i, %20
  %add.5.i.i = add i8 %add.4.i.i, %16
  %add.6.i.i = add i8 %add.5.i.i, %22
  %add.7.i.i = add i8 %add.6.i.i, %24
  %add.8.i.i = add i8 %add.7.i.i, %26
  %add.9.i.i = add i8 %add.8.i.i, %28
  %add.10.i.i = add i8 %add.9.i.i, %30
  %add.11.i.i = add i8 %add.10.i.i, %32
  %add.12.i.i = add i8 %add.11.i.i, %34
  %add.13.i.i = add i8 %add.12.i.i, %36
  %add.14.i.i = add i8 %add.13.i.i, %38
  %add.15.i.i = add i8 %add.14.i.i, %40
  %conv3.i.i = xor i8 %add.15.i.i, -1
  %conv.i = zext i8 %conv3.i.i to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or8.i = or i32 %shl.i, %and.i
  store i32 %or8.i, ptr %7, align 4
  %sg_count.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 11
  %41 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp173.not.i = icmp eq i32 %42, 0
  br i1 %cmp173.not.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %sg1.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %43 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sg1.i, align 4
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.0175.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %sg.0174.i = phi ptr [ %44, %for.body.lr.ph.i ], [ %call67.i, %if.end.i.for.body.i_crit_edge ]
  %dma_address11.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0174.i, i32 0, i32 3
  %45 = ptrtoint ptr %dma_address11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_address11.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0174.i, i32 0, i32 4
  %47 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_length.i, align 4
  %arrayidx.i = getelementptr %struct.mt_bdma_desc, ptr %9, i32 %j.0175.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %and15.i = and i32 %50, -393217
  store i32 %and15.i, ptr %arrayidx.i, align 4
  %ptr.i = getelementptr %struct.mt_bdma_desc, ptr %9, i32 %j.0175.i, i32 2
  %51 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %46, ptr %ptr.i, align 4
  %52 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_comp.i, align 4
  %support_64g.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %support_64g.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %support_64g.i, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %and20.i = and i32 %50, 268042239
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and20.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %57 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_comp.i, align 4
  %support_64g28.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %support_64g28.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %support_64g28.i, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool29.not.i = icmp eq i8 %60, 0
  %bd_data_len38.i = getelementptr %struct.mt_bdma_desc, ptr %9, i32 %j.0175.i, i32 3
  %61 = ptrtoint ptr %bd_data_len38.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bd_data_len38.i, align 4
  %..i = select i1 %tobool29.not.i, i32 -65536, i32 -16777216
  %.178.i = select i1 %tobool29.not.i, i32 65535, i32 16777215
  %and39.i = and i32 %..i, %62
  %and40.i = and i32 %.178.i, %48
  %or43.i = or i32 %and39.i, %and40.i
  store i32 %or43.i, ptr %bd_data_len38.i, align 4
  %63 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sg_count.i, align 4
  %sub.i = add i32 %64, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0175.i, i32 %sub.i)
  %cmp46.i = icmp eq i32 %j.0175.i, %sub.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %and55.i = and i32 %66, -2
  %masksel.i = zext i1 %cmp46.i to i32
  %storemerge.i = or i32 %and55.i, %masksel.i
  %and59.i = and i32 %storemerge.i, -65281
  %67 = lshr i32 %66, 24
  %68 = trunc i32 %67 to i8
  %69 = lshr i32 %66, 16
  %70 = trunc i32 %69 to i8
  %71 = trunc i32 %storemerge.i to i8
  %arrayidx.4.i147.i = getelementptr i8, ptr %arrayidx.i, i32 4
  %72 = ptrtoint ptr %arrayidx.4.i147.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.4.i147.i, align 1
  %arrayidx.5.i149.i = getelementptr i8, ptr %arrayidx.i, i32 5
  %74 = ptrtoint ptr %arrayidx.5.i149.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.5.i149.i, align 1
  %arrayidx.6.i151.i = getelementptr i8, ptr %arrayidx.i, i32 6
  %76 = ptrtoint ptr %arrayidx.6.i151.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.6.i151.i, align 1
  %arrayidx.7.i153.i = getelementptr i8, ptr %arrayidx.i, i32 7
  %78 = ptrtoint ptr %arrayidx.7.i153.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.7.i153.i, align 1
  %arrayidx.8.i155.i = getelementptr i8, ptr %arrayidx.i, i32 8
  %80 = ptrtoint ptr %arrayidx.8.i155.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.8.i155.i, align 1
  %arrayidx.9.i157.i = getelementptr i8, ptr %arrayidx.i, i32 9
  %82 = ptrtoint ptr %arrayidx.9.i157.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.9.i157.i, align 1
  %arrayidx.10.i159.i = getelementptr i8, ptr %arrayidx.i, i32 10
  %84 = ptrtoint ptr %arrayidx.10.i159.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.10.i159.i, align 1
  %arrayidx.11.i161.i = getelementptr i8, ptr %arrayidx.i, i32 11
  %86 = ptrtoint ptr %arrayidx.11.i161.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.11.i161.i, align 1
  %88 = lshr i32 %62, 24
  %89 = trunc i32 %88 to i8
  %arrayidx.13.i165.i = getelementptr i8, ptr %arrayidx.i, i32 13
  %90 = ptrtoint ptr %arrayidx.13.i165.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.13.i165.i, align 1
  %arrayidx.14.i167.i = getelementptr i8, ptr %arrayidx.i, i32 14
  %92 = ptrtoint ptr %arrayidx.14.i167.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.14.i167.i, align 1
  %arrayidx.15.i169.i = getelementptr i8, ptr %arrayidx.i, i32 15
  %94 = ptrtoint ptr %arrayidx.15.i169.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.15.i169.i, align 1
  %add.1.i142.i = add i8 %73, %68
  %add.3.i146.i = add i8 %add.1.i142.i, %70
  %add.4.i148.i = add i8 %add.3.i146.i, %75
  %add.5.i150.i = add i8 %add.4.i148.i, %77
  %add.6.i152.i = add i8 %add.5.i150.i, %71
  %add.7.i154.i = add i8 %add.6.i152.i, %79
  %add.8.i156.i = add i8 %add.7.i154.i, %81
  %add.9.i158.i = add i8 %add.8.i156.i, %83
  %add.10.i160.i = add i8 %add.9.i158.i, %85
  %add.11.i162.i = add i8 %add.10.i160.i, %87
  %add.12.i164.i = add i8 %add.11.i162.i, %89
  %add.13.i166.i = add i8 %add.12.i164.i, %91
  %add.14.i168.i = add i8 %add.13.i166.i, %93
  %add.15.i170.i = add i8 %add.14.i168.i, %95
  %conv3.i171.i = xor i8 %add.15.i170.i, -1
  %conv62.i = zext i8 %conv3.i171.i to i32
  %shl63.i = shl nuw nsw i32 %conv62.i, 8
  %or66.i = or i32 %shl63.i, %and59.i
  store i32 %or66.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %j.0175.i, 1
  %call67.i = tail call ptr @sg_next(ptr noundef %sg.0174.i) #8
  %96 = ptrtoint ptr %sg_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sg_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %97
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %base.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %99, i32 156
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %101 = or i32 %100, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %101) #8, !srcloc !316
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %103, i32 152
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #8, !srcloc !311
  %105 = and i32 %104, -7405569
  %106 = or i32 %105, 6356992
  %107 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i, align 8
  %add.ptr74.i = getelementptr i8, ptr %108, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %106) #8, !srcloc !316
  %dev_comp75.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  %109 = ptrtoint ptr %dev_comp75.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_comp75.i, align 4
  %support_64g76.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %110, i32 0, i32 9
  %111 = ptrtoint ptr %support_64g76.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %support_64g76.i, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool77.not.i = icmp eq i8 %112, 0
  br i1 %tobool77.not.i, label %for.end.i.msdc_dma_setup.exit_crit_edge, label %if.then78.i

for.end.i.msdc_dma_setup.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_dma_setup.exit

if.then78.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 8
  %add.ptr80.i = getelementptr i8, ptr %114, i32 140
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %116 = and i32 %115, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 %116) #8, !srcloc !316
  br label %msdc_dma_setup.exit

msdc_dma_setup.exit:                              ; preds = %if.then78.i, %for.end.i.msdc_dma_setup.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !377
  tail call void @arm_heavy_mb() #8
  %gpd_addr85.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 10, i32 3
  %117 = ptrtoint ptr %gpd_addr85.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %gpd_addr85.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #8
  %120 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i, align 8
  %add.ptr88.i = getelementptr i8, ptr %121, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 %119) #8, !srcloc !316
  %122 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i, align 8
  %add.ptr = getelementptr i8, ptr %123, i32 16
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %125 = or i32 %124, 13635072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %125) #8, !srcloc !316
  %126 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i, align 8
  %add.ptr24 = getelementptr i8, ptr %127, i32 152
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %129 = or i32 %128, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %129) #8, !srcloc !316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_start_data.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_start_data, %if.then36)) #8
          to label %do.body40 [label %if.then36], !srcloc !336

if.then36:                                        ; preds = %msdc_dma_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_start_data.__UNIQUE_ID_ddebug306, ptr noundef %131, ptr noundef nonnull @.str.58) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %msdc_dma_setup.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_start_data.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_start_data, %if.then52)) #8
          to label %do.end57 [label %if.then52], !srcloc !336

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %132 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %host, align 8
  %134 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cmd, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %136 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %blocks, align 4
  %and = lshr i32 %4, 9
  %and.lobit = and i32 %and, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_start_data.__UNIQUE_ID_ddebug307, ptr noundef %133, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef %135, i32 noundef %137, i32 noundef %and.lobit) #8
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_recheck_sdio_irq(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %host, i32 -1920
  %caps = getelementptr i8, ptr %host, i32 -928
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 32
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end26_crit_edge, label %if.then

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !378
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool4.not = icmp sgt i32 %4, -1
  br i1 %tobool4.not, label %if.then.if.end26_crit_edge, label %if.then5

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then5:                                         ; preds = %if.then
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr9 = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !379
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr16 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !380
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool21.not = icmp sgt i32 %7, -1
  %11 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool23.not = icmp eq i32 %11, 0
  %or.cond = select i1 %tobool21.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %if.then24, label %if.then5.if.end26_crit_edge

if.then5.if.end26_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr6.i = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %15 = and i32 %14, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %15) #8, !srcloc !316
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr8.i = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %19 = and i32 %18, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %19) #8, !srcloc !316
  tail call void @sdio_signal_irq(ptr noundef %add.ptr.i) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then5.if.end26_crit_edge, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__msdc_enable_sdio_irq(ptr noundef %host, i32 noundef %enb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enb)
  %tobool.not = icmp eq i32 %enb, 0
  %base5 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %0 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base5, align 8
  %add.ptr6 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = or i32 %2, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %3) #8, !srcloc !316
  %4 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base5, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %7 = or i32 %6, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #8, !srcloc !316
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_comp, align 4
  %recheck_sdio_irq = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %recheck_sdio_irq to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %recheck_sdio_irq, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_recheck_sdio_irq(ptr noundef %host)
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = and i32 %2, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #8, !srcloc !316
  %13 = ptrtoint ptr %base5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base5, align 8
  %add.ptr8 = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %16 = and i32 %15, -4097
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %16) #8, !srcloc !316
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4, %if.then.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_signal_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_set_timeout(ptr nocapture noundef %host, i64 noundef %ns, i64 noundef %clks) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %ns to i32
  %timeout_ns = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %timeout_ns, align 8
  %conv1 = trunc i64 %clks to i32
  %timeout_clks = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 13
  %1 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv1, ptr %timeout_clks, align 4
  %actual_clock.i = getelementptr i8, ptr %host, i32 -296
  %2 = ptrtoint ptr %actual_clock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_clock.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.msdc_timeout_cal.exit.thread_crit_edge, label %if.end183.i

entry.msdc_timeout_cal.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_timeout_cal.exit.thread

if.end183.i:                                      ; preds = %entry
  %div177.i = udiv i32 1000000000, %3
  %conv178.i = zext i32 %div177.i to i64
  %add185.i = add i64 %ns, -1
  %sub186.i = add i64 %add185.i, %conv178.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub186.i)
  %cmp389.i = icmp ult i64 %sub186.i, 4294967296
  br i1 %cmp389.i, label %if.then397.i, label %if.else403.i, !prof !344

if.then397.i:                                     ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv398.i = trunc i64 %sub186.i to i32
  %div401.i = udiv i32 %conv398.i, %div177.i
  %conv402.i = zext i32 %div401.i to i64
  br label %msdc_timeout_cal.exit

if.else403.i:                                     ; preds = %if.end183.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div177.i, i64 %sub186.i) #12, !srcloc !381
  %asmresult1.i626.i = extractvalue { i64, i64 } %4, 1
  br label %msdc_timeout_cal.exit

msdc_timeout_cal.exit:                            ; preds = %if.else403.i, %if.then397.i
  %timeout.0.i = phi i64 [ %conv402.i, %if.then397.i ], [ %asmresult1.i626.i, %if.else403.i ]
  %add409.i = add i64 %clks, 1048575
  %sub411.i = add i64 %add409.i, %timeout.0.i
  %div412598.i = lshr i64 %sub411.i, 20
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  %5 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_comp.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp414.i = icmp eq i8 %8, 8
  %base.i = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %..i = select i1 %cmp414.i, i32 9, i32 13
  %12 = lshr i32 %11, %..i
  %mode.0.i = and i32 %12, 1
  %13 = zext i32 %mode.0.i to i64
  %spec.select677.i = shl nuw nsw i64 %div412598.i, %13
  %14 = tail call i64 @llvm.usub.sat.i64(i64 %spec.select677.i, i64 1) #8
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 255)
  %16 = trunc i64 %15 to i32
  %phi.bo = shl nuw i32 %16, 24
  br label %msdc_timeout_cal.exit.thread

msdc_timeout_cal.exit.thread:                     ; preds = %msdc_timeout_cal.exit, %entry.msdc_timeout_cal.exit.thread_crit_edge
  %17 = phi i32 [ %phi.bo, %msdc_timeout_cal.exit ], [ 0, %entry.msdc_timeout_cal.exit.thread_crit_edge ]
  %.in = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %18 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.in, align 8
  %add.ptr = getelementptr i8, ptr %19, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %21 = and i32 %20, -256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %or.i = or i32 %22, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #8, !srcloc !316
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_set_mclk(ptr noundef %host, i8 noundef zeroext %timing, i32 noundef %hz) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pad_tune_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_tune_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz)
  %tobool.not = icmp eq i32 %hz, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_set_mclk.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_set_mclk, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !336

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_set_mclk.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.68) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %mclk = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 26
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %mclk, align 4
  %actual_clock = getelementptr i8, ptr %host, i32 -296
  %7 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %actual_clock, align 8
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %11 = and i32 %10, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #8, !srcloc !316
  br label %cleanup

if.end6:                                          ; preds = %entry
  %base7 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %12 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base7, align 8
  %add.ptr8 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !382
  %15 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base7, align 8
  %add.ptr13 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %18 = xor i32 %14, -1
  %19 = and i32 %17, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %19) #8, !srcloc !316
  %20 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_comp, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp = icmp eq i8 %23, 8
  %24 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base7, align 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %27 = and i32 %26, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %27) #8, !srcloc !316
  br label %if.end21

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %28 = and i32 %26, -16385
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %28) #8, !srcloc !316
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  %conv22 = zext i8 %timing to i32
  %29 = zext i8 %timing to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %timing, label %if.else76 [
    i8 7, label %if.end21.if.then32_crit_edge
    i8 8, label %if.end21.if.then32_crit_edge401
    i8 10, label %if.end21.if.then32_crit_edge402
  ]

if.end21.if.then32_crit_edge402:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end21.if.then32_crit_edge401:                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.end21.if.then32_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %if.end21.if.then32_crit_edge, %if.end21.if.then32_crit_edge401, %if.end21.if.then32_crit_edge402
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %timing)
  %cmp34 = icmp eq i8 %timing, 10
  %src_clk_freq = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 27
  %30 = ptrtoint ptr %src_clk_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_clk_freq, align 8
  %shr = lshr i32 %31, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %hz)
  %cmp39.not = icmp ugt i32 %shr, %hz
  br i1 %cmp39.not, label %if.else44, label %if.then32.if.end52_crit_edge

if.then32.if.end52_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.else44:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %hz, 2
  %sub = add i32 %shl, -1
  %add = add i32 %sub, %31
  %div47 = udiv i32 %add, %shl
  %div50 = udiv i32 %shr, %div47
  %shr51 = lshr i32 %div47, 1
  br label %if.end52

if.end52:                                         ; preds = %if.else44, %if.then32.if.end52_crit_edge
  %sclk.0 = phi i32 [ %div50, %if.else44 ], [ %shr, %if.then32.if.end52_crit_edge ]
  %div.0 = phi i32 [ %shr51, %if.else44 ], [ 0, %if.then32.if.end52_crit_edge ]
  br i1 %cmp34, label %land.lhs.true, label %if.end52.if.end102_crit_edge

if.end52.if.end102_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true:                                    ; preds = %if.end52
  %shr57 = lshr i32 %31, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr57, i32 %hz)
  %cmp58.not = icmp ugt i32 %shr57, %hz
  br i1 %cmp58.not, label %land.lhs.true.if.end102_crit_edge, label %if.then60

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then60:                                        ; preds = %land.lhs.true
  %32 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_comp, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp64 = icmp eq i8 %35, 8
  %36 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base7, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp64, label %if.then66, label %if.else69

if.then66:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %39 = or i32 %38, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #8, !srcloc !316
  br label %if.end72

if.else69:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  %40 = or i32 %38, 16384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %40) #8, !srcloc !316
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then66
  %41 = ptrtoint ptr %src_clk_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %src_clk_freq, align 8
  %shr74 = lshr i32 %42, 1
  br label %if.end102

if.else76:                                        ; preds = %if.end21
  %src_clk_freq77 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 27
  %43 = ptrtoint ptr %src_clk_freq77 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %src_clk_freq77, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %hz)
  %cmp78.not = icmp ugt i32 %44, %hz
  br i1 %cmp78.not, label %if.else82, label %if.else76.if.end102_crit_edge

if.else76.if.end102_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.else82:                                        ; preds = %if.else76
  %shr84 = lshr i32 %44, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr84, i32 %hz)
  %cmp85.not = icmp ugt i32 %shr84, %hz
  br i1 %cmp85.not, label %if.else90, label %if.else82.if.end102_crit_edge

if.else82.if.end102_crit_edge:                    ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.else90:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #10
  %shl92 = shl i32 %hz, 2
  %sub93 = add i32 %shl92, -1
  %add94 = add i32 %sub93, %44
  %div96 = udiv i32 %add94, %shl92
  %shr98 = lshr i32 %44, 2
  %div99 = udiv i32 %shr98, %div96
  br label %if.end102

if.end102:                                        ; preds = %if.else90, %if.else82.if.end102_crit_edge, %if.else76.if.end102_crit_edge, %if.end72, %land.lhs.true.if.end102_crit_edge, %if.end52.if.end102_crit_edge
  %sclk.1 = phi i32 [ %shr74, %if.end72 ], [ %sclk.0, %land.lhs.true.if.end102_crit_edge ], [ %sclk.0, %if.end52.if.end102_crit_edge ], [ %div99, %if.else90 ], [ %44, %if.else76.if.end102_crit_edge ], [ %shr84, %if.else82.if.end102_crit_edge ]
  %div.1 = phi i32 [ 0, %if.end72 ], [ %div.0, %land.lhs.true.if.end102_crit_edge ], [ %div.0, %if.end52.if.end102_crit_edge ], [ %div96, %if.else90 ], [ 0, %if.else76.if.end102_crit_edge ], [ 0, %if.else82.if.end102_crit_edge ]
  %mode.1 = phi i32 [ 3, %if.end72 ], [ 3, %land.lhs.true.if.end102_crit_edge ], [ 2, %if.end52.if.end102_crit_edge ], [ 0, %if.else90 ], [ 1, %if.else76.if.end102_crit_edge ], [ 0, %if.else82.if.end102_crit_edge ]
  %45 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base7, align 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %48 = and i32 %47, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %48) #8, !srcloc !316
  %src_clk_cg = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 23
  %49 = ptrtoint ptr %src_clk_cg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %src_clk_cg, align 4
  tail call void @clk_disable(ptr noundef %50) #8
  tail call void @clk_unprepare(ptr noundef %50) #8
  %51 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_comp, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %54)
  %cmp108 = icmp eq i8 %54, 8
  %55 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base7, align 8
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp108, label %if.then110, label %if.else114

if.then110:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %58 = and i32 %57, -16712449
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = shl nuw nsw i32 %mode.1, 16
  %61 = shl i32 %div.1, 8
  %shl.i = or i32 %60, %61
  %or.i390 = or i32 %shl.i, %59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i390) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %62) #8, !srcloc !316
  br label %if.end119

if.else114:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %63 = and i32 %57, -16727809
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = shl nuw nsw i32 %mode.1, 20
  %66 = shl i32 %div.1, 8
  %shl.i392 = or i32 %65, %66
  %or.i393 = or i32 %shl.i392, %64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i393) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %67) #8, !srcloc !316
  br label %if.end119

if.end119:                                        ; preds = %if.else114, %if.then110
  %68 = ptrtoint ptr %src_clk_cg to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %src_clk_cg, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end119.clk_prepare_enable.exit_crit_edge

if.end119.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end119
  %call1.i = tail call i32 @clk_enable(ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %69) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end119.clk_prepare_enable.exit_crit_edge
  %call122 = tail call i64 @ktime_get() #8
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %clk_prepare_enable.exit
  %70 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base7, align 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !383
  %tobool144.not = icmp sgt i32 %72, -1
  br i1 %tobool144.not, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %73 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base7, align 8
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %76 = or i32 %75, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %76) #8, !srcloc !316
  %actual_clock172 = getelementptr i8, ptr %host, i32 -296
  %77 = ptrtoint ptr %actual_clock172 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sclk.1, ptr %actual_clock172, align 8
  %mclk173 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 26
  %78 = ptrtoint ptr %mclk173 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %hz, ptr %mclk173, align 4
  %timing174 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 28
  %79 = ptrtoint ptr %timing174 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %timing, ptr %timing174, align 4
  %timeout_ns = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 12
  %80 = ptrtoint ptr %timeout_ns to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %timeout_ns, align 8
  %conv175 = zext i32 %81 to i64
  %timeout_clks = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 13
  %82 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %timeout_clks, align 4
  %conv176 = zext i32 %83 to i64
  tail call fastcc void @msdc_set_timeout(ptr noundef %host, i64 noundef %conv175, i64 noundef %conv176)
  %84 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base7, align 8
  %add.ptr178 = getelementptr i8, ptr %85, i32 16
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %87 = or i32 %86, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %87) #8, !srcloc !316
  %88 = ptrtoint ptr %actual_clock172 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %actual_clock172, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %89)
  %cmp180 = icmp ult i32 %89, 52000001
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp180, label %do.body183, label %do.body211

do.body183:                                       ; preds = %for.end
  %def_tune_para = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41
  %90 = ptrtoint ptr %def_tune_para to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %def_tune_para, align 8
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  %93 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base7, align 8
  %add.ptr187 = getelementptr i8, ptr %94, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %92) #8, !srcloc !316
  %top_base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 9
  %95 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %top_base, align 4
  %tobool188.not = icmp eq ptr %96, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool188.not, label %do.body203, label %do.body190

do.body190:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %emmc_top_control = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41, i32 3
  %97 = ptrtoint ptr %emmc_top_control to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %emmc_top_control, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  %100 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %top_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !384
  tail call void @arm_heavy_mb() #8
  %emmc_top_cmd = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41, i32 4
  %102 = ptrtoint ptr %emmc_top_cmd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %emmc_top_cmd, align 8
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %105 = ptrtoint ptr %top_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %top_base, align 4
  %add.ptr201 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 %104) #8, !srcloc !316
  br label %if.end249

do.body203:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %pad_tune = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 41, i32 1
  %107 = ptrtoint ptr %pad_tune to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pad_tune, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %110 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base7, align 8
  %add.ptr208 = getelementptr i8, ptr %111, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 %109) #8, !srcloc !316
  br label %if.end249

do.body211:                                       ; preds = %for.end
  %saved_tune_para = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42
  %112 = ptrtoint ptr %saved_tune_para to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %saved_tune_para, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %115 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base7, align 8
  %add.ptr216 = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr216, i32 %114) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !385
  tail call void @arm_heavy_mb() #8
  %pad_cmd_tune = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 2
  %117 = ptrtoint ptr %pad_cmd_tune to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pad_cmd_tune, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %120 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base7, align 8
  %add.ptr222 = getelementptr i8, ptr %121, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 %119) #8, !srcloc !316
  %top_base223 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 9
  %122 = ptrtoint ptr %top_base223 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %top_base223, align 4
  %tobool224.not = icmp eq ptr %123, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool224.not, label %do.body241, label %do.body226

do.body226:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #10
  %emmc_top_control230 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 3
  %124 = ptrtoint ptr %emmc_top_control230 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %emmc_top_control230, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %127 = ptrtoint ptr %top_base223 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %top_base223, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !386
  tail call void @arm_heavy_mb() #8
  %emmc_top_cmd237 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 4
  %129 = ptrtoint ptr %emmc_top_cmd237 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %emmc_top_cmd237, align 4
  %131 = tail call i32 @llvm.bswap.i32(i32 %130)
  %132 = ptrtoint ptr %top_base223 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %top_base223, align 4
  %add.ptr239 = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239, i32 %131) #8, !srcloc !316
  br label %if.end249

do.body241:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #10
  %pad_tune245 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 42, i32 1
  %134 = ptrtoint ptr %pad_tune245 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pad_tune245, align 4
  %136 = tail call i32 @llvm.bswap.i32(i32 %135)
  %137 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base7, align 8
  %add.ptr247 = getelementptr i8, ptr %138, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247, i32 %136) #8, !srcloc !316
  br label %if.end249

if.end249:                                        ; preds = %do.body241, %do.body226, %do.body203, %do.body190
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %timing)
  %cmp251 = icmp eq i8 %timing, 10
  br i1 %cmp251, label %land.lhs.true253, label %if.end249.do.body261_crit_edge

if.end249.do.body261_crit_edge:                   ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body261

land.lhs.true253:                                 ; preds = %if.end249
  %139 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_comp, align 4
  %hs400_tune = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %hs400_tune to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %hs400_tune, align 2, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool255.not = icmp eq i8 %142, 0
  br i1 %tobool255.not, label %land.lhs.true253.do.body261_crit_edge, label %if.then257

land.lhs.true253.do.body261_crit_edge:            ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body261

if.then257:                                       ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base7, align 8
  %add.ptr259 = getelementptr i8, ptr %144, i32 %3
  %hs400_cmd_int_delay = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 34
  %145 = ptrtoint ptr %hs400_cmd_int_delay to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %hs400_cmd_int_delay, align 8
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr259) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %148 = and i32 %147, -49160
  %149 = tail call i32 @llvm.bswap.i32(i32 %148)
  %shl.i397 = shl i32 %146, 22
  %or.i398 = or i32 %149, %shl.i397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %150 = tail call i32 @llvm.bswap.i32(i32 %or.i398) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 %150) #8, !srcloc !316
  br label %do.body261

do.body261:                                       ; preds = %if.then257, %land.lhs.true253.do.body261_crit_edge, %if.end249.do.body261_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_set_mclk.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_set_mclk, %if.then273)) #8
          to label %cleanup [label %if.then273], !srcloc !336

if.then273:                                       ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #10
  %151 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %host, align 8
  %153 = ptrtoint ptr %actual_clock172 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %actual_clock172, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_set_mclk.__UNIQUE_ID_ddebug305, ptr noundef %152, ptr noundef nonnull @.str.69, i32 noundef %154, i32 noundef %conv22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then273, %do.body261, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msdc_tune_together(ptr noundef %mmc, i32 noundef %opcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 176
  %latch_ck = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %latch_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %latch_ck, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %5 = and i32 %4, 2147287039
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl.i = shl i32 %3, 7
  %or.i = or i32 %6, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #8, !srcloc !316
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %11 = and i32 %10, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %11) #8, !srcloc !316
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %15 = and i32 %14, -67174401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %15) #8, !srcloc !316
  %top_base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %msdc_set_data_delay.exit.for.body_crit_edge, %entry
  %rise_delay.0200 = phi i32 [ 0, %entry ], [ %rise_delay.1, %msdc_set_data_delay.exit.for.body_crit_edge ]
  %i.0198 = phi i32 [ 0, %entry ], [ %inc, %msdc_set_data_delay.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %19 = and i32 %18, 536674303
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %shl.i.i = shl i32 %i.0198, 5
  %or.i.i = or i32 %20, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %pad_tune_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pad_tune_reg.i, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr2.i = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %29 = and i32 %28, -7937
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %shl.i8.i = shl i32 %i.0198, 16
  %or.i9.i = or i32 %30, %shl.i8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %31) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit

msdc_set_cmd_delay.exit:                          ; preds = %if.else.i, %if.then.i
  %32 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i126 = icmp eq ptr %33, null
  br i1 %tobool.not.i126, label %if.else.i136, label %if.then.i129

if.then.i129:                                     ; preds = %msdc_set_cmd_delay.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %35 = and i32 %34, 2146500607
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  %shl.i.i127 = shl i32 %i.0198, 7
  %or.i.i128 = or i32 %36, %shl.i.i127
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i.i128) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %37) #8, !srcloc !316
  br label %msdc_set_data_delay.exit

if.else.i136:                                     ; preds = %msdc_set_cmd_delay.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i131 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %pad_tune_reg.i131 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pad_tune_reg.i131, align 4
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 8
  %add.ptr2.i133 = getelementptr i8, ptr %43, i32 %41
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i133) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %45 = and i32 %44, -2031617
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  %shl.i8.i134 = shl i32 %i.0198, 8
  %or.i9.i135 = or i32 %46, %shl.i8.i134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i135) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i133, i32 %47) #8, !srcloc !316
  br label %msdc_set_data_delay.exit

msdc_set_data_delay.exit:                         ; preds = %if.else.i136, %if.then.i129
  %call5 = tail call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %shl = shl nuw i32 1, %i.0198
  %or = select i1 %tobool.not, i32 %shl, i32 0
  %rise_delay.1 = or i32 %or, %rise_delay.0200
  %inc = add nuw nsw i32 %i.0198, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %msdc_set_data_delay.exit.for.body_crit_edge

msdc_set_data_delay.exit.for.body_crit_edge:      ; preds = %msdc_set_data_delay.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %msdc_set_data_delay.exit
  %call6 = tail call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %rise_delay.1)
  %final_rise_delay.sroa.0.0.extract.shift120 = lshr i32 %call6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326591, i32 %call6)
  %cmp7 = icmp ugt i32 %call6, 201326591
  br i1 %cmp7, label %for.end.if.then53_crit_edge, label %lor.lhs.false

for.end.if.then53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false:                                    ; preds = %for.end
  %48 = and i32 %call6, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp10 = icmp eq i32 %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %call6)
  %cmp14 = icmp ugt i32 %call6, 67108863
  %or.cond = and i1 %cmp14, %cmp10
  br i1 %or.cond, label %lor.lhs.false.if.then53_crit_edge, label %if.end17

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.end17:                                         ; preds = %lor.lhs.false
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 8
  %add.ptr19 = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %52 = or i32 %51, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %52) #8, !srcloc !316
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 8
  %add.ptr21 = getelementptr i8, ptr %54, i32 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %56 = or i32 %55, 67174400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %56) #8, !srcloc !316
  br label %for.body25

for.body25:                                       ; preds = %msdc_set_data_delay.exit165.for.body25_crit_edge, %if.end17
  %fall_delay.0203 = phi i32 [ 0, %if.end17 ], [ %fall_delay.1, %msdc_set_data_delay.exit165.for.body25_crit_edge ]
  %i.1201 = phi i32 [ 0, %if.end17 ], [ %inc33, %msdc_set_data_delay.exit165.for.body25_crit_edge ]
  %57 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i140 = icmp eq ptr %58, null
  br i1 %tobool.not.i140, label %if.else.i151, label %if.then.i144

if.then.i144:                                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i141 = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %60 = and i32 %59, 536674303
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #8
  %shl.i.i142 = shl i32 %i.1201, 5
  %or.i.i143 = or i32 %61, %shl.i.i142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %62 = tail call i32 @llvm.bswap.i32(i32 %or.i.i143) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %62) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit152

if.else.i151:                                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i146 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %pad_tune_reg.i146 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pad_tune_reg.i146, align 4
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 8
  %add.ptr2.i148 = getelementptr i8, ptr %68, i32 %66
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i148) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %70 = and i32 %69, -7937
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  %shl.i8.i149 = shl i32 %i.1201, 16
  %or.i9.i150 = or i32 %71, %shl.i8.i149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %72 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i150) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i148, i32 %72) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit152

msdc_set_cmd_delay.exit152:                       ; preds = %if.else.i151, %if.then.i144
  %73 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i154 = icmp eq ptr %74, null
  br i1 %tobool.not.i154, label %if.else.i164, label %if.then.i157

if.then.i157:                                     ; preds = %msdc_set_cmd_delay.exit152
  call void @__sanitizer_cov_trace_pc() #10
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %74) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %76 = and i32 %75, 2146500607
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  %shl.i.i155 = shl i32 %i.1201, 7
  %or.i.i156 = or i32 %77, %shl.i.i155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i.i156) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %74, i32 %78) #8, !srcloc !316
  br label %msdc_set_data_delay.exit165

if.else.i164:                                     ; preds = %msdc_set_cmd_delay.exit152
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i159 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %pad_tune_reg.i159 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pad_tune_reg.i159, align 4
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 8
  %add.ptr2.i161 = getelementptr i8, ptr %84, i32 %82
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i161) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %86 = and i32 %85, -2031617
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %shl.i8.i162 = shl i32 %i.1201, 8
  %or.i9.i163 = or i32 %87, %shl.i8.i162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i163) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i161, i32 %88) #8, !srcloc !316
  br label %msdc_set_data_delay.exit165

msdc_set_data_delay.exit165:                      ; preds = %if.else.i164, %if.then.i157
  %call26 = tail call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %shl29 = shl nuw i32 1, %i.1201
  %or30 = select i1 %tobool27.not, i32 %shl29, i32 0
  %fall_delay.1 = or i32 %or30, %fall_delay.0203
  %inc33 = add nuw nsw i32 %i.1201, 1
  %exitcond204.not = icmp eq i32 %inc33, 32
  br i1 %exitcond204.not, label %skip_fall, label %msdc_set_data_delay.exit165.for.body25_crit_edge

msdc_set_data_delay.exit165.for.body25_crit_edge: ; preds = %msdc_set_data_delay.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

skip_fall:                                        ; preds = %msdc_set_data_delay.exit165
  %call36 = tail call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %fall_delay.1)
  %final_fall_delay.sroa.0.0.extract.shift122 = lshr i32 %call36, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %final_rise_delay.sroa.0.0.extract.shift120, i32 %final_fall_delay.sroa.0.0.extract.shift122)
  %cmp51.not = icmp ult i32 %final_rise_delay.sroa.0.0.extract.shift120, %final_fall_delay.sroa.0.0.extract.shift122
  br i1 %cmp51.not, label %if.else, label %skip_fall.if.then53_crit_edge

skip_fall.if.then53_crit_edge:                    ; preds = %skip_fall
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then53:                                        ; preds = %skip_fall.if.then53_crit_edge, %lor.lhs.false.if.then53_crit_edge, %for.end.if.then53_crit_edge
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base, align 8
  %add.ptr55 = getelementptr i8, ptr %90, i32 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %92 = and i32 %91, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %92) #8, !srcloc !316
  %93 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base, align 8
  %add.ptr57 = getelementptr i8, ptr %94, i32 4
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %96 = and i32 %95, -67174401
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %96) #8, !srcloc !316
  br label %if.end63

if.else:                                          ; preds = %skip_fall
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 8
  %add.ptr59 = getelementptr i8, ptr %98, i32 4
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %100 = or i32 %99, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %100) #8, !srcloc !316
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 8
  %add.ptr61 = getelementptr i8, ptr %102, i32 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %104 = or i32 %103, 67174400
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %104) #8, !srcloc !316
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then53
  %final_delay.0.in = phi i32 [ %call6, %if.then53 ], [ %call36, %if.else ]
  %final_delay.0 = lshr i32 %final_delay.0.in, 8
  %conv64 = and i32 %final_delay.0, 255
  %105 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i171 = icmp eq ptr %106, null
  br i1 %tobool.not.i171, label %if.else.i182, label %if.then.i175

if.then.i175:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i172 = getelementptr i8, ptr %106, i32 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %108 = and i32 %107, 536674303
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  %shl.i.i173 = shl nuw nsw i32 %conv64, 5
  %or.i.i174 = or i32 %109, %shl.i.i173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %110 = tail call i32 @llvm.bswap.i32(i32 %or.i.i174) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %110) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit183

if.else.i182:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i177 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %112, i32 0, i32 3
  %113 = ptrtoint ptr %pad_tune_reg.i177 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %pad_tune_reg.i177, align 4
  %115 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base, align 8
  %add.ptr2.i179 = getelementptr i8, ptr %116, i32 %114
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i179) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %118 = and i32 %117, -7937
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #8
  %shl.i8.i180 = shl nuw nsw i32 %conv64, 16
  %or.i9.i181 = or i32 %119, %shl.i8.i180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i181) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i179, i32 %120) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit183

msdc_set_cmd_delay.exit183:                       ; preds = %if.else.i182, %if.then.i175
  %121 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i185 = icmp eq ptr %122, null
  br i1 %tobool.not.i185, label %if.else.i195, label %if.then.i188

if.then.i188:                                     ; preds = %msdc_set_cmd_delay.exit183
  call void @__sanitizer_cov_trace_pc() #10
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %122) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %124 = and i32 %123, 2146500607
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #8
  %shl.i.i186 = shl nuw nsw i32 %conv64, 7
  %or.i.i187 = or i32 %125, %shl.i.i186
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %126 = tail call i32 @llvm.bswap.i32(i32 %or.i.i187) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %122, i32 %126) #8, !srcloc !316
  br label %msdc_set_data_delay.exit196

if.else.i195:                                     ; preds = %msdc_set_cmd_delay.exit183
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i190 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %128, i32 0, i32 3
  %129 = ptrtoint ptr %pad_tune_reg.i190 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pad_tune_reg.i190, align 4
  %131 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base, align 8
  %add.ptr2.i192 = getelementptr i8, ptr %132, i32 %130
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i192) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %134 = and i32 %133, -2031617
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #8
  %shl.i8.i193 = shl nuw nsw i32 %conv64, 8
  %or.i9.i194 = or i32 %135, %shl.i8.i193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %136 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i194) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i192, i32 %136) #8, !srcloc !316
  br label %msdc_set_data_delay.exit196

msdc_set_data_delay.exit196:                      ; preds = %if.else.i195, %if.then.i188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_tune_together.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_tune_together, %if.then71)) #8
          to label %do.end [label %if.then71], !srcloc !336

if.then71:                                        ; preds = %msdc_set_data_delay.exit196
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_tune_together.__UNIQUE_ID_ddebug330, ptr noundef %138, ptr noundef nonnull @.str.79, i32 noundef %conv64) #8
  br label %do.end

do.end:                                           ; preds = %if.then71, %msdc_set_data_delay.exit196
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv64)
  %cmp75 = icmp eq i32 %conv64, 255
  %cond77 = select i1 %cmp75, i32 -5, i32 0
  ret i32 %cond77
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hs400_tune_response(ptr noundef %mmc, i32 noundef %opcode) unnamed_addr #2 align 64 {
entry:
  %cmd_err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_err) #8
  %0 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd_err, align 4, !annotation !355
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 396
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %4 = or i32 %3, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !316
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 180
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %8 = and i32 %7, -939524097
  %9 = or i32 %8, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %9) #8, !srcloc !316
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 7
  %10 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %timing, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %11, label %entry.if.end_crit_edge [
    i8 9, label %entry.if.then_crit_edge
    i8 6, label %entry.if.then_crit_edge92
  ]

entry.if.then_crit_edge92:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge92
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %add.ptr10 = getelementptr i8, ptr %14, i32 236
  %hs200_cmd_int_delay = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 6
  %15 = ptrtoint ptr %hs200_cmd_int_delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hs200_cmd_int_delay, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %18 = and i32 %17, -49160
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %shl.i = shl i32 %16, 22
  %or.i75 = or i32 %19, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i75) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %20) #8, !srcloc !316
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hs400_cmd_resp_sel_rising = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 2
  %21 = ptrtoint ptr %hs400_cmd_resp_sel_rising to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hs400_cmd_resp_sel_rising, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 8
  %add.ptr15 = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = and i32 %25, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %26) #8, !srcloc !316
  br label %for.body.preheader

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %27 = or i32 %25, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %27) #8, !srcloc !316
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else, %if.then11
  br label %for.body

for.body:                                         ; preds = %for.inc31.for.body_crit_edge, %for.body.preheader
  %cmd_delay.090 = phi i32 [ %cmd_delay.2, %for.inc31.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.088 = phi i32 [ %inc32, %for.inc31.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 8
  %add.ptr20 = getelementptr i8, ptr %29, i32 396
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %31 = and i32 %30, -1040187393
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %shl.i79 = shl nuw i32 %i.088, 1
  %or.i80 = or i32 %32, %shl.i79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %33 = call i32 @llvm.bswap.i32(i32 %or.i80) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %33) #8, !srcloc !316
  %shl = shl nuw i32 1, %i.088
  %call25 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %34 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool26.not = icmp eq i32 %35, 0
  br i1 %tobool26.not, label %if.then27, label %for.body.if.else28_crit_edge

for.body.if.else28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28

if.then27:                                        ; preds = %for.body
  %36 = or i32 %cmd_delay.090, %shl
  %call25.1 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %37 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool26.not.1 = icmp eq i32 %38, 0
  br i1 %tobool26.not.1, label %if.then27.1, label %if.then27.if.else28_crit_edge

if.then27.if.else28_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28

if.then27.1:                                      ; preds = %if.then27
  %call25.2 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %39 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not.2 = icmp eq i32 %40, 0
  br i1 %tobool26.not.2, label %if.then27.1.for.inc31_crit_edge, label %if.then27.1.if.else28_crit_edge

if.then27.1.if.else28_crit_edge:                  ; preds = %if.then27.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else28

if.then27.1.for.inc31_crit_edge:                  ; preds = %if.then27.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc31

if.else28:                                        ; preds = %if.then27.1.if.else28_crit_edge, %if.then27.if.else28_crit_edge, %for.body.if.else28_crit_edge
  %cmd_delay.187.lcssa = phi i32 [ %cmd_delay.090, %for.body.if.else28_crit_edge ], [ %36, %if.then27.if.else28_crit_edge ], [ %36, %if.then27.1.if.else28_crit_edge ]
  %neg = xor i32 %shl, -1
  %and = and i32 %cmd_delay.187.lcssa, %neg
  br label %for.inc31

for.inc31:                                        ; preds = %if.else28, %if.then27.1.for.inc31_crit_edge
  %cmd_delay.2 = phi i32 [ %and, %if.else28 ], [ %36, %if.then27.1.for.inc31_crit_edge ]
  %inc32 = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc32, 32
  br i1 %exitcond.not, label %for.end33, label %for.inc31.for.body_crit_edge

for.inc31.for.body_crit_edge:                     ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end33:                                        ; preds = %for.inc31
  %call34 = call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %cmd_delay.2)
  %tmp.coerce.0.extract.shift = lshr i32 %call34, 8
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 8
  %add.ptr36 = getelementptr i8, ptr %42, i32 396
  %conv37 = and i32 %tmp.coerce.0.extract.shift, 255
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %44 = and i32 %43, -1040187393
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %shl.i82 = shl nuw nsw i32 %conv37, 1
  %or.i83 = or i32 %45, %shl.i82
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %46 = call i32 @llvm.bswap.i32(i32 %or.i83) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %46) #8, !srcloc !316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hs400_tune_response.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hs400_tune_response, %if.then44)) #8
          to label %do.end [label %if.then44], !srcloc !336

if.then44:                                        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hs400_tune_response.__UNIQUE_ID_ddebug324, ptr noundef %48, ptr noundef nonnull @.str.87, i32 noundef %conv37) #8
  br label %do.end

do.end:                                           ; preds = %if.then44, %for.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv37)
  %cmp48 = icmp eq i32 %conv37, 255
  %cond = select i1 %cmp48, i32 -5, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_err) #8
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msdc_tune_response(ptr noundef %mmc, i32 noundef %opcode) unnamed_addr #2 align 64 {
entry:
  %cmd_err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %dev_comp = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pad_tune_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_tune_reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_err) #8
  %4 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cmd_err, align 4, !annotation !355
  %timing = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 7
  %5 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %timing, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %6, label %entry.if.end_crit_edge [
    i8 9, label %entry.if.then_crit_edge
    i8 6, label %entry.if.then_crit_edge290
  ]

entry.if.then_crit_edge290:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge290
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 %3
  %hs200_cmd_int_delay = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 6
  %10 = ptrtoint ptr %hs200_cmd_int_delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hs200_cmd_int_delay, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %13 = and i32 %12, -49160
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %shl.i = shl i32 %11, 22
  %or.i = or i32 %14, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !316
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base7 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base7, align 8
  %add.ptr8 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %19 = and i32 %18, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %19) #8, !srcloc !316
  %top_base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc19.for.body_crit_edge, %if.end
  %rise_delay.0275 = phi i32 [ 0, %if.end ], [ %rise_delay.2, %for.inc19.for.body_crit_edge ]
  %i.0272 = phi i32 [ 0, %if.end ], [ %inc20, %for.inc19.for.body_crit_edge ]
  %20 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %23 = and i32 %22, 536674303
  %24 = call i32 @llvm.bswap.i32(i32 %23) #8
  %shl.i.i = shl i32 %i.0272, 5
  %or.i.i = or i32 %24, %shl.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %25 = call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %pad_tune_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pad_tune_reg.i, align 4
  %30 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base7, align 8
  %add.ptr2.i = getelementptr i8, ptr %31, i32 %29
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %33 = and i32 %32, -7937
  %34 = call i32 @llvm.bswap.i32(i32 %33) #8
  %shl.i8.i = shl i32 %i.0272, 16
  %or.i9.i = or i32 %34, %shl.i8.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %35 = call i32 @llvm.bswap.i32(i32 %or.i9.i) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %35) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit

msdc_set_cmd_delay.exit:                          ; preds = %if.else.i, %if.then.i
  %shl = shl nuw i32 1, %i.0272
  %call15 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %36 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.then16, label %msdc_set_cmd_delay.exit.if.else_crit_edge

msdc_set_cmd_delay.exit.if.else_crit_edge:        ; preds = %msdc_set_cmd_delay.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then16:                                        ; preds = %msdc_set_cmd_delay.exit
  %38 = or i32 %rise_delay.0275, %shl
  %call15.1 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %39 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1 = icmp eq i32 %40, 0
  br i1 %tobool.not.1, label %if.then16.1, label %if.then16.if.else_crit_edge

if.then16.if.else_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then16.1:                                      ; preds = %if.then16
  %call15.2 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %41 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.2 = icmp eq i32 %42, 0
  br i1 %tobool.not.2, label %if.then16.1.for.inc19_crit_edge, label %if.then16.1.if.else_crit_edge

if.then16.1.if.else_crit_edge:                    ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then16.1.for.inc19_crit_edge:                  ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19

if.else:                                          ; preds = %if.then16.1.if.else_crit_edge, %if.then16.if.else_crit_edge, %msdc_set_cmd_delay.exit.if.else_crit_edge
  %rise_delay.1271.lcssa = phi i32 [ %rise_delay.0275, %msdc_set_cmd_delay.exit.if.else_crit_edge ], [ %38, %if.then16.if.else_crit_edge ], [ %38, %if.then16.1.if.else_crit_edge ]
  %neg = xor i32 %shl, -1
  %and = and i32 %rise_delay.1271.lcssa, %neg
  br label %for.inc19

for.inc19:                                        ; preds = %if.else, %if.then16.1.for.inc19_crit_edge
  %rise_delay.2 = phi i32 [ %and, %if.else ], [ %38, %if.then16.1.for.inc19_crit_edge ]
  %inc20 = add nuw nsw i32 %i.0272, 1
  %exitcond.not = icmp eq i32 %inc20, 32
  br i1 %exitcond.not, label %for.end21, label %for.inc19.for.body_crit_edge

for.inc19.for.body_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end21:                                        ; preds = %for.inc19
  %call22 = call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %rise_delay.2)
  %tmp.coerce.0.extract.shift = lshr i32 %call22, 8
  %final_rise_delay.sroa.0.0.extract.shift220 = lshr i32 %call22, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326591, i32 %call22)
  %cmp24 = icmp ugt i32 %call22, 201326591
  br i1 %cmp24, label %for.end21.skip_fall_crit_edge, label %lor.lhs.false26

for.end21.skip_fall_crit_edge:                    ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_fall

lor.lhs.false26:                                  ; preds = %for.end21
  %43 = and i32 %call22, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp28 = icmp eq i32 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %call22)
  %cmp32 = icmp ugt i32 %call22, 67108863
  %or.cond = and i1 %cmp32, %cmp28
  br i1 %or.cond, label %lor.lhs.false26.skip_fall_crit_edge, label %if.end35

lor.lhs.false26.skip_fall_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_fall

if.end35:                                         ; preds = %lor.lhs.false26
  %44 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base7, align 8
  %add.ptr37 = getelementptr i8, ptr %45, i32 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %47 = or i32 %46, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %47) #8, !srcloc !316
  br label %for.body41

for.body41:                                       ; preds = %for.inc59.for.body41_crit_edge, %if.end35
  %fall_delay.0281 = phi i32 [ 0, %if.end35 ], [ %fall_delay.2, %for.inc59.for.body41_crit_edge ]
  %i.1278 = phi i32 [ 0, %if.end35 ], [ %inc60, %for.inc59.for.body41_crit_edge ]
  %48 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i231 = icmp eq ptr %49, null
  br i1 %tobool.not.i231, label %if.else.i242, label %if.then.i235

if.then.i235:                                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i232 = getelementptr i8, ptr %49, i32 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %51 = and i32 %50, 536674303
  %52 = call i32 @llvm.bswap.i32(i32 %51) #8
  %shl.i.i233 = shl i32 %i.1278, 5
  %or.i.i234 = or i32 %52, %shl.i.i233
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %53 = call i32 @llvm.bswap.i32(i32 %or.i.i234) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232, i32 %53) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit243

if.else.i242:                                     ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg.i237 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %pad_tune_reg.i237 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pad_tune_reg.i237, align 4
  %58 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base7, align 8
  %add.ptr2.i239 = getelementptr i8, ptr %59, i32 %57
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i239) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %61 = and i32 %60, -7937
  %62 = call i32 @llvm.bswap.i32(i32 %61) #8
  %shl.i8.i240 = shl i32 %i.1278, 16
  %or.i9.i241 = or i32 %62, %shl.i8.i240
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %63 = call i32 @llvm.bswap.i32(i32 %or.i9.i241) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i239, i32 %63) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit243

msdc_set_cmd_delay.exit243:                       ; preds = %if.else.i242, %if.then.i235
  %shl49 = shl nuw i32 1, %i.1278
  %call46 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %64 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool47.not = icmp eq i32 %65, 0
  br i1 %tobool47.not, label %if.then48, label %msdc_set_cmd_delay.exit243.if.else51_crit_edge

msdc_set_cmd_delay.exit243.if.else51_crit_edge:   ; preds = %msdc_set_cmd_delay.exit243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

if.then48:                                        ; preds = %msdc_set_cmd_delay.exit243
  %66 = or i32 %fall_delay.0281, %shl49
  %call46.1 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %67 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool47.not.1 = icmp eq i32 %68, 0
  br i1 %tobool47.not.1, label %if.then48.1, label %if.then48.if.else51_crit_edge

if.then48.if.else51_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

if.then48.1:                                      ; preds = %if.then48
  %call46.2 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %69 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool47.not.2 = icmp eq i32 %70, 0
  br i1 %tobool47.not.2, label %if.then48.1.for.inc59_crit_edge, label %if.then48.1.if.else51_crit_edge

if.then48.1.if.else51_crit_edge:                  ; preds = %if.then48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else51

if.then48.1.for.inc59_crit_edge:                  ; preds = %if.then48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc59

if.else51:                                        ; preds = %if.then48.1.if.else51_crit_edge, %if.then48.if.else51_crit_edge, %msdc_set_cmd_delay.exit243.if.else51_crit_edge
  %fall_delay.1277.lcssa = phi i32 [ %fall_delay.0281, %msdc_set_cmd_delay.exit243.if.else51_crit_edge ], [ %66, %if.then48.if.else51_crit_edge ], [ %66, %if.then48.1.if.else51_crit_edge ]
  %neg53 = xor i32 %shl49, -1
  %and54 = and i32 %fall_delay.1277.lcssa, %neg53
  br label %for.inc59

for.inc59:                                        ; preds = %if.else51, %if.then48.1.for.inc59_crit_edge
  %fall_delay.2 = phi i32 [ %and54, %if.else51 ], [ %66, %if.then48.1.for.inc59_crit_edge ]
  %inc60 = add nuw nsw i32 %i.1278, 1
  %exitcond288.not = icmp eq i32 %inc60, 32
  br i1 %exitcond288.not, label %for.end61, label %for.inc59.for.body41_crit_edge

for.inc59.for.body41_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41

for.end61:                                        ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %fall_delay.2)
  %tmp.coerce64.0.extract.shift = lshr i32 %call63, 8
  %final_fall_delay.sroa.0.0.extract.shift222 = lshr i32 %call63, 24
  %final_fall_delay.sroa.0.0.extract.trunc = trunc i32 %final_fall_delay.sroa.0.0.extract.shift222 to i8
  %71 = and i32 %call63, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %phi.cmp = icmp eq i32 %71, 0
  br label %skip_fall

skip_fall:                                        ; preds = %for.end61, %lor.lhs.false26.skip_fall_crit_edge, %for.end21.skip_fall_crit_edge
  %final_fall_delay.sroa.8.0 = phi i32 [ 0, %for.end21.skip_fall_crit_edge ], [ %tmp.coerce64.0.extract.shift, %for.end61 ], [ 0, %lor.lhs.false26.skip_fall_crit_edge ]
  %final_fall_delay.sroa.7.0 = phi i1 [ true, %for.end21.skip_fall_crit_edge ], [ %phi.cmp, %for.end61 ], [ true, %lor.lhs.false26.skip_fall_crit_edge ]
  %final_fall_delay.sroa.0.0 = phi i8 [ 0, %for.end21.skip_fall_crit_edge ], [ %final_fall_delay.sroa.0.0.extract.trunc, %for.end61 ], [ 0, %lor.lhs.false26.skip_fall_crit_edge ]
  %conv69 = zext i8 %final_fall_delay.sroa.0.0 to i32
  %72 = call i32 @llvm.umax.i32(i32 %final_rise_delay.sroa.0.0.extract.shift220, i32 %conv69)
  %conv74 = trunc i32 %72 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %final_fall_delay.sroa.0.0)
  %cmp77 = icmp ugt i8 %final_fall_delay.sroa.0.0, 11
  %or.cond224 = select i1 %cmp77, i1 %final_fall_delay.sroa.7.0, i1 false
  %final_maxlen.0 = select i1 %or.cond224, i8 %final_fall_delay.sroa.0.0, i8 %conv74
  %conv87 = zext i8 %final_maxlen.0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %final_rise_delay.sroa.0.0.extract.shift220, i32 %conv87)
  %cmp90 = icmp eq i32 %final_rise_delay.sroa.0.0.extract.shift220, %conv87
  %73 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base7, align 8
  %add.ptr94 = getelementptr i8, ptr %74, i32 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp90, label %if.then92, label %if.else95

if.then92:                                        ; preds = %skip_fall
  call void @__sanitizer_cov_trace_pc() #10
  %76 = and i32 %75, -33554433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %76) #8, !srcloc !316
  br label %if.end99

if.else95:                                        ; preds = %skip_fall
  call void @__sanitizer_cov_trace_pc() #10
  %77 = or i32 %75, 33554432
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %77) #8, !srcloc !316
  br label %if.end99

if.end99:                                         ; preds = %if.else95, %if.then92
  %final_delay.0 = phi i32 [ %tmp.coerce.0.extract.shift, %if.then92 ], [ %final_fall_delay.sroa.8.0, %if.else95 ]
  %conv100 = and i32 %final_delay.0, 255
  %78 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i247 = icmp eq ptr %79, null
  br i1 %tobool.not.i247, label %if.else.i258, label %if.then.i251

if.then.i251:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i248 = getelementptr i8, ptr %79, i32 4
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i248) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %81 = and i32 %80, 536674303
  %82 = call i32 @llvm.bswap.i32(i32 %81) #8
  %shl.i.i249 = shl nuw nsw i32 %conv100, 5
  %or.i.i250 = or i32 %82, %shl.i.i249
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %83 = call i32 @llvm.bswap.i32(i32 %or.i.i250) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248, i32 %83) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit259

if.else.i258:                                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_comp, align 4
  %pad_tune_reg.i253 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %pad_tune_reg.i253 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pad_tune_reg.i253, align 4
  %88 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base7, align 8
  %add.ptr2.i255 = getelementptr i8, ptr %89, i32 %87
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i255) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %91 = and i32 %90, -7937
  %92 = call i32 @llvm.bswap.i32(i32 %91) #8
  %shl.i8.i256 = shl nuw nsw i32 %conv100, 16
  %or.i9.i257 = or i32 %92, %shl.i8.i256
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %93 = call i32 @llvm.bswap.i32(i32 %or.i9.i257) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i255, i32 %93) #8, !srcloc !316
  br label %msdc_set_cmd_delay.exit259

msdc_set_cmd_delay.exit259:                       ; preds = %if.else.i258, %if.then.i251
  %94 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_comp, align 4
  %async_fifo = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %async_fifo to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %async_fifo, align 4, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool102.not = icmp eq i8 %97, 0
  br i1 %tobool102.not, label %lor.lhs.false104, label %msdc_set_cmd_delay.exit259.do.body138_crit_edge

msdc_set_cmd_delay.exit259.do.body138_crit_edge:  ; preds = %msdc_set_cmd_delay.exit259
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138

lor.lhs.false104:                                 ; preds = %msdc_set_cmd_delay.exit259
  %hs200_cmd_int_delay105 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 6
  %98 = ptrtoint ptr %hs200_cmd_int_delay105 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hs200_cmd_int_delay105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool106.not = icmp eq i32 %99, 0
  br i1 %tobool106.not, label %lor.lhs.false104.for.body112_crit_edge, label %lor.lhs.false104.do.body138_crit_edge

lor.lhs.false104.do.body138_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body138

lor.lhs.false104.for.body112_crit_edge:           ; preds = %lor.lhs.false104
  br label %for.body112

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %lor.lhs.false104.for.body112_crit_edge
  %i.2283 = phi i32 [ %inc122, %for.body112.for.body112_crit_edge ], [ 0, %lor.lhs.false104.for.body112_crit_edge ]
  %internal_delay.0282 = phi i32 [ %internal_delay.1, %for.body112.for.body112_crit_edge ], [ 0, %lor.lhs.false104.for.body112_crit_edge ]
  %100 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base7, align 8
  %add.ptr114 = getelementptr i8, ptr %101, i32 %3
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %103 = and i32 %102, -49160
  %104 = call i32 @llvm.bswap.i32(i32 %103)
  %shl.i261 = shl i32 %i.2283, 22
  %or.i262 = or i32 %104, %shl.i261
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %105 = call i32 @llvm.bswap.i32(i32 %or.i262) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %105) #8, !srcloc !316
  %call115 = call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef nonnull %cmd_err) #8
  %106 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool116.not = icmp eq i32 %107, 0
  %shl118 = shl nuw i32 1, %i.2283
  %or119 = select i1 %tobool116.not, i32 %shl118, i32 0
  %internal_delay.1 = or i32 %or119, %internal_delay.0282
  %inc122 = add nuw nsw i32 %i.2283, 1
  %exitcond289.not = icmp eq i32 %inc122, 32
  br i1 %exitcond289.not, label %do.body, label %for.body112.for.body112_crit_edge

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body112

do.body:                                          ; preds = %for.body112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_tune_response.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_tune_response, %if.then129)) #8
          to label %do.end [label %if.then129], !srcloc !336

if.then129:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %private.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_tune_response.__UNIQUE_ID_ddebug322, ptr noundef %109, ptr noundef nonnull @.str.89, i32 noundef %internal_delay.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then129, %do.body
  %call132 = call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %internal_delay.1)
  %110 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base7, align 8
  %add.ptr135 = getelementptr i8, ptr %111, i32 %3
  %112 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #8, !srcloc !311
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %113 = and i32 %112, -49160
  %114 = call i32 @llvm.bswap.i32(i32 %113)
  %115 = shl i32 %call132, 14
  %shl.i264 = and i32 %115, 1069547520
  %or.i265 = or i32 %114, %shl.i264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %116 = call i32 @llvm.bswap.i32(i32 %or.i265) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %116) #8, !srcloc !316
  br label %do.body138

do.body138:                                       ; preds = %do.end, %lor.lhs.false104.do.body138_crit_edge, %msdc_set_cmd_delay.exit259.do.body138_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_tune_response.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_tune_response, %if.then150)) #8
          to label %do.end155 [label %if.then150], !srcloc !336

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %private.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_tune_response.__UNIQUE_ID_ddebug323, ptr noundef %118, ptr noundef nonnull @.str.87, i32 noundef %conv100) #8
  br label %do.end155

do.end155:                                        ; preds = %if.then150, %do.body138
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv100)
  %cmp157 = icmp eq i32 %conv100, 255
  %cond159 = select i1 %cmp157, i32 -5, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_err) #8
  ret i32 %cond159
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msdc_tune_data(ptr noundef %mmc, i32 noundef %opcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 176
  %latch_ck = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %latch_ck to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %latch_ck, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %5 = and i32 %4, 2147287039
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl.i = shl i32 %3, 7
  %or.i = or i32 %6, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #8, !srcloc !316
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %11 = and i32 %10, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %11) #8, !srcloc !316
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %15 = and i32 %14, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %15) #8, !srcloc !316
  %top_base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %msdc_set_data_delay.exit.for.body_crit_edge, %entry
  %rise_delay.0153 = phi i32 [ 0, %entry ], [ %rise_delay.1, %msdc_set_data_delay.exit.for.body_crit_edge ]
  %i.0151 = phi i32 [ 0, %entry ], [ %inc, %msdc_set_data_delay.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %19 = and i32 %18, 2146500607
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  %shl.i.i = shl i32 %i.0151, 7
  %or.i.i = or i32 %20, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %17, i32 %21) #8, !srcloc !316
  br label %msdc_set_data_delay.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %pad_tune_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pad_tune_reg.i, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 8
  %add.ptr2.i = getelementptr i8, ptr %27, i32 %25
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %29 = and i32 %28, -2031617
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #8
  %shl.i8.i = shl i32 %i.0151, 8
  %or.i9.i = or i32 %30, %shl.i8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %31) #8, !srcloc !316
  br label %msdc_set_data_delay.exit

msdc_set_data_delay.exit:                         ; preds = %if.else.i, %if.then.i
  %call5 = tail call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %shl = shl nuw i32 1, %i.0151
  %or = select i1 %tobool.not, i32 %shl, i32 0
  %rise_delay.1 = or i32 %or, %rise_delay.0153
  %inc = add nuw nsw i32 %i.0151, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %msdc_set_data_delay.exit.for.body_crit_edge

msdc_set_data_delay.exit.for.body_crit_edge:      ; preds = %msdc_set_data_delay.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %msdc_set_data_delay.exit
  %call6 = tail call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %rise_delay.1)
  %final_rise_delay.sroa.0.0.extract.shift113 = lshr i32 %call6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326591, i32 %call6)
  %cmp7 = icmp ugt i32 %call6, 201326591
  br i1 %cmp7, label %for.end.if.then53_crit_edge, label %lor.lhs.false

for.end.if.then53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false:                                    ; preds = %for.end
  %32 = and i32 %call6, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10 = icmp eq i32 %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %call6)
  %cmp14 = icmp ugt i32 %call6, 67108863
  %or.cond = and i1 %cmp14, %cmp10
  br i1 %or.cond, label %lor.lhs.false.if.then53_crit_edge, label %if.end17

lor.lhs.false.if.then53_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.end17:                                         ; preds = %lor.lhs.false
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 8
  %add.ptr19 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %36 = or i32 %35, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %36) #8, !srcloc !316
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 8
  %add.ptr21 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %40 = or i32 %39, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %40) #8, !srcloc !316
  br label %for.body25

for.body25:                                       ; preds = %msdc_set_data_delay.exit132.for.body25_crit_edge, %if.end17
  %fall_delay.0156 = phi i32 [ 0, %if.end17 ], [ %fall_delay.1, %msdc_set_data_delay.exit132.for.body25_crit_edge ]
  %i.1154 = phi i32 [ 0, %if.end17 ], [ %inc33, %msdc_set_data_delay.exit132.for.body25_crit_edge ]
  %41 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i121 = icmp eq ptr %42, null
  br i1 %tobool.not.i121, label %if.else.i131, label %if.then.i124

if.then.i124:                                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %42) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %44 = and i32 %43, 2146500607
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #8
  %shl.i.i122 = shl i32 %i.1154, 7
  %or.i.i123 = or i32 %45, %shl.i.i122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i123) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %42, i32 %46) #8, !srcloc !316
  br label %msdc_set_data_delay.exit132

if.else.i131:                                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i126 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %pad_tune_reg.i126 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pad_tune_reg.i126, align 4
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 8
  %add.ptr2.i128 = getelementptr i8, ptr %52, i32 %50
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i128) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %54 = and i32 %53, -2031617
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  %shl.i8.i129 = shl i32 %i.1154, 8
  %or.i9.i130 = or i32 %55, %shl.i8.i129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i130) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i128, i32 %56) #8, !srcloc !316
  br label %msdc_set_data_delay.exit132

msdc_set_data_delay.exit132:                      ; preds = %if.else.i131, %if.then.i124
  %call26 = tail call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  %shl29 = shl nuw i32 1, %i.1154
  %or30 = select i1 %tobool27.not, i32 %shl29, i32 0
  %fall_delay.1 = or i32 %or30, %fall_delay.0156
  %inc33 = add nuw nsw i32 %i.1154, 1
  %exitcond157.not = icmp eq i32 %inc33, 32
  br i1 %exitcond157.not, label %skip_fall, label %msdc_set_data_delay.exit132.for.body25_crit_edge

msdc_set_data_delay.exit132.for.body25_crit_edge: ; preds = %msdc_set_data_delay.exit132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

skip_fall:                                        ; preds = %msdc_set_data_delay.exit132
  %call36 = tail call fastcc i32 @get_best_delay(ptr noundef %private.i, i32 noundef %fall_delay.1)
  %final_fall_delay.sroa.0.0.extract.shift115 = lshr i32 %call36, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %final_rise_delay.sroa.0.0.extract.shift113, i32 %final_fall_delay.sroa.0.0.extract.shift115)
  %cmp51.not = icmp ult i32 %final_rise_delay.sroa.0.0.extract.shift113, %final_fall_delay.sroa.0.0.extract.shift115
  br i1 %cmp51.not, label %if.else, label %skip_fall.if.then53_crit_edge

skip_fall.if.then53_crit_edge:                    ; preds = %skip_fall
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

if.then53:                                        ; preds = %skip_fall.if.then53_crit_edge, %lor.lhs.false.if.then53_crit_edge, %for.end.if.then53_crit_edge
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 8
  %add.ptr55 = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %60 = and i32 %59, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %60) #8, !srcloc !316
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 8
  %add.ptr57 = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %64 = and i32 %63, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %64) #8, !srcloc !316
  br label %if.end63

if.else:                                          ; preds = %skip_fall
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 8
  %add.ptr59 = getelementptr i8, ptr %66, i32 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %68 = or i32 %67, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %68) #8, !srcloc !316
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 8
  %add.ptr61 = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %72 = or i32 %71, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %72) #8, !srcloc !316
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then53
  %final_delay.0.in = phi i32 [ %call6, %if.then53 ], [ %call36, %if.else ]
  %final_delay.0 = lshr i32 %final_delay.0.in, 8
  %conv64 = and i32 %final_delay.0, 255
  %73 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i138 = icmp eq ptr %74, null
  br i1 %tobool.not.i138, label %if.else.i148, label %if.then.i141

if.then.i141:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %74) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %76 = and i32 %75, 2146500607
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  %shl.i.i139 = shl nuw nsw i32 %conv64, 7
  %or.i.i140 = or i32 %77, %shl.i.i139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i.i140) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %74, i32 %78) #8, !srcloc !316
  br label %msdc_set_data_delay.exit149

if.else.i148:                                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i143 = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %pad_tune_reg.i143 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pad_tune_reg.i143, align 4
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 8
  %add.ptr2.i145 = getelementptr i8, ptr %84, i32 %82
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i145) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %86 = and i32 %85, -2031617
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #8
  %shl.i8.i146 = shl nuw nsw i32 %conv64, 8
  %or.i9.i147 = or i32 %87, %shl.i8.i146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %88 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i147) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i145, i32 %88) #8, !srcloc !316
  br label %msdc_set_data_delay.exit149

msdc_set_data_delay.exit149:                      ; preds = %if.else.i148, %if.then.i141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_tune_data.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_tune_data, %if.then70)) #8
          to label %do.end [label %if.then70], !srcloc !336

if.then70:                                        ; preds = %msdc_set_data_delay.exit149
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %private.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_tune_data.__UNIQUE_ID_ddebug327, ptr noundef %90, ptr noundef nonnull @.str.91, i32 noundef %conv64) #8
  br label %do.end

do.end:                                           ; preds = %if.then70, %msdc_set_data_delay.exit149
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %conv64)
  %cmp74 = icmp eq i32 %conv64, 255
  %cond76 = select i1 %cmp74, i32 -5, i32 0
  ret i32 %cond76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_best_delay(ptr nocapture noundef readonly %host, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %cmp = icmp eq i32 %delay, 0
  br i1 %cmp, label %do.end, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef 0) #11
  br label %cleanup

while.cond:                                       ; preds = %get_delay_len.exit.while.cond_crit_edge, %entry.while.cond_crit_edge
  %start.0 = phi i32 [ %add, %get_delay_len.exit.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %start_final.0 = phi i32 [ %spec.select, %get_delay_len.exit.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  %len_final.0 = phi i32 [ %2, %get_delay_len.exit.while.cond_crit_edge ], [ 0, %entry.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %start.0)
  %cmp2 = icmp slt i32 %start.0, 32
  br i1 %cmp2, label %for.body.preheader.i, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.body.preheader.i:                             ; preds = %while.cond
  %sub.i = sub i32 32, %start.0
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %add.i = add i32 %i.09.i, %start.0
  %rem.i.i = and i32 %add.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %and.i.i = and i32 %shl.i.i, %delay
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i, label %for.body.i.get_delay_len.exit_crit_edge, label %for.inc.i

for.body.i.get_delay_len.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_delay_len.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.inc.i.get_delay_len.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.get_delay_len.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_delay_len.exit

get_delay_len.exit:                               ; preds = %for.inc.i.get_delay_len.exit_crit_edge, %for.body.i.get_delay_len.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %for.inc.i.get_delay_len.exit_crit_edge ], [ %i.09.i, %for.body.i.get_delay_len.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len_final.0, i32 %retval.0.i)
  %cmp3 = icmp slt i32 %len_final.0, %retval.0.i
  %spec.select = select i1 %cmp3, i32 %start.0, i32 %start_final.0
  %2 = tail call i32 @llvm.smax.i32(i32 %len_final.0, i32 %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %cond = select i1 %tobool.not, i32 1, i32 %retval.0.i
  %add = add i32 %cond, %start.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %retval.0.i)
  %cmp6 = icmp sgt i32 %retval.0.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select)
  %cmp7 = icmp slt i32 %spec.select, 4
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond, label %get_delay_len.exit.while.end_crit_edge, label %get_delay_len.exit.while.cond_crit_edge

get_delay_len.exit.while.cond_crit_edge:          ; preds = %get_delay_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

get_delay_len.exit.while.end_crit_edge:           ; preds = %get_delay_len.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %get_delay_len.exit.while.end_crit_edge, %while.cond.while.end_crit_edge
  %start_final.2 = phi i32 [ %start_final.0, %while.cond.while.end_crit_edge ], [ %spec.select, %get_delay_len.exit.while.end_crit_edge ]
  %len_final.2 = phi i32 [ %len_final.0, %while.cond.while.end_crit_edge ], [ %2, %get_delay_len.exit.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_final.2)
  %cmp10 = icmp eq i32 %start_final.2, 0
  %div = sdiv i32 %len_final.2, 3
  %div13 = sdiv i32 %len_final.2, 2
  %add14 = add i32 %div13, %start_final.2
  %final_phase.0.in.in = select i1 %cmp10, i32 %div, i32 %add14
  %final_phase.0.in = srem i32 %final_phase.0.in.in, 32
  %3 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %host, align 8
  %conv22 = and i32 %final_phase.0.in, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.83, i32 noundef %delay, i32 noundef %len_final.2, i32 noundef %conv22) #11
  %phi.cast = shl i32 %start_final.2, 8
  %phi.bo = and i32 %phi.cast, 65280
  %5 = or i32 %conv22, %phi.bo
  %6 = shl i32 %len_final.2, 24
  %7 = shl nuw nsw i32 %5, 8
  %phi.bo55 = or i32 %7, %6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.sroa.0.0.insert.insert = phi i32 [ %phi.bo55, %while.end ], [ 65280, %do.end ]
  ret i32 %retval.sroa.0.0.insert.insert
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_get_ext_csd(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msdc_data_xfer_done(ptr noundef %host, i32 noundef %events, ptr noundef %mrq, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %events, 970752
  %lock = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %data5 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data5, align 8
  %tobool.not = icmp eq ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %2 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %data5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  br i1 %tobool.not, label %if.end.thread.cleanup_crit_edge, label %if.end11.thread

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11.thread:                                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  %stop1218 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 8
  %3 = ptrtoint ptr %stop1218 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stop1218, align 4
  br label %do.body17

lor.lhs.false:                                    ; preds = %if.end
  %stop12 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %stop12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop12, align 4
  %tobool14.not = icmp eq ptr %6, null
  br i1 %tobool14.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %error = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.do.body17_crit_edge

land.lhs.true.do.body17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body17:                                        ; preds = %land.lhs.true.do.body17_crit_edge, %if.end11.thread
  %9 = phi ptr [ %4, %if.end11.thread ], [ %6, %land.lhs.true.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_data_xfer_done, %if.then25)) #8
          to label %do.end31 [label %if.then25], !srcloc !336

if.then25:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 8
  %base = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 156
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !387
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_data_xfer_done.__UNIQUE_ID_ddebug310, ptr noundef %11, ptr noundef nonnull @.str.112, i32 noundef %15) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then25, %do.body17
  %base32 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 8
  %16 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base32, align 8
  %add.ptr33 = getelementptr i8, ptr %17, i32 152
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %19 = or i32 %18, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %19) #8, !srcloc !316
  %call34 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call34, 20000000
  %20 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base32, align 8
  %add.ptr3926 = getelementptr i8, ptr %21, i32 156
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3926) #8, !srcloc !311
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  %and4327 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4327)
  %tobool44.not28 = icmp eq i32 %and4327, 0
  br i1 %tobool44.not28, label %do.end31.for.end_crit_edge, label %do.end31.land.lhs.true48_crit_edge

do.end31.land.lhs.true48_crit_edge:               ; preds = %do.end31
  br label %land.lhs.true48

do.end31.for.end_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true48:                                  ; preds = %cond.false.land.lhs.true48_crit_edge, %do.end31.land.lhs.true48_crit_edge
  %call49 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call49, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call49, %add.i
  br i1 %cmp3.i, label %if.then53, label %cond.false

if.then53:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base32, align 8
  %add.ptr57 = getelementptr i8, ptr %25, i32 156
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #8, !srcloc !311
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !389
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #8
  %29 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base32, align 8
  %add.ptr39 = getelementptr i8, ptr %30, i32 156
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8, !srcloc !311
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !388
  %and43 = and i32 %32, 1
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true48_crit_edge

cond.false.land.lhs.true48_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true48

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then53, %do.end31.for.end_crit_edge
  %val.0 = phi i32 [ %27, %if.then53 ], [ %23, %do.end31.for.end_crit_edge ], [ %32, %cond.false.for.end_crit_edge ]
  %and71 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end94, label %do.body77

do.body77:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_data_xfer_done, %if.then89)) #8
          to label %cleanup [label %if.then89], !srcloc !336

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_data_xfer_done.__UNIQUE_ID_ddebug311, ptr noundef %34, ptr noundef nonnull @.str.113) #8
  br label %cleanup

if.end94:                                         ; preds = %for.end
  %35 = ptrtoint ptr %base32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base32, align 8
  %add.ptr96 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %38 = and i32 %37, -13635073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %38) #8, !srcloc !316
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_data_xfer_done, %if.then109)) #8
          to label %do.end113 [label %if.then109], !srcloc !336

if.then109:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_data_xfer_done.__UNIQUE_ID_ddebug312, ptr noundef %40, ptr noundef nonnull @.str.114) #8
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %if.end94
  %and114 = and i32 %events, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.end113.do.body123_crit_edge, label %land.lhs.true116

do.end113.do.body123_crit_edge:                   ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123

land.lhs.true116:                                 ; preds = %do.end113
  %tobool117.not = icmp eq ptr %9, null
  br i1 %tobool117.not, label %land.lhs.true116.if.then121_crit_edge, label %lor.lhs.false118

land.lhs.true116.if.then121_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121

lor.lhs.false118:                                 ; preds = %land.lhs.true116
  %error119 = getelementptr inbounds %struct.mmc_command, ptr %9, i32 0, i32 5
  %41 = ptrtoint ptr %error119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool120.not = icmp eq i32 %42, 0
  br i1 %tobool120.not, label %lor.lhs.false118.if.then121_crit_edge, label %lor.lhs.false118.do.body123_crit_edge

lor.lhs.false118.do.body123_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123

lor.lhs.false118.if.then121_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then121

if.then121:                                       ; preds = %lor.lhs.false118.if.then121_crit_edge, %land.lhs.true116.if.then121_crit_edge
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %43 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %45 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blksz, align 4
  %mul122 = mul i32 %46, %44
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %47 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul122, ptr %bytes_xfered, align 4
  br label %if.end190

do.body123:                                       ; preds = %lor.lhs.false118.do.body123_crit_edge, %do.end113.do.body123_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_data_xfer_done, %if.then135)) #8
          to label %do.end139 [label %if.then135], !srcloc !336

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %host, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_data_xfer_done.__UNIQUE_ID_ddebug313, ptr noundef %49, ptr noundef nonnull @.str.115, i32 noundef %events) #8
  br label %do.end139

do.end139:                                        ; preds = %if.then135, %do.body123
  tail call fastcc void @msdc_reset_hw(ptr noundef %host)
  %error140 = getelementptr inbounds %struct.msdc_host, ptr %host, i32 0, i32 7
  %50 = ptrtoint ptr %error140 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %error140, align 4
  %or = or i32 %51, 4
  store i32 %or, ptr %error140, align 4
  %bytes_xfered141 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %52 = ptrtoint ptr %bytes_xfered141 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %bytes_xfered141, align 4
  %and142 = and i32 %events, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.else146, label %do.end139.do.body153.sink.split_crit_edge

do.end139.do.body153.sink.split_crit_edge:        ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body153.sink.split

if.else146:                                       ; preds = %do.end139
  %and147 = and i32 %events, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.else146.do.body153_crit_edge, label %if.else146.do.body153.sink.split_crit_edge

if.else146.do.body153.sink.split_crit_edge:       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body153.sink.split

if.else146.do.body153_crit_edge:                  ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body153

do.body153.sink.split:                            ; preds = %if.else146.do.body153.sink.split_crit_edge, %do.end139.do.body153.sink.split_crit_edge
  %.sink = phi i32 [ -110, %do.end139.do.body153.sink.split_crit_edge ], [ -84, %if.else146.do.body153.sink.split_crit_edge ]
  %error145 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %53 = ptrtoint ptr %error145 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %error145, align 4
  br label %do.body153

do.body153:                                       ; preds = %do.body153.sink.split, %if.else146.do.body153_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_data_xfer_done, %if.then165)) #8
          to label %do.body171 [label %if.then165], !srcloc !336

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %host, align 8
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cmd, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %blocks167 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %60 = ptrtoint ptr %blocks167 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blocks167, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_data_xfer_done.__UNIQUE_ID_ddebug314, ptr noundef %55, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.111, i32 noundef %59, i32 noundef %61) #8
  br label %do.body171

do.body171:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msdc_data_xfer_done, %if.then183)) #8
          to label %if.end190 [label %if.then183], !srcloc !336

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %host, align 8
  %error185 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %64 = ptrtoint ptr %error185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %error185, align 4
  %66 = ptrtoint ptr %bytes_xfered141 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bytes_xfered141, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msdc_data_xfer_done.__UNIQUE_ID_ddebug315, ptr noundef %63, ptr noundef nonnull @.str.117, i32 noundef %65, i32 noundef %67) #8
  br label %if.end190

if.end190:                                        ; preds = %if.then183, %do.body171, %if.then121
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %68 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %71, label %if.end190.if.else.i_crit_edge [
    i32 25, label %if.end190.land.lhs.true.i_crit_edge
    i32 18, label %if.end190.land.lhs.true.i_crit_edge29
  ]

if.end190.land.lhs.true.i_crit_edge29:            ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end190.land.lhs.true.i_crit_edge:              ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

if.end190.if.else.i_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end190.land.lhs.true.i_crit_edge, %if.end190.land.lhs.true.i_crit_edge29
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %73 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool3.not.i = icmp eq i32 %76, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %land.lhs.true1.i.if.else.i_crit_edge

land.lhs.true1.i.if.else.i_crit_edge:             ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true1.i
  %77 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mrq, align 4
  %tobool5.not.i = icmp eq ptr %78, null
  br i1 %tobool5.not.i, label %if.then.i, label %land.lhs.true4.i.if.else.i_crit_edge

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_start_command(ptr noundef %host, ptr noundef %mrq, ptr noundef nonnull %74) #8
  br label %cleanup

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true1.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end190.if.else.i_crit_edge
  tail call fastcc void @msdc_request_done(ptr noundef %host, ptr noundef %mrq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.then89, %do.body77, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_cqe_enable(ptr nocapture noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !390
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #8, !srcloc !316
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 180
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %5 = or i32 %4, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #8, !srcloc !316
  %actual_clock.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 0, i32 58
  %6 = ptrtoint ptr %actual_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_clock.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 0
  br i1 %cmp.i.i, label %entry.msdc_set_busy_timeout.exit_crit_edge, label %if.end183.i.i

entry.msdc_set_busy_timeout.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %msdc_set_busy_timeout.exit

if.end183.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div177.i.i = udiv i32 1000000000, %7
  %conv178.i.i = zext i32 %div177.i.i to i64
  %sub186.i.i = add nuw nsw i64 %conv178.i.i, 19999999999
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div177.i.i, i64 %sub186.i.i) #12, !srcloc !381
  %asmresult1.i626.i.i = extractvalue { i64, i64 } %8, 1
  %phi.bo = add i64 %asmresult1.i626.i.i, 1048575
  %phi.bo6 = lshr i64 %phi.bo, 20
  %dev_comp.i.i = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev_comp.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_comp.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp414.i.i = icmp eq i8 %12, 8
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %..i.i = select i1 %cmp414.i.i, i32 9, i32 13
  %16 = lshr i32 %15, %..i.i
  %mode.0.i.i = and i32 %16, 1
  %17 = zext i32 %mode.0.i.i to i64
  %spec.select677.i.i = shl nuw nsw i64 %phi.bo6, %17
  %18 = tail call i64 @llvm.usub.sat.i64(i64 %spec.select677.i.i, i64 1) #8
  %19 = tail call i64 @llvm.umin.i64(i64 %18, i64 8191) #8
  %20 = trunc i64 %19 to i32
  %phi.bo.i = shl nuw nsw i32 %20, 2
  br label %msdc_set_busy_timeout.exit

msdc_set_busy_timeout.exit:                       ; preds = %if.end183.i.i, %entry.msdc_set_busy_timeout.exit_crit_edge
  %21 = phi i32 [ %phi.bo.i, %if.end183.i.i ], [ 0, %entry.msdc_set_busy_timeout.exit_crit_edge ]
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %25 = and i32 %24, 58785791
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  %or.i.i = or i32 %26, %21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #8, !srcloc !316
  tail call fastcc void @msdc_set_timeout(ptr noundef %private.i, i64 noundef 1000000000, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_cqe_disable(ptr nocapture noundef readonly %mmc, i1 noundef zeroext %recovery) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %3 = and i32 %2, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !316
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 180
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  %7 = and i32 %6, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #8, !srcloc !316
  br i1 %recovery, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 152
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  %11 = or i32 %10, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %11) #8, !srcloc !316
  %call5 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call5, 3000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 2420) #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 8
  %add.ptr1586 = getelementptr i8, ptr %13, i32 156
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1586) #8, !srcloc !311
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  %and87 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool18.not88 = icmp eq i32 %and87, 0
  br i1 %tobool18.not88, label %if.then.for.end_crit_edge, label %if.then.land.lhs.true_crit_edge

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  br label %land.lhs.true

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %if.then35.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %call22 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %if.then25, label %if.then35

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 8
  %add.ptr29 = getelementptr i8, ptr %17, i32 156
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !311
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !392
  br label %for.end

if.then35:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 8
  %add.ptr15 = getelementptr i8, ptr %21, i32 156
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !311
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !391
  %and = and i32 %23, 1
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then35.for.end_crit_edge, label %if.then35.land.lhs.true_crit_edge

if.then35.land.lhs.true_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then35.for.end_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.then35.for.end_crit_edge, %if.then25, %if.then.for.end_crit_edge
  %val.0 = phi i32 [ %19, %if.then25 ], [ %15, %if.then.for.end_crit_edge ], [ %23, %if.then35.for.end_crit_edge ]
  %and38 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end69, label %do.end53, !prof !344

do.end53:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2420, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_reset_hw(ptr noundef %private.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %do.end53, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_cqe_pre_enable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !344

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 8) #8
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %or = or i32 %retval.0.i, 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i3 = icmp eq ptr %13, null
  br i1 %tobool.not.i3, label %if.else.i7, label %if.then.i4, !prof !344

if.then.i4:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %1, i32 noundef %or, i32 noundef 8) #8
  br label %cqhci_writel.exit

if.else.i7:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %mmio.i5 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %14) #8, !srcloc !316
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i7, %if.then.i4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msdc_cqe_post_disable(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 63
  %0 = ptrtoint ptr %cqe_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !344

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %5(ptr noundef %1, i32 noundef 8) #8
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !311
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %and = and i32 %retval.0.i, -2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i3 = icmp eq ptr %13, null
  br i1 %tobool.not.i3, label %if.else.i7, label %if.then.i4, !prof !344

if.then.i4:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %1, i32 noundef %and, i32 noundef 8) #8
  br label %cqhci_writel.exit

if.else.i7:                                       ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %mmio.i5 = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %mmio.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %14) #8, !srcloc !316
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i7, %if.then.i4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps2, align 4
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @cqhci_deactivate(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pad_tune_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad_tune_reg.i, align 4
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !311
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !393
  %save_para.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 3, i32 1
  %10 = ptrtoint ptr %save_para.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %save_para.i, align 4
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !311
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !394
  %iocon.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 4
  %15 = ptrtoint ptr %iocon.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %iocon.i, align 4
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 8
  %add.ptr13.i = getelementptr i8, ptr %17, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #8, !srcloc !311
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !395
  %sdc_cfg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5
  %20 = ptrtoint ptr %sdc_cfg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sdc_cfg.i, align 4
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 8
  %add.ptr21.i = getelementptr i8, ptr %22, i32 176
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #8, !srcloc !311
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !396
  %patch_bit0.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %patch_bit0.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %patch_bit0.i, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %27, i32 180
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #8, !srcloc !311
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !397
  %patch_bit1.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 2
  %30 = ptrtoint ptr %patch_bit1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %patch_bit1.i, align 4
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 8
  %add.ptr37.i = getelementptr i8, ptr %32, i32 184
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !311
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !398
  %patch_bit2.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 3
  %35 = ptrtoint ptr %patch_bit2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %patch_bit2.i, align 4
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %37, i32 392
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #8, !srcloc !311
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !399
  %pad_ds_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 6
  %40 = ptrtoint ptr %pad_ds_tune.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %pad_ds_tune.i, align 4
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 8
  %add.ptr53.i = getelementptr i8, ptr %42, i32 396
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i) #8, !srcloc !311
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !400
  %pad_cmd_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 7
  %45 = ptrtoint ptr %pad_cmd_tune.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %pad_cmd_tune.i, align 4
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 8
  %add.ptr61.i = getelementptr i8, ptr %47, i32 520
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #8, !srcloc !311
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !401
  %emmc50_cfg0.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11
  %50 = ptrtoint ptr %emmc50_cfg0.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %emmc50_cfg0.i, align 4
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 8
  %add.ptr69.i = getelementptr i8, ptr %52, i32 544
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #8, !srcloc !311
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !402
  %emmc50_cfg3.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 0, i32 1
  %55 = ptrtoint ptr %emmc50_cfg3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %emmc50_cfg3.i, align 4
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr77.i = getelementptr i8, ptr %57, i32 552
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77.i) #8, !srcloc !311
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !403
  %sdc_fifo_cfg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 1
  %60 = ptrtoint ptr %sdc_fifo_cfg.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %sdc_fifo_cfg.i, align 4
  %top_base.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %61 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %62) #8, !srcloc !311
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !404
  %emmc_top_control.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 1, i32 1
  %65 = ptrtoint ptr %emmc_top_control.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %emmc_top_control.i, align 4
  %66 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %top_base.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #8, !srcloc !311
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !405
  %emmc_top_cmd.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 2
  %70 = ptrtoint ptr %emmc_top_cmd.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %emmc_top_cmd.i, align 4
  %71 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %top_base.i, align 4
  %add.ptr101.i = getelementptr i8, ptr %72, i32 12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #8, !srcloc !311
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !406
  %emmc50_pad_ds_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 2, i32 1
  %75 = ptrtoint ptr %emmc50_pad_ds_tune.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %emmc50_pad_ds_tune.i, align 4
  br label %msdc_save_reg.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 8
  %add.ptr109.i = getelementptr i8, ptr %77, i32 %5
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109.i) #8, !srcloc !311
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !407
  %pad_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 1
  %80 = ptrtoint ptr %pad_tune.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %pad_tune.i, align 4
  br label %msdc_save_reg.exit

msdc_save_reg.exit:                               ; preds = %if.else.i, %if.then.i
  tail call fastcc void @msdc_gate_clock(ptr noundef %private.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msdc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %call2 = tail call fastcc i32 @msdc_ungate_clock(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_comp.i = getelementptr inbounds %struct.msdc_host, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_comp.i, align 4
  %pad_tune_reg.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pad_tune_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pad_tune_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !408
  tail call void @arm_heavy_mb() #8
  %save_para.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 3, i32 1
  %6 = ptrtoint ptr %save_para.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %save_para.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %base.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !409
  tail call void @arm_heavy_mb() #8
  %iocon.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 4
  %11 = ptrtoint ptr %iocon.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iocon.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %13) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !410
  tail call void @arm_heavy_mb() #8
  %sdc_cfg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5
  %16 = ptrtoint ptr %sdc_cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sdc_cfg.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %18) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !411
  tail call void @arm_heavy_mb() #8
  %patch_bit0.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 1, i32 1
  %21 = ptrtoint ptr %patch_bit0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %patch_bit0.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %25, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %23) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !412
  tail call void @arm_heavy_mb() #8
  %patch_bit1.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 2
  %26 = ptrtoint ptr %patch_bit1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %patch_bit1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %30, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %28) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !413
  tail call void @arm_heavy_mb() #8
  %patch_bit2.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 3
  %31 = ptrtoint ptr %patch_bit2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %patch_bit2.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #8
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 8
  %add.ptr30.i = getelementptr i8, ptr %35, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %33) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !414
  tail call void @arm_heavy_mb() #8
  %pad_ds_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 6
  %36 = ptrtoint ptr %pad_ds_tune.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pad_ds_tune.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %40, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %38) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !415
  tail call void @arm_heavy_mb() #8
  %pad_cmd_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 7
  %41 = ptrtoint ptr %pad_cmd_tune.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pad_cmd_tune.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 8
  %add.ptr42.i = getelementptr i8, ptr %45, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %43) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !416
  tail call void @arm_heavy_mb() #8
  %emmc50_cfg0.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11
  %46 = ptrtoint ptr %emmc50_cfg0.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %emmc50_cfg0.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 8
  %add.ptr48.i = getelementptr i8, ptr %50, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %48) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !417
  tail call void @arm_heavy_mb() #8
  %emmc50_cfg3.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 0, i32 1
  %51 = ptrtoint ptr %emmc50_cfg3.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %emmc50_cfg3.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #8
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 8
  %add.ptr54.i = getelementptr i8, ptr %55, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %53) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !418
  tail call void @arm_heavy_mb() #8
  %sdc_fifo_cfg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 1
  %56 = ptrtoint ptr %sdc_fifo_cfg.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sdc_fifo_cfg.i, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  %add.ptr60.i = getelementptr i8, ptr %60, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %58) #8, !srcloc !316
  %top_base.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %61 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %top_base.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body79.i, label %do.body61.i

do.body61.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %emmc_top_control.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 1, i32 1
  %63 = ptrtoint ptr %emmc_top_control.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %emmc_top_control.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  %66 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %top_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !419
  tail call void @arm_heavy_mb() #8
  %emmc_top_cmd.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 2
  %68 = ptrtoint ptr %emmc_top_cmd.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %emmc_top_cmd.i, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  %71 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %top_base.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %70) #8, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !420
  tail call void @arm_heavy_mb() #8
  %emmc50_pad_ds_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 11, i32 2, i32 1
  %73 = ptrtoint ptr %emmc50_pad_ds_tune.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %emmc50_pad_ds_tune.i, align 4
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #8
  %76 = ptrtoint ptr %top_base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %top_base.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %77, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %75) #8, !srcloc !316
  br label %if.end.i

do.body79.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pad_tune.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 5, i32 1
  %78 = ptrtoint ptr %pad_tune.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pad_tune.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 8
  %add.ptr84.i = getelementptr i8, ptr %82, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %80) #8, !srcloc !316
  br label %if.end.i

if.end.i:                                         ; preds = %do.body79.i, %do.body61.i
  %sdio_irqs.i.i = getelementptr %struct.mmc_host, ptr %1, i32 0, i32 46
  %83 = ptrtoint ptr %sdio_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sdio_irqs.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i.not.i = icmp eq i32 %84, 0
  br i1 %cmp.i.not.i, label %if.end.i.cleanup_crit_edge, label %if.then86.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86.i:                                      ; preds = %if.end.i
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %86, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  %88 = or i32 %87, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %88) #8, !srcloc !316
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %90, i32 48
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #8, !srcloc !311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  %92 = or i32 %91, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %92) #8, !srcloc !316
  %93 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_comp.i, align 4
  %recheck_sdio_irq.i.i = getelementptr inbounds %struct.mtk_mmc_compatible, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %recheck_sdio_irq.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %recheck_sdio_irq.i.i, align 1, !range !307
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool3.not.i.i = icmp eq i8 %96, 0
  br i1 %tobool3.not.i.i, label %if.then86.i.cleanup_crit_edge, label %if.then4.i.i

if.then86.i.cleanup_crit_edge:                    ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4.i.i:                                     ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msdc_recheck_sdio_irq(ptr noundef %private.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i.i, %if.then86.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144, !145, !146, !147, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !249, !250, !251, !252, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @__initcall__kmod_mtk_sd__331_2901_mt_msdc_driver_init6, !1, !"__initcall__kmod_mtk_sd__331_2901_mt_msdc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2901, i32 1}
!2 = !{ptr @__exitcall_mt_msdc_driver_exit, !1, !"__exitcall_mt_msdc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file332, !4, !"__UNIQUE_ID_file332", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2902, i32 1}
!5 = !{ptr @__UNIQUE_ID_license333, !4, !"__UNIQUE_ID_license333", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description334, !7, !"__UNIQUE_ID_description334", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2903, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2894, i32 11}
!10 = !{ptr @mt_msdc_driver, !11, !"mt_msdc_driver", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2890, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2565, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @msdc_drv_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @msdc_drv_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2601, i32 9}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2616, i32 3}
!24 = !{ptr @msdc_drv_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @msdc_drv_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2620, i32 59}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2623, i32 3}
!30 = !{ptr @msdc_drv_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @msdc_drv_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2627, i32 55}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2630, i32 3}
!36 = !{ptr @msdc_drv_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @msdc_drv_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @msdc_drv_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2689, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @msdc_drv_probe.__key.19, !39, !"__key", i1 false, i1 false}
!42 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @msdc_drv_probe.__key.21, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2690, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2695, i32 3}
!48 = !{ptr @msdc_drv_probe._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @msdc_drv_probe._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2507, i32 43}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2511, i32 41}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2515, i32 52}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2520, i32 55}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2537, i32 55}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2544, i32 26}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2545, i32 26}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2546, i32 26}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2550, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @msdc_of_clock_parse._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @msdc_of_clock_parse._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2474, i32 42}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2477, i32 42}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2480, i32 42}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2483, i32 42}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2486, i32 42}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2490, i32 7}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2496, i32 7}
!85 = !{ptr @mt_msdc_ops, !86, !"mt_msdc_ops", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2446, i32 34}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1268, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @msdc_start_command._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @msdc_start_command._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1233, i32 3}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @msdc_cmd_is_ready._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @msdc_cmd_is_ready._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1244, i32 4}
!99 = !{ptr @msdc_cmd_is_ready._entry.47, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @msdc_cmd_is_ready._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1210, i32 3}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @msdc_cmd_done.__UNIQUE_ID_ddebug309, !102, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1083, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @msdc_auto_cmd_done._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @msdc_auto_cmd_done._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1119, i32 3}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @msdc_track_cmd_data.__UNIQUE_ID_ddebug308, !112, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1060, i32 2}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @msdc_start_data.__UNIQUE_ID_ddebug306, !116, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1061, i32 2}
!121 = !{ptr @msdc_start_data.__UNIQUE_ID_ddebug307, !120, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1837, i32 5}
!124 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @msdc_ops_set_ios._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @msdc_ops_set_ios._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1846, i32 5}
!129 = !{ptr @msdc_ops_set_ios._entry.62, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @msdc_ops_set_ios._entry_ptr.64, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1443, i32 2}
!133 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @msdc_set_buswidth.__UNIQUE_ID_ddebug316, !132, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/mtk-sd.c", i32 847, i32 3}
!137 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @msdc_set_mclk.__UNIQUE_ID_ddebug304, !136, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/mtk-sd.c", i32 960, i32 2}
!141 = !{ptr @msdc_set_mclk.__UNIQUE_ID_ddebug305, !140, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1454, i32 4}
!144 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @msdc_ops_switch_volt._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @msdc_ops_switch_volt._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1460, i32 4}
!149 = !{ptr @msdc_ops_switch_volt.__UNIQUE_ID_ddebug317, !148, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2227, i32 3}
!152 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @msdc_execute_tuning._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @msdc_execute_tuning._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2233, i32 4}
!157 = !{ptr @msdc_execute_tuning._entry.75, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @msdc_execute_tuning._entry_ptr.77, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2202, i32 2}
!161 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @msdc_tune_together.__UNIQUE_ID_ddebug330, !160, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1893, i32 3}
!165 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @get_best_delay._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @get_best_delay._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1914, i32 2}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @get_best_delay._entry.82, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @get_best_delay._entry_ptr.85, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2087, i32 2}
!175 = !{ptr @.str.87, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @hs400_tune_response.__UNIQUE_ID_ddebug324, !174, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2032, i32 2}
!179 = !{ptr @.str.89, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @msdc_tune_response.__UNIQUE_ID_ddebug322, !178, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!181 = !{ptr @msdc_tune_response.__UNIQUE_ID_ddebug323, !182, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2037, i32 2}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2138, i32 2}
!185 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @msdc_tune_data.__UNIQUE_ID_ddebug327, !184, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!187 = !{ptr @.str.92, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2306, i32 3}
!189 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @msdc_execute_hs400_tuning._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @msdc_execute_hs400_tuning._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2321, i32 2}
!194 = !{ptr @msdc_execute_hs400_tuning._entry.94, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @msdc_execute_hs400_tuning._entry_ptr.96, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.98, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2326, i32 2}
!198 = !{ptr @msdc_execute_hs400_tuning._entry.97, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @msdc_execute_hs400_tuning._entry_ptr.99, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.100, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1489, i32 2}
!202 = !{ptr @.str.101, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @msdc_request_timeout._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @msdc_request_timeout._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.103, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1491, i32 3}
!207 = !{ptr @msdc_request_timeout._entry.102, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @msdc_request_timeout._entry_ptr.104, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1494, i32 4}
!211 = !{ptr @msdc_request_timeout._entry.105, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @msdc_request_timeout._entry_ptr.107, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.109, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1499, i32 4}
!215 = !{ptr @msdc_request_timeout._entry.108, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @msdc_request_timeout._entry_ptr.110, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.111, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1383, i32 3}
!219 = !{ptr @.str.112, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug310, !218, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1391, i32 4}
!223 = !{ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug311, !222, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1396, i32 3}
!226 = !{ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug312, !225, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1401, i32 4}
!229 = !{ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug313, !228, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1411, i32 4}
!232 = !{ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug314, !231, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!233 = !{ptr @.str.117, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1413, i32 4}
!235 = !{ptr @msdc_data_xfer_done.__UNIQUE_ID_ddebug315, !234, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!236 = !{ptr @.str.118, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mmc/host/mtk-sd.c", i32 828, i32 3}
!238 = !{ptr @.str.119, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @msdc_ungate_clock._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @msdc_ungate_clock._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1769, i32 2}
!243 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @msdc_init_hw.__UNIQUE_ID_ddebug319, !242, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!245 = !{ptr @msdc_cmdq_ops, !246, !"msdc_cmdq_ops", i1 false, i1 false}
!246 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2464, i32 36}
!247 = !{ptr @.str.122, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1610, i32 4}
!249 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @msdc_irq._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @msdc_irq._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.124, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1617, i32 3}
!254 = !{ptr @msdc_irq.__UNIQUE_ID_ddebug318, !253, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1543, i32 3}
!257 = !{ptr @.str.126, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @msdc_cmdq_irq._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @msdc_cmdq_irq._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1546, i32 3}
!262 = !{ptr @msdc_cmdq_irq._entry.127, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @msdc_cmdq_irq._entry_ptr.129, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.131, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1551, i32 3}
!266 = !{ptr @msdc_cmdq_irq._entry.130, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @msdc_cmdq_irq._entry_ptr.132, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1554, i32 3}
!270 = !{ptr @msdc_cmdq_irq._entry.133, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @msdc_cmdq_irq._entry_ptr.135, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/mmc/host/mtk-sd.c", i32 1558, i32 3}
!274 = !{ptr @msdc_cmdq_irq._entry.136, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @msdc_cmdq_irq._entry_ptr.138, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @msdc_of_ids, !277, !"msdc_of_ids", i1 false, i1 false}
!277 = !{!"../drivers/mmc/host/mtk-sd.c", i32 589, i32 34}
!278 = !{ptr @mt8135_compat, !279, !"mt8135_compat", i1 false, i1 false}
!279 = !{!"../drivers/mmc/host/mtk-sd.c", i32 474, i32 40}
!280 = !{ptr @mt8173_compat, !281, !"mt8173_compat", i1 false, i1 false}
!281 = !{!"../drivers/mmc/host/mtk-sd.c", i32 487, i32 40}
!282 = !{ptr @mt8183_compat, !283, !"mt8183_compat", i1 false, i1 false}
!283 = !{!"../drivers/mmc/host/mtk-sd.c", i32 500, i32 40}
!284 = !{ptr @mt2701_compat, !285, !"mt2701_compat", i1 false, i1 false}
!285 = !{!"../drivers/mmc/host/mtk-sd.c", i32 513, i32 40}
!286 = !{ptr @mt2712_compat, !287, !"mt2712_compat", i1 false, i1 false}
!287 = !{!"../drivers/mmc/host/mtk-sd.c", i32 526, i32 40}
!288 = !{ptr @mt7622_compat, !289, !"mt7622_compat", i1 false, i1 false}
!289 = !{!"../drivers/mmc/host/mtk-sd.c", i32 539, i32 40}
!290 = !{ptr @mt8516_compat, !291, !"mt8516_compat", i1 false, i1 false}
!291 = !{!"../drivers/mmc/host/mtk-sd.c", i32 552, i32 40}
!292 = !{ptr @mt7620_compat, !293, !"mt7620_compat", i1 false, i1 false}
!293 = !{!"../drivers/mmc/host/mtk-sd.c", i32 563, i32 40}
!294 = !{ptr @mt6779_compat, !295, !"mt6779_compat", i1 false, i1 false}
!295 = !{!"../drivers/mmc/host/mtk-sd.c", i32 576, i32 40}
!296 = !{ptr @msdc_dev_pm_ops, !297, !"msdc_dev_pm_ops", i1 false, i1 false}
!297 = !{!"../drivers/mmc/host/mtk-sd.c", i32 2885, i32 32}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{i8 0, i8 2}
!308 = !{i64 2148422455}
!309 = !{i64 908075, i64 908100, i64 908122, i64 908138, i64 908150, i64 908170, i64 908194, i64 908210, i64 908222}
!310 = !{i64 2148422643}
!311 = !{i64 6339355}
!312 = !{i64 2155668243}
!313 = !{i64 2155668725}
!314 = !{i64 2155633622}
!315 = !{i64 2155633822}
!316 = !{i64 6338937}
!317 = !{i64 2155778650}
!318 = !{i64 2155779310}
!319 = !{i64 2155779529}
!320 = !{i64 2155635204}
!321 = !{i64 2155635440}
!322 = !{i64 2155634413}
!323 = !{i64 2155634613}
!324 = !{i64 2155781542}
!325 = !{i64 2155782321}
!326 = !{i64 2155782803}
!327 = !{i64 2155783922}
!328 = !{i64 2155790006}
!329 = !{i64 2155790497}
!330 = !{i64 2155791004}
!331 = !{i64 2155791511}
!332 = !{i64 2155792018}
!333 = !{i64 2155792525}
!334 = !{i64 2155793027}
!335 = !{i64 2155793529}
!336 = !{i64 2149036413, i64 2149036418, i64 2149036431, i64 2149036475, i64 2149036509, i64 2149036530}
!337 = !{i64 2155771828}
!338 = !{i64 2155772319}
!339 = !{i64 2155772636}
!340 = !{i64 2155773503}
!341 = !{i64 2155796123}
!342 = !{i64 2155796783}
!343 = !{i64 2155797002}
!344 = !{!"branch_weights", i32 2000, i32 1}
!345 = !{i64 2155746201}
!346 = !{i64 2155747130}
!347 = !{i64 2155852759}
!348 = !{i64 2148423036, i64 2148423062, i64 2148423091, i64 2148423125, i64 2148423156, i64 2148423179}
!349 = !{i64 2155754025}
!350 = !{i64 2155837351}
!351 = !{i64 2155837853}
!352 = !{i64 2155838349}
!353 = !{i64 2155838856}
!354 = !{i64 2155839363}
!355 = !{!"auto-init"}
!356 = !{i64 2155847579}
!357 = !{i64 2155848075}
!358 = !{i64 2155712449}
!359 = !{i64 2155712935}
!360 = !{i64 2155717578}
!361 = !{i64 2155718064}
!362 = !{i64 2155721448}
!363 = !{i64 2155722631}
!364 = !{i64 2155686521}
!365 = !{i64 2155725696}
!366 = !{i64 2155726108}
!367 = !{i64 2155637872}
!368 = !{i64 2155640183}
!369 = !{i64 2155641164}
!370 = !{i64 2155641383}
!371 = !{i64 2155696679}
!372 = !{i64 2155705072}
!373 = !{i64 2155705563}
!374 = !{i64 2155706054}
!375 = !{i64 2155706545}
!376 = !{i64 2155707036}
!377 = !{i64 2155650714}
!378 = !{i64 2155699517}
!379 = !{i64 2155700090}
!380 = !{i64 2155700581}
!381 = !{i64 2148269460, i64 2148269740, i64 2148270074, i64 2148270408}
!382 = !{i64 2155671472}
!383 = !{i64 2155676403}
!384 = !{i64 2155678248}
!385 = !{i64 2155679753}
!386 = !{i64 2155680818}
!387 = !{i64 2155730704}
!388 = !{i64 2155732863}
!389 = !{i64 2155733349}
!390 = !{i64 2155859528}
!391 = !{i64 2155863120}
!392 = !{i64 2155863523}
!393 = !{i64 2155878128}
!394 = !{i64 2155878619}
!395 = !{i64 2155879110}
!396 = !{i64 2155879601}
!397 = !{i64 2155880092}
!398 = !{i64 2155880583}
!399 = !{i64 2155881079}
!400 = !{i64 2155881575}
!401 = !{i64 2155882071}
!402 = !{i64 2155882567}
!403 = !{i64 2155883063}
!404 = !{i64 2155883570}
!405 = !{i64 2155884077}
!406 = !{i64 2155884584}
!407 = !{i64 2155885086}
!408 = !{i64 2155885324}
!409 = !{i64 2155885798}
!410 = !{i64 2155886266}
!411 = !{i64 2155886743}
!412 = !{i64 2155887229}
!413 = !{i64 2155887715}
!414 = !{i64 2155888204}
!415 = !{i64 2155888698}
!416 = !{i64 2155889194}
!417 = !{i64 2155889687}
!418 = !{i64 2155890181}
!419 = !{i64 2155891198}
!420 = !{i64 2155891706}
