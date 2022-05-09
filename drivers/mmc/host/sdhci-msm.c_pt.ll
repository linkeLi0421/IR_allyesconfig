; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sdhci-msm.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci-msm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_pltfm_data = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sdhci_msm_variant_info = type { i8, i8, ptr, ptr }
%struct.sdhci_msm_variant_ops = type { ptr, ptr }
%struct.sdhci_msm_offset = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sdhci_msm_host = type { ptr, ptr, ptr, i32, ptr, ptr, [5 x %struct.clk_bulk_data], i32, ptr, i8, i8, i8, i8, i8, i32, i32, %struct.wait_queue_head, i8, i32, i8, i8, ptr, ptr, i8, i32, i8, i8, i32, i32, i8 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
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
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%union.anon.88 = type { [16 x i32] }
%struct.anon.85 = type { [64 x i8], i8, i8, i8, i8, i8, i8, [2 x i8], [56 x i8] }
%union.cqhci_crypto_cap_entry = type { i32 }

@__initcall__kmod_sdhci_msm__321_2838_sdhci_msm_driver_init6 = internal global ptr @sdhci_msm_driver_init, section ".initcall6.init", align 4
@sdhci_msm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdhci_msm_probe, ptr @sdhci_msm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sdhci_msm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdhci_msm_driver_exit = internal global ptr @sdhci_msm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description322 = internal constant [79 x i8] c"sdhci_msm.description=Qualcomm Secure Digital Host Controller Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [42 x i8] c"sdhci_msm.file=drivers/mmc/host/sdhci-msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [25 x i8] c"sdhci_msm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdhci_msm\00", [22 x i8] zeroinitializer }, align 32
@sdhci_msm_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdhci-msm-v4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_msm_mci_var }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdhci-msm-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdhci_msm_v5_var }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_sdhci_var }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-sdhci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sdm845_sdhci_var }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sdhci_msm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_runtime_suspend, ptr @sdhci_msm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sdhci_msm_pdata = internal constant { %struct.sdhci_pltfm_data, [20 x i8] } { %struct.sdhci_pltfm_data { ptr @sdhci_msm_ops, i32 302022664, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2548, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Peripheral clk setup failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_msm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/sdhci-msm.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry_ptr = internal global ptr @sdhci_msm_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 2557, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SDC MMC clk setup failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry_ptr.11 = internal global ptr @sdhci_msm_probe._entry.9, section ".printk_index", align 4
@sdhci_msm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 2574, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid OPP table in Device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry_ptr.14 = internal global ptr @sdhci_msm_probe._entry.12, section ".printk_index", align 4
@sdhci_msm_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 2581, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"core clock boost failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry_ptr.18 = internal global ptr @sdhci_msm_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cal\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 2610, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TCXO clk not present (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry_ptr.24 = internal global ptr @sdhci_msm_probe._entry.22, section ".printk_index", align 4
@sdhci_msm_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.25, i8 2, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Host Version: 0x%x Vendor Version 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sdhci_msm_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.26, i8 2, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MCI Version: 0x%08x, major: 0x%04x, minor: 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwr_irq\00", [24 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 2711, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Request IRQ failed (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@sdhci_msm_probe._entry_ptr.30 = internal global ptr @sdhci_msm_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"supports-cqe\00", [19 x i8] zeroinitializer }, align 32
@sdhci_msm_ops = internal constant { %struct.sdhci_ops, [40 x i8] } { %struct.sdhci_ops { ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_writew, ptr @sdhci_msm_writeb, ptr @sdhci_msm_set_clock, ptr @sdhci_set_power_noreg, ptr @sdhci_msm_cqe_irq, ptr null, ptr null, ptr @sdhci_msm_get_max_clock, ptr @sdhci_msm_get_min_clock, ptr null, ptr null, ptr @sdhci_msm_set_timeout, ptr @sdhci_set_bus_width, ptr null, ptr null, ptr @sdhci_msm_reset, ptr null, ptr @sdhci_msm_set_uhs_signaling, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_msm_dump_vendor_regs }, [40 x i8] zeroinitializer }, align 32
@sdhci_msm_check_power_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 1, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdhci_msm_check_power_status\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: %s: request %d curr_pwr_state %x curr_io_level %x\0A\00", [41 x i8] zeroinitializer }, align 32
@sdhci_msm_check_power_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.34, i8 1, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: do not wait for power IRQ that never comes, req_type: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sdhci_msm_check_power_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.5, i32 1569, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: pwr_irq for req: (%d) timed out\0A\00", [59 x i8] zeroinitializer }, align 32
@sdhci_msm_check_power_status._entry_ptr = internal global ptr @sdhci_msm_check_power_status._entry, section ".printk_index", align 4
@sdhci_msm_check_power_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.5, ptr @.str.36, i8 1, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s: request %d done\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_hc_select_hs400._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: Unable to get DLL_LOCK/DDR_DLL_LOCK, dll_status: 0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msm_hc_select_hs400\00", [44 x i8] zeroinitializer }, align 32
@msm_hc_select_hs400._entry_ptr = internal global ptr @msm_hc_select_hs400._entry, section ".printk_index", align 4
@msm_set_clock_rate_for_bus_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Failed to set clock at rate %u at timing %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msm_set_clock_rate_for_bus_mode\00", [32 x i8] zeroinitializer }, align 32
@msm_set_clock_rate_for_bus_mode._entry_ptr = internal global ptr @msm_set_clock_rate_for_bus_mode._entry, section ".printk_index", align 4
@msm_set_clock_rate_for_bus_mode._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.5, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: Card appears overclocked; req %u Hz, actual %lu Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@msm_set_clock_rate_for_bus_mode._entry_ptr.43 = internal global ptr @msm_set_clock_rate_for_bus_mode._entry.41, section ".printk_index", align 4
@msm_set_clock_rate_for_bus_mode.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.5, ptr @.str.44, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Setting clock at rate %lu at timing %d\0A\00", [52 x i8] zeroinitializer }, align 32
@sdhci_msm_set_uhs_signaling.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.5, ptr @.str.46, i8 1, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sdhci_msm_set_uhs_signaling\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: clock=%u uhs=%u ctrl_2=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@sdhci_msm_hs400._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Failed to calibrate DLL for hs400 mode (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdhci_msm_hs400\00", [16 x i8] zeroinitializer }, align 32
@sdhci_msm_hs400._entry_ptr = internal global ptr @sdhci_msm_hs400._entry, section ".printk_index", align 4
@sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.50, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sdhci_msm_hs400_dll_calibration\00", [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: %s: Enter\0A\00", [17 x i8] zeroinitializer }, align 32
@sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.5, ptr @.str.51, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: %s: Exit, ret %d\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@msm_init_cm_dll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 763, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DLL failed to LOCK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msm_init_cm_dll\00", [16 x i8] zeroinitializer }, align 32
@msm_init_cm_dll._entry_ptr = internal global ptr @msm_init_cm_dll._entry, section ".printk_index", align 4
@msm_config_cm_dll_phase.grey_coded_phase_table = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\03\02\06\07\05\04\0C\0D\0F\0E\0A\0B\09\08", [16 x i8] zeroinitializer }, align 32
@msm_config_cm_dll_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 470, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Failed to set DLL phase: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msm_config_cm_dll_phase\00", [40 x i8] zeroinitializer }, align 32
@msm_config_cm_dll_phase._entry_ptr = internal global ptr @msm_config_cm_dll_phase._entry, section ".printk_index", align 4
@msm_dll_poll_ck_out_en._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 404, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: CK_OUT_EN bit is not %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msm_dll_poll_ck_out_en\00", [41 x i8] zeroinitializer }, align 32
@msm_dll_poll_ck_out_en._entry_ptr = internal global ptr @msm_dll_poll_ck_out_en._entry, section ".printk_index", align 4
@sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.5, ptr @.str.50, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdhci_msm_cdclp533_calibration\00", [33 x i8] zeroinitializer }, align 32
@sdhci_msm_cdclp533_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.58, ptr @.str.5, i32 977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: %s: CDC calibration was not completed\0A\00", [51 x i8] zeroinitializer }, align 32
@sdhci_msm_cdclp533_calibration._entry_ptr = internal global ptr @sdhci_msm_cdclp533_calibration._entry, section ".printk_index", align 4
@sdhci_msm_cdclp533_calibration._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.58, ptr @.str.5, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: %s: CDC error code %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_msm_cdclp533_calibration._entry_ptr.62 = internal global ptr @sdhci_msm_cdclp533_calibration._entry.60, section ".printk_index", align 4
@sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.5, ptr @.str.51, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.5, ptr @.str.50, i8 0, i8 -4, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sdhci_msm_cm_dll_sdc4_calibration\00", [62 x i8] zeroinitializer }, align 32
@sdhci_msm_cm_dll_sdc4_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.63, ptr @.str.5, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: %s: CM_DLL_SDC4 calibration was not completed\0A\00", [43 x i8] zeroinitializer }, align 32
@sdhci_msm_cm_dll_sdc4_calibration._entry_ptr = internal global ptr @sdhci_msm_cm_dll_sdc4_calibration._entry, section ".printk_index", align 4
@sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.5, ptr @.str.51, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sdhci_msm_dump_vendor_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 2388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: sdhci_msm: ----------- VENDOR REGISTER DUMP -----------\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sdhci_msm_dump_vendor_regs\00", [37 x i8] zeroinitializer }, align 32
@sdhci_msm_dump_vendor_regs._entry_ptr = internal global ptr @sdhci_msm_dump_vendor_regs._entry, section ".printk_index", align 4
@sdhci_msm_dump_vendor_regs._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.5, i32 2394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013%s: sdhci_msm: DLL sts: 0x%08x | DLL cfg:  0x%08x | DLL cfg2: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@sdhci_msm_dump_vendor_regs._entry_ptr.69 = internal global ptr @sdhci_msm_dump_vendor_regs._entry.67, section ".printk_index", align 4
@sdhci_msm_dump_vendor_regs._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.5, i32 2399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013%s: sdhci_msm: DLL cfg3: 0x%08x | DLL usr ctl:  0x%08x | DDR cfg: 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@sdhci_msm_dump_vendor_regs._entry_ptr.72 = internal global ptr @sdhci_msm_dump_vendor_regs._entry.70, section ".printk_index", align 4
@sdhci_msm_dump_vendor_regs._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.5, i32 2405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013%s: sdhci_msm: Vndr func: 0x%08x | Vndr func2 : 0x%08x Vndr func3: 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@sdhci_msm_dump_vendor_regs._entry_ptr.75 = internal global ptr @sdhci_msm_dump_vendor_regs._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,ddr-config\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,dll-config\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ice\00", [28 x i8] zeroinitializer }, align 32
@sdhci_msm_set_regulator_caps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 2280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: 1.8/3V not supported for vqmmc\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdhci_msm_set_regulator_caps\00", [35 x i8] zeroinitializer }, align 32
@sdhci_msm_set_regulator_caps._entry_ptr = internal global ptr @sdhci_msm_set_regulator_caps._entry, section ".printk_index", align 4
@sdhci_msm_set_regulator_caps.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.80, ptr @.str.5, ptr @.str.81, i8 2, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: supported caps: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@sdhci_msm_handle_pwr_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.5, i32 1618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: Timedout clearing (0x%x) pwrctl status register\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdhci_msm_handle_pwr_irq\00", [39 x i8] zeroinitializer }, align 32
@sdhci_msm_handle_pwr_irq._entry_ptr = internal global ptr @sdhci_msm_handle_pwr_irq._entry, section ".printk_index", align 4
@sdhci_msm_handle_pwr_irq._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.5, i32 1669, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: IO_level setting failed(%d). signal_voltage: %d, vdd: %d irq_status: 0x%08x\0A\00", [47 x i8] zeroinitializer }, align 32
@sdhci_msm_handle_pwr_irq._entry_ptr.86 = internal global ptr @sdhci_msm_handle_pwr_irq._entry.84, section ".printk_index", align 4
@sdhci_msm_handle_pwr_irq.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.5, ptr @.str.87, i8 1, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: %s: Handled IRQ(%d), irq_status=0x%x, ack=0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@sdhci_msm_dump_pwr_ctrl_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 1586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013%s: PWRCTL_STATUS: 0x%08x | PWRCTL_MASK: 0x%08x | PWRCTL_CTL: 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sdhci_msm_dump_pwr_ctrl_regs\00", [35 x i8] zeroinitializer }, align 32
@sdhci_msm_dump_pwr_ctrl_regs._entry_ptr = internal global ptr @sdhci_msm_dump_pwr_ctrl_regs._entry, section ".printk_index", align 4
@msm_config_vqmmc_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 1456, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: vqmmc set load failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msm_config_vqmmc_mode\00", [42 x i8] zeroinitializer }, align 32
@msm_config_vqmmc_mode._entry_ptr = internal global ptr @msm_config_vqmmc_mode._entry, section ".printk_index", align 4
@msm_toggle_vqmmc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.5, i32 1429, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: vqmmc set volgate failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msm_toggle_vqmmc\00", [47 x i8] zeroinitializer }, align 32
@msm_toggle_vqmmc._entry_ptr = internal global ptr @msm_toggle_vqmmc._entry, section ".printk_index", align 4
@msm_toggle_vqmmc._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.5, i32 1440, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: vqmm %sable failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@msm_toggle_vqmmc._entry_ptr.96 = internal global ptr @msm_toggle_vqmmc._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@sdhci_msm_init_pwr_irq_wait.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&msm_host->pwr_irq_wait\00", [40 x i8] zeroinitializer }, align 32
@sdhci_msm_start_signal_voltage_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 2373, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Regulator output did not became stable\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sdhci_msm_start_signal_voltage_switch\00", [58 x i8] zeroinitializer }, align 32
@sdhci_msm_start_signal_voltage_switch._entry_ptr = internal global ptr @sdhci_msm_start_signal_voltage_switch._entry, section ".printk_index", align 4
@sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.5, ptr @.str.103, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdhci_msm_execute_tuning\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Found good phase = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.5, ptr @.str.104, i8 1, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: All phases valid; try again\0A\00", [63 x i8] zeroinitializer }, align 32
@sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.5, ptr @.str.105, i8 1, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Setting the tuning phase to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.5, ptr @.str.106, i8 1, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: No tuning point found\0A\00", [37 x i8] zeroinitializer }, align 32
@msm_find_most_appropriate_phase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.5, i32 499, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Invalid argument: total_phases=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"msm_find_most_appropriate_phase\00", [32 x i8] zeroinitializer }, align 32
@msm_find_most_appropriate_phase._entry_ptr = internal global ptr @msm_find_most_appropriate_phase._entry, section ".printk_index", align 4
@msm_find_most_appropriate_phase._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.5, i32 582, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Invalid phase selected=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@msm_find_most_appropriate_phase._entry_ptr.111 = internal global ptr @msm_find_most_appropriate_phase._entry.109, section ".printk_index", align 4
@sdhci_msm_cqe_add_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.5, i32 2141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cqhci-pltfm init: failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sdhci_msm_cqe_add_host\00", [41 x i8] zeroinitializer }, align 32
@sdhci_msm_cqe_add_host._entry_ptr = internal global ptr @sdhci_msm_cqe_add_host._entry, section ".printk_index", align 4
@sdhci_msm_cqhci_ops = internal constant { %struct.cqhci_host_ops, [60 x i8] } { %struct.cqhci_host_ops { ptr null, ptr null, ptr null, ptr @sdhci_msm_cqe_enable, ptr @sdhci_msm_cqe_disable, ptr null, ptr null, ptr null, ptr @sdhci_msm_program_key }, [60 x i8] zeroinitializer }, align 32
@sdhci_msm_cqe_add_host._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.5, i32 2157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: CQE init: failed (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_msm_cqe_add_host._entry_ptr.116 = internal global ptr @sdhci_msm_cqe_add_host._entry.114, section ".printk_index", align 4
@sdhci_msm_cqe_add_host._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.5, i32 2180, ptr @.str.119, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: CQE init: success\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sdhci_msm_cqe_add_host._entry_ptr.120 = internal global ptr @sdhci_msm_cqe_add_host._entry.117, section ".printk_index", align 4
@sdhci_msm_ice_wait_bist_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.5, i32 1945, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Timed out waiting for ICE self-test to complete\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sdhci_msm_ice_wait_bist_status\00", [33 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_wait_bist_status._entry_ptr = internal global ptr @sdhci_msm_ice_wait_bist_status._entry, section ".printk_index", align 4
@sdhci_msm_program_key._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.123, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sdhci_msm_program_key = private unnamed_addr constant [22 x i8] c"sdhci_msm_program_key\00", align 1
@sdhci_msm_program_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @__func__.sdhci_msm_program_key, ptr @.str.5, i32 1991, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unhandled crypto capability; algorithm_id=%d, key_size=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@sdhci_msm_program_key._entry_ptr = internal global ptr @sdhci_msm_program_key._entry, section ".printk_index", align 4
@sdhci_msm_ice_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.5, i32 1873, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ICE registers not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdhci_msm_ice_init\00", [45 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_init._entry_ptr = internal global ptr @sdhci_msm_ice_init._entry, section ".printk_index", align 4
@sdhci_msm_ice_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.5, i32 1878, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ICE SCM interface not found\0A\00", [35 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_init._entry_ptr.129 = internal global ptr @sdhci_msm_ice_init._entry.127, section ".printk_index", align 4
@sdhci_msm_ice_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.5, i32 1893, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disabling inline encryption support\0A\00", [59 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_init._entry_ptr.132 = internal global ptr @sdhci_msm_ice_init._entry.130, section ".printk_index", align 4
@sdhci_msm_ice_supported._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.5, i32 1837, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported ICE version: v%d.%d.%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sdhci_msm_ice_supported\00", [40 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_supported._entry_ptr = internal global ptr @sdhci_msm_ice_supported._entry, section ".printk_index", align 4
@sdhci_msm_ice_supported._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.5, i32 1842, ptr @.str.119, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Found QC Inline Crypto Engine (ICE) v%d.%d.%d\0A\00", [49 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_supported._entry_ptr.137 = internal global ptr @sdhci_msm_ice_supported._entry.135, section ".printk_index", align 4
@sdhci_msm_ice_supported._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.5, i32 1849, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fuses are blown; ICE is unusable!\0A\00", [61 x i8] zeroinitializer }, align 32
@sdhci_msm_ice_supported._entry_ptr.140 = internal global ptr @sdhci_msm_ice_supported._entry.138, section ".printk_index", align 4
@sdhci_msm_mci_var = internal constant { %struct.sdhci_msm_variant_info, [20 x i8] } { %struct.sdhci_msm_variant_info { i8 0, i8 0, ptr @mci_var_ops, ptr @sdhci_msm_mci_offset }, [20 x i8] zeroinitializer }, align 32
@sdhci_msm_v5_var = internal constant { %struct.sdhci_msm_variant_info, [20 x i8] } { %struct.sdhci_msm_variant_info { i8 1, i8 0, ptr @v5_var_ops, ptr @sdhci_msm_v5_offset }, [20 x i8] zeroinitializer }, align 32
@sdm845_sdhci_var = internal constant { %struct.sdhci_msm_variant_info, [20 x i8] } { %struct.sdhci_msm_variant_info { i8 1, i8 1, ptr @v5_var_ops, ptr @sdhci_msm_v5_offset }, [20 x i8] zeroinitializer }, align 32
@mci_var_ops = internal constant { %struct.sdhci_msm_variant_ops, [24 x i8] } { %struct.sdhci_msm_variant_ops { ptr @sdhci_msm_mci_variant_readl_relaxed, ptr @sdhci_msm_mci_variant_writel_relaxed }, [24 x i8] zeroinitializer }, align 32
@sdhci_msm_mci_offset = internal constant { %struct.sdhci_msm_offset, [44 x i8] } { %struct.sdhci_msm_offset { i32 120, i32 48, i32 52, i32 68, i32 80, i32 112, i32 204, i32 4, i32 8, i32 16, i32 220, i32 224, i32 228, i32 232, i32 292, i32 256, i32 264, i32 268, i32 276, i32 280, i32 272, i32 284, i32 388, i32 432, i32 436, i32 0, i32 440, i32 444, i32 0 }, [44 x i8] zeroinitializer }, align 32
@v5_var_ops = internal constant { %struct.sdhci_msm_variant_ops, [24 x i8] } { %struct.sdhci_msm_variant_ops { ptr @sdhci_msm_v5_variant_readl_relaxed, ptr @sdhci_msm_v5_variant_writel_relaxed }, [24 x i8] zeroinitializer }, align 32
@sdhci_msm_v5_offset = internal constant { %struct.sdhci_msm_offset, [44 x i8] } { %struct.sdhci_msm_offset { i32 0, i32 860, i32 804, i32 776, i32 792, i32 800, i32 812, i32 3, i32 -2147483648, i32 8, i32 576, i32 580, i32 584, i32 588, i32 856, i32 512, i32 520, i32 524, i32 532, i32 536, i32 528, i32 540, i32 548, i32 592, i32 596, i32 600, i32 0, i32 604, i32 904 }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.143 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.145 = internal global [7 x i64] [i64 5, i64 32, i64 12, i64 14, i64 41, i64 47, i64 62]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 6, i64 19, i64 21]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 10]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 9, i64 10]
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"sdhci_msm_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2827, i32 31 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2831, i32 14 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"sdhci_msm_dt_match\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2436, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"sdhci_msm_pm_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2819, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"sdhci_msm_pdata\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2461, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2533, i32 47 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2545, i32 33 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2548, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2554, i32 33 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2557, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2574, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2581, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2583, i32 33 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2588, i32 33 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2607, i32 46 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2610, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2637, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2646, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2696, i32 52 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2711, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2730, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant [14 x i8] c"sdhci_msm_ops\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2446, i32 31 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1519, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1550, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1567, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1571, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 857, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 365, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 377, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 384, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1380, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1306, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1085, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1113, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 762, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant [23 x i8] c"grey_coded_phase_table\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 419, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 469, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 403, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 905, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 976, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 984, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1009, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1043, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2388, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2390, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2395, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2400, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2478, i32 33 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2482, i32 29 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1857, i32 27 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2279, i32 4 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2303, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1617, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1666, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1720, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1582, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1455, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1428, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1439, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1492, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2372, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1234, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1248, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1271, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1277, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 498, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 581, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2141, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c"sdhci_msm_cqhci_ops\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2109, i32 36 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2156, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2179, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1944, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1989, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1873, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1878, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1893, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1836, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1841, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 1849, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant [18 x i8] c"sdhci_msm_mci_var\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2418, i32 44 }
@___asan_gen_.614 = private unnamed_addr constant [17 x i8] c"sdhci_msm_v5_var\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2423, i32 44 }
@___asan_gen_.617 = private unnamed_addr constant [17 x i8] c"sdm845_sdhci_var\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2429, i32 44 }
@___asan_gen_.620 = private unnamed_addr constant [12 x i8] c"mci_var_ops\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2408, i32 43 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c"sdhci_msm_mci_offset\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 209, i32 38 }
@___asan_gen_.626 = private unnamed_addr constant [11 x i8] c"v5_var_ops\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 2413, i32 43 }
@___asan_gen_.629 = private unnamed_addr constant [20 x i8] c"sdhci_msm_v5_offset\00", align 1
@___asan_gen_.630 = private constant [32 x i8] c"../drivers/mmc/host/sdhci-msm.c\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.630, i32 179, i32 38 }
@llvm.compiler.used = appending global [209 x ptr] [ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_sdhci_msm_driver_exit, ptr @__initcall__kmod_sdhci_msm__321_2838_sdhci_msm_driver_init6, ptr @msm_config_cm_dll_phase._entry, ptr @msm_config_cm_dll_phase._entry_ptr, ptr @msm_config_vqmmc_mode._entry, ptr @msm_config_vqmmc_mode._entry_ptr, ptr @msm_dll_poll_ck_out_en._entry, ptr @msm_dll_poll_ck_out_en._entry_ptr, ptr @msm_find_most_appropriate_phase._entry, ptr @msm_find_most_appropriate_phase._entry.109, ptr @msm_find_most_appropriate_phase._entry_ptr, ptr @msm_find_most_appropriate_phase._entry_ptr.111, ptr @msm_hc_select_hs400._entry, ptr @msm_hc_select_hs400._entry_ptr, ptr @msm_init_cm_dll._entry, ptr @msm_init_cm_dll._entry_ptr, ptr @msm_set_clock_rate_for_bus_mode._entry, ptr @msm_set_clock_rate_for_bus_mode._entry.41, ptr @msm_set_clock_rate_for_bus_mode._entry_ptr, ptr @msm_set_clock_rate_for_bus_mode._entry_ptr.43, ptr @msm_toggle_vqmmc._entry, ptr @msm_toggle_vqmmc._entry.94, ptr @msm_toggle_vqmmc._entry_ptr, ptr @msm_toggle_vqmmc._entry_ptr.96, ptr @sdhci_msm_cdclp533_calibration._entry, ptr @sdhci_msm_cdclp533_calibration._entry.60, ptr @sdhci_msm_cdclp533_calibration._entry_ptr, ptr @sdhci_msm_cdclp533_calibration._entry_ptr.62, ptr @sdhci_msm_check_power_status._entry, ptr @sdhci_msm_check_power_status._entry_ptr, ptr @sdhci_msm_cm_dll_sdc4_calibration._entry, ptr @sdhci_msm_cm_dll_sdc4_calibration._entry_ptr, ptr @sdhci_msm_cqe_add_host._entry, ptr @sdhci_msm_cqe_add_host._entry.114, ptr @sdhci_msm_cqe_add_host._entry.117, ptr @sdhci_msm_cqe_add_host._entry_ptr, ptr @sdhci_msm_cqe_add_host._entry_ptr.116, ptr @sdhci_msm_cqe_add_host._entry_ptr.120, ptr @sdhci_msm_driver_exit, ptr @sdhci_msm_dump_pwr_ctrl_regs._entry, ptr @sdhci_msm_dump_pwr_ctrl_regs._entry_ptr, ptr @sdhci_msm_dump_vendor_regs._entry, ptr @sdhci_msm_dump_vendor_regs._entry.67, ptr @sdhci_msm_dump_vendor_regs._entry.70, ptr @sdhci_msm_dump_vendor_regs._entry.73, ptr @sdhci_msm_dump_vendor_regs._entry_ptr, ptr @sdhci_msm_dump_vendor_regs._entry_ptr.69, ptr @sdhci_msm_dump_vendor_regs._entry_ptr.72, ptr @sdhci_msm_dump_vendor_regs._entry_ptr.75, ptr @sdhci_msm_handle_pwr_irq._entry, ptr @sdhci_msm_handle_pwr_irq._entry.84, ptr @sdhci_msm_handle_pwr_irq._entry_ptr, ptr @sdhci_msm_handle_pwr_irq._entry_ptr.86, ptr @sdhci_msm_hs400._entry, ptr @sdhci_msm_hs400._entry_ptr, ptr @sdhci_msm_ice_init._entry, ptr @sdhci_msm_ice_init._entry.127, ptr @sdhci_msm_ice_init._entry.130, ptr @sdhci_msm_ice_init._entry_ptr, ptr @sdhci_msm_ice_init._entry_ptr.129, ptr @sdhci_msm_ice_init._entry_ptr.132, ptr @sdhci_msm_ice_supported._entry, ptr @sdhci_msm_ice_supported._entry.135, ptr @sdhci_msm_ice_supported._entry.138, ptr @sdhci_msm_ice_supported._entry_ptr, ptr @sdhci_msm_ice_supported._entry_ptr.137, ptr @sdhci_msm_ice_supported._entry_ptr.140, ptr @sdhci_msm_ice_wait_bist_status._entry, ptr @sdhci_msm_ice_wait_bist_status._entry_ptr, ptr @sdhci_msm_probe._entry, ptr @sdhci_msm_probe._entry.12, ptr @sdhci_msm_probe._entry.15, ptr @sdhci_msm_probe._entry.22, ptr @sdhci_msm_probe._entry.28, ptr @sdhci_msm_probe._entry.9, ptr @sdhci_msm_probe._entry_ptr, ptr @sdhci_msm_probe._entry_ptr.11, ptr @sdhci_msm_probe._entry_ptr.14, ptr @sdhci_msm_probe._entry_ptr.18, ptr @sdhci_msm_probe._entry_ptr.24, ptr @sdhci_msm_probe._entry_ptr.30, ptr @sdhci_msm_program_key._entry, ptr @sdhci_msm_program_key._entry_ptr, ptr @sdhci_msm_set_regulator_caps._entry, ptr @sdhci_msm_set_regulator_caps._entry_ptr, ptr @sdhci_msm_start_signal_voltage_switch._entry, ptr @sdhci_msm_start_signal_voltage_switch._entry_ptr, ptr @sdhci_msm_driver, ptr @.str, ptr @sdhci_msm_dt_match, ptr @sdhci_msm_pm_ops, ptr @sdhci_msm_pdata, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @sdhci_msm_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @msm_config_cm_dll_phase.grey_coded_phase_table, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @sdhci_msm_init_pwr_irq_wait.__key, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @sdhci_msm_cqhci_ops, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @sdhci_msm_program_key._rs, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @sdhci_msm_mci_var, ptr @sdhci_msm_v5_var, ptr @sdm845_sdhci_var, ptr @mci_var_ops, ptr @sdhci_msm_mci_offset, ptr @v5_var_ops, ptr @sdhci_msm_v5_offset], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ops to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_check_power_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hc_select_hs400._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_set_clock_rate_for_bus_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_set_clock_rate_for_bus_mode._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_hs400._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_init_cm_dll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_config_cm_dll_phase.grey_coded_phase_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_config_cm_dll_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_dll_poll_ck_out_en._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cdclp533_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cdclp533_calibration._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cm_dll_sdc4_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_dump_vendor_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_dump_vendor_regs._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_dump_vendor_regs._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_dump_vendor_regs._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_set_regulator_caps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_handle_pwr_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_handle_pwr_irq._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_dump_pwr_ctrl_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_config_vqmmc_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_toggle_vqmmc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_toggle_vqmmc._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_init_pwr_irq_wait.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_start_signal_voltage_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_find_most_appropriate_phase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_find_most_appropriate_phase._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cqe_add_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cqhci_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cqe_add_host._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_cqe_add_host._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_wait_bist_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_program_key._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_program_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_supported._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_supported._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_ice_supported._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_mci_var to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_v5_var to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_sdhci_var to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mci_var_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_mci_offset to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v5_var_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdhci_msm_v5_offset to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdhci_msm_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdhci_msm_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @sdhci_pltfm_init(ptr noundef %pdev, ptr noundef nonnull @sdhci_msm_pdata, i32 noundef 184) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %sdma_boundary = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 77
  %3 = ptrtoint ptr %sdma_boundary to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sdma_boundary, align 8
  %private.i488 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 21
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 8
  %mmc5 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 11
  %6 = ptrtoint ptr %mmc5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %mmc5, align 4
  %7 = ptrtoint ptr %private.i488 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %private.i488, align 4
  %call8 = tail call i32 @mmc_of_parse(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.pltfm_free_crit_edge

if.end.pltfm_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %8 = ptrtoint ptr %call12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call12, align 4, !range !328
  %mci_removed14 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 19
  %10 = ptrtoint ptr %mci_removed14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %mci_removed14, align 4
  %restore_dll_config = getelementptr inbounds %struct.sdhci_msm_variant_info, ptr %call12, i32 0, i32 1
  %11 = ptrtoint ptr %restore_dll_config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %restore_dll_config, align 1, !range !328
  %restore_dll_config16 = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i488, i32 0, i32 20
  %13 = ptrtoint ptr %restore_dll_config16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %restore_dll_config16, align 1
  %var_ops = getelementptr inbounds %struct.sdhci_msm_variant_info, ptr %call12, i32 0, i32 2
  %14 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %var_ops, align 4
  %var_ops18 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 20
  %16 = ptrtoint ptr %var_ops18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %var_ops18, align 4
  %offset = getelementptr inbounds %struct.sdhci_msm_variant_info, ptr %call12, i32 0, i32 3
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %offset, align 4
  %offset19 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 21
  %19 = ptrtoint ptr %offset19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %offset19, align 4
  tail call void @sdhci_get_property(ptr noundef %pdev) #9
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %ddr_config.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 21, i32 3, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.76, ptr noundef %ddr_config.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end10.sdhci_msm_get_of_property.exit_crit_edge, label %if.then.i

if.end10.sdhci_msm_get_of_property.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_get_of_property.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %ddr_config.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -2147219341, ptr %ddr_config.i, align 4
  br label %sdhci_msm_get_of_property.exit

sdhci_msm_get_of_property.exit:                   ; preds = %if.then.i, %if.end10.sdhci_msm_get_of_property.exit_crit_edge
  %dll_config.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 21, i32 3
  %call.i.i9.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.77, ptr noundef %dll_config.i, i32 noundef 1, i32 noundef 0) #9
  %saved_tuning_phase = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i488, i32 0, i32 12
  %23 = ptrtoint ptr %saved_tuning_phase to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %saved_tuning_phase, align 1
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %bus_clk = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 12
  %24 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call22, ptr %bus_clk, align 4
  %cmp.i489 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i489, label %sdhci_msm_get_of_property.exit.if.end36_crit_edge, label %if.then25

sdhci_msm_get_of_property.exit.if.end36_crit_edge: ; preds = %sdhci_msm_get_of_property.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then25:                                        ; preds = %sdhci_msm_get_of_property.exit
  %call27 = tail call i32 @clk_set_rate(ptr noundef %call22, i32 noundef 2147483647) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then25.pltfm_free_crit_edge

if.then25.pltfm_free_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free

if.end30:                                         ; preds = %if.then25
  %25 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i490 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i490, label %if.end.i, label %if.end30.pltfm_free_crit_edge

if.end30.pltfm_free_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end36_crit_edge, label %if.end.i.pltfm_free.sink.split_crit_edge

if.end.i.pltfm_free.sink.split_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free.sink.split

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %if.end.i.if.end36_crit_edge, %sdhci_msm_get_of_property.exit.if.end36_crit_edge
  %call38 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %cmp.i492 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i492, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call38 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %27) #12
  br label %bus_clk_disable

if.end43:                                         ; preds = %if.end36
  %bulk_clks = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13
  %clk44 = getelementptr %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 3
  %28 = ptrtoint ptr %clk44 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call38, ptr %clk44, align 4
  %call46 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  %cmp.i493 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i493, label %if.then48, label %if.end54

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %call46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %29) #12
  br label %bus_clk_disable

if.end54:                                         ; preds = %if.end43
  %clk57 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 1
  %30 = ptrtoint ptr %clk57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call46, ptr %clk57, align 4
  %call59 = tail call i32 @dev_pm_opp_of_find_icc_paths(ptr noundef %dev, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end54.bus_clk_disable_crit_edge

if.end54.bus_clk_disable_crit_edge:               ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %bus_clk_disable

if.end62:                                         ; preds = %if.end54
  %call64 = tail call i32 @devm_pm_opp_set_clkname(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.bus_clk_disable_crit_edge

if.end62.bus_clk_disable_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %bus_clk_disable

if.end67:                                         ; preds = %if.end62
  %call69 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %dev) #9
  %31 = zext i32 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call69, label %do.end74 [
    i32 0, label %if.end67.if.end76_crit_edge
    i32 -19, label %if.end67.if.end76_crit_edge516
  ]

if.end67.if.end76_crit_edge516:                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %bus_clk_disable

if.end76:                                         ; preds = %if.end67.if.end76_crit_edge, %if.end67.if.end76_crit_edge516
  %call78 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef 2147483647) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end76.if.end85_crit_edge, label %do.end83

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %if.end85

if.end85:                                         ; preds = %do.end83, %if.end76.if.end85_crit_edge
  %call87 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  %cmp.i494 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i494, ptr null, ptr %call87
  %clk93 = getelementptr %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 5
  %32 = ptrtoint ptr %clk93 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select, ptr %clk93, align 4
  %call95 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  %cmp.i495 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  %clk.1 = select i1 %cmp.i495, ptr null, ptr %call95
  %clk101 = getelementptr %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 7
  %33 = ptrtoint ptr %clk101 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %clk.1, ptr %clk101, align 4
  %call.i496 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.78) #9
  %cmp.i497 = icmp ugt ptr %call.i496, inttoptr (i32 -4096 to ptr)
  %clk.2 = select i1 %cmp.i497, ptr null, ptr %call.i496
  %clk109 = getelementptr %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 9
  %34 = ptrtoint ptr %clk109 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %clk.2, ptr %clk109, align 4
  %call111 = tail call fastcc i32 @clk_bulk_prepare_enable(ptr noundef %bulk_clks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end85.bus_clk_disable_crit_edge

if.end85.bus_clk_disable_crit_edge:               ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %bus_clk_disable

if.end114:                                        ; preds = %if.end85
  %call116 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  %xo_clk = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i488, i32 0, i32 5
  %35 = ptrtoint ptr %xo_clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call116, ptr %xo_clk, align 4
  %cmp.i498 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i498, label %if.then119, label %if.end114.if.end126_crit_edge

if.end114.if.end126_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.then119:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %call116 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %36) #12
  br label %if.end126

if.end126:                                        ; preds = %if.then119, %if.end114.if.end126_crit_edge
  %37 = ptrtoint ptr %mci_removed14 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mci_removed14, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool128.not = icmp eq i8 %38, 0
  br i1 %tobool128.not, label %if.then129, label %if.end126.if.end137_crit_edge

if.end126.if.end137_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then129:                                       ; preds = %if.end126
  %call130 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #9
  %core_mem = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 11, i32 22
  %39 = ptrtoint ptr %core_mem to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call130, ptr %core_mem, align 4
  %cmp.i499 = icmp ugt ptr %call130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i499, label %if.then133, label %if.then129.if.end137_crit_edge

if.then129.if.end137_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then133:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %call130 to i32
  br label %clk_disable

if.end137:                                        ; preds = %if.then129.if.end137_crit_edge, %if.end126.if.end137_crit_edge
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 4
  %41 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec = getelementptr inbounds %struct.sdhci_msm_offset, ptr %18, i32 0, i32 17
  %43 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1677066240) #9, !srcloc !329
  %45 = ptrtoint ptr %mci_removed14 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mci_removed14, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool139.not = icmp eq i8 %46, 0
  br i1 %tobool139.not, label %if.then140, label %if.end137.if.end148_crit_edge

if.end137.if.end148_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.then140:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %var_ops18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %var_ops18, align 4
  %msm_writel_relaxed = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %msm_writel_relaxed to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %msm_writel_relaxed, align 4
  %51 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %18, align 4
  tail call void %50(i32 noundef 1, ptr noundef %call, i32 noundef %52) #9
  %53 = ptrtoint ptr %var_ops18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %var_ops18, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %18, align 4
  %call144 = tail call i32 %56(ptr noundef %call, i32 noundef %58) #9
  %or = or i32 %call144, 8192
  %59 = ptrtoint ptr %var_ops18 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %var_ops18, align 4
  %msm_writel_relaxed146 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %msm_writel_relaxed146 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %msm_writel_relaxed146, align 4
  %63 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %18, align 4
  tail call void %62(i32 noundef %or, ptr noundef %call, i32 noundef %64) #9
  br label %if.end148

if.end148:                                        ; preds = %if.then140, %if.end137.if.end148_crit_edge
  %65 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr, align 16
  %add.ptr150 = getelementptr i8, ptr %66, i32 254
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr150) #9, !srcloc !330
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_probe, %if.then159)) #9
          to label %do.end164 [label %if.then159], !srcloc !331

if.then159:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  %68 = tail call i16 @llvm.bswap.i16(i16 %67)
  %conv = zext i16 %68 to i32
  %69 = lshr i32 %conv, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_probe.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %69) #9
  br label %do.end164

do.end164:                                        ; preds = %if.then159, %if.end148
  %70 = ptrtoint ptr %var_ops18 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %var_ops18, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %core_mci_version = getelementptr inbounds %struct.sdhci_msm_offset, ptr %18, i32 0, i32 4
  %74 = ptrtoint ptr %core_mci_version to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %core_mci_version, align 4
  %call167 = tail call i32 %73(ptr noundef %call, i32 noundef %75) #9
  %shr169 = lshr i32 %call167, 28
  %76 = trunc i32 %call167 to i16
  %conv172 = and i16 %76, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_probe, %if.then185)) #9
          to label %do.end191 [label %if.then185], !srcloc !331

if.then185:                                       ; preds = %do.end164
  call void @__sanitizer_cov_trace_pc() #11
  %conv188 = zext i16 %conv172 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %call167, i32 noundef %shr169, i32 noundef %conv188) #9
  br label %do.end191

do.end191:                                        ; preds = %if.then185, %do.end164
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr169)
  %cmp193 = icmp eq i32 %shr169, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 65, i16 %conv172)
  %cmp197 = icmp ugt i16 %conv172, 65
  %or.cond = select i1 %cmp193, i1 %cmp197, i1 false
  br i1 %or.cond, label %if.end200.thread, label %if.end200

if.end200.thread:                                 ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #11
  %use_14lpp_dll_reset = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 12
  br label %if.end209.sink.split

if.end200:                                        ; preds = %do.end191
  call void @__sanitizer_cov_trace_const_cmp2(i16 52, i16 %conv172)
  %cmp206 = icmp ult i16 %conv172, 52
  %or.cond479 = select i1 %cmp193, i1 %cmp206, i1 false
  br i1 %or.cond479, label %if.then208, label %if.end200.if.end209_crit_edge

if.end200.if.end209_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then208:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  %use_cdclp533 = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 13
  br label %if.end209.sink.split

if.end209.sink.split:                             ; preds = %if.then208, %if.end200.thread
  %use_14lpp_dll_reset.sink = phi ptr [ %use_14lpp_dll_reset, %if.end200.thread ], [ %use_cdclp533, %if.then208 ]
  %77 = ptrtoint ptr %use_14lpp_dll_reset.sink to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %use_14lpp_dll_reset.sink, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.end209.sink.split, %if.end200.if.end209_crit_edge
  %call167.fr = freeze i32 %call167
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call167.fr)
  %cmp211.not = icmp ult i32 %call167.fr, 268435456
  %conv172.off = add nsw i16 %conv172, -17
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %conv172.off)
  %switch = icmp ult i16 %conv172.off, 2
  %or.cond484 = select i1 %cmp211.not, i1 true, i1 %switch
  br i1 %or.cond484, label %if.end209.if.end230_crit_edge, label %if.then221

if.end209.if.end230_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then221:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr, align 16
  %add.ptr224 = getelementptr i8, ptr %79, i32 64
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #9, !srcloc !332
  %81 = or i32 %80, 1026
  %82 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec_capabilities0 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %18, i32 0, i32 21
  %84 = ptrtoint ptr %core_vendor_spec_capabilities0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %core_vendor_spec_capabilities0, align 4
  %add.ptr229 = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 %81) #9, !srcloc !329
  br label %if.end230

if.end230:                                        ; preds = %if.then221, %if.end209.if.end230_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %conv172)
  %cmp236 = icmp ugt i16 %conv172, 72
  %or.cond482 = select i1 %cmp193, i1 %cmp236, i1 false
  br i1 %or.cond482, label %if.then238, label %if.end230.if.end239_crit_edge

if.end230.if.end239_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end239

if.then238:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  %updated_ddr_cfg = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 21, i32 2
  %86 = ptrtoint ptr %updated_ddr_cfg to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %updated_ddr_cfg, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then238, %if.end230.if.end239_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %conv172)
  %cmp245 = icmp ugt i16 %conv172, 112
  %or.cond483 = select i1 %cmp193, i1 %cmp245, i1 false
  br i1 %or.cond483, label %if.then247, label %if.end239.if.end248_crit_edge

if.end239.if.end248_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248

if.then247:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #11
  %uses_tassadar_dll = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i488, i32 0, i32 26
  %87 = ptrtoint ptr %uses_tassadar_dll to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %uses_tassadar_dll, align 1
  br label %if.end248

if.end248:                                        ; preds = %if.then247, %if.end239.if.end248_crit_edge
  %call249 = tail call fastcc i32 @sdhci_msm_register_vreg(ptr noundef %private.i488)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool250.not = icmp eq i32 %call249, 0
  br i1 %tobool250.not, label %if.end252, label %if.end248.clk_disable_crit_edge

if.end248.clk_disable_crit_edge:                  ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable

if.end252:                                        ; preds = %if.end248
  tail call fastcc void @sdhci_msm_handle_pwr_irq(ptr noundef %call, i32 noundef 0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !333
  tail call void @arm_heavy_mb() #9
  %call256 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.27) #9
  %pwr_irq = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i488, i32 0, i32 3
  %88 = ptrtoint ptr %pwr_irq to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call256, ptr %pwr_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call256)
  %cmp258 = icmp slt i32 %call256, 0
  br i1 %cmp258, label %if.end252.clk_disable_crit_edge, label %if.end262

if.end252.clk_disable_crit_edge:                  ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_disable

if.end262:                                        ; preds = %if.end252
  %pwr_irq_wait.i = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 1, i32 13, i32 15
  tail call void @__init_waitqueue_head(ptr noundef %pwr_irq_wait.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @sdhci_msm_init_pwr_irq_wait.__key) #9
  %89 = ptrtoint ptr %var_ops18 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %var_ops18, align 4
  %msm_writel_relaxed264 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %msm_writel_relaxed264 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %msm_writel_relaxed264, align 4
  %core_pwrctl_mask = getelementptr inbounds %struct.sdhci_msm_offset, ptr %18, i32 0, i32 11
  %93 = ptrtoint ptr %core_pwrctl_mask to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %core_pwrctl_mask, align 4
  tail call void %92(i32 noundef 15, ptr noundef %call, i32 noundef %94) #9
  %95 = ptrtoint ptr %pwr_irq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pwr_irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i500 = icmp eq ptr %98, null
  br i1 %tobool.not.i500, label %if.end.i501, label %if.end262.dev_name.exit_crit_edge

if.end262.dev_name.exit_crit_edge:                ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i501:                                      ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i501, %if.end262.dev_name.exit_crit_edge
  %retval.0.i502 = phi ptr [ %100, %if.end.i501 ], [ %98, %if.end262.dev_name.exit_crit_edge ]
  %call269 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %96, ptr noundef null, ptr noundef nonnull @sdhci_msm_pwr_irq, i32 noundef 8192, ptr noundef %retval.0.i502, ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call269)
  %tobool270.not = icmp eq i32 %call269, 0
  br i1 %tobool270.not, label %if.end276, label %do.end274

do.end274:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call269) #12
  br label %clk_disable

if.end276:                                        ; preds = %dev_name.exit
  %101 = ptrtoint ptr %mmc5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmc5, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %102, i32 0, i32 16
  %103 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %caps, align 32
  %or278 = or i32 %104, 4194816
  store i32 %or278, ptr %caps, align 32
  %max_timeout_count = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 20
  %105 = ptrtoint ptr %max_timeout_count to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 15, ptr %max_timeout_count, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i503 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !334
  %call.i504 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %start_signal_voltage_switch = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 10
  %107 = ptrtoint ptr %start_signal_voltage_switch to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @sdhci_msm_start_signal_voltage_switch, ptr %start_signal_voltage_switch, align 4
  %execute_tuning = getelementptr inbounds %struct.sdhci_host, ptr %call, i32 0, i32 11, i32 12
  %108 = ptrtoint ptr %execute_tuning to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @sdhci_msm_execute_tuning, ptr %execute_tuning, align 4
  %call.i505 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i505, null
  br i1 %tobool.i.not, label %if.else, label %if.then287

if.then287:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #11
  %call288 = tail call fastcc i32 @sdhci_msm_cqe_add_host(ptr noundef %call, ptr noundef %pdev)
  br label %if.end290

if.else:                                          ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #11
  %call289 = tail call i32 @sdhci_add_host(ptr noundef %call) #9
  br label %if.end290

if.end290:                                        ; preds = %if.else, %if.then287
  %ret.0 = phi i32 [ %call288, %if.then287 ], [ %call289, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool291.not = icmp eq i32 %ret.0, 0
  br i1 %tobool291.not, label %if.end293, label %pm_runtime_disable

if.end293:                                        ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  %call.i506 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %109 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %109)
  store volatile i64 %call.i506, ptr %last_busy.i, align 8
  %call.i507 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  br label %cleanup

pm_runtime_disable:                               ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i508 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  br label %clk_disable

clk_disable:                                      ; preds = %pm_runtime_disable, %do.end274, %if.end252.clk_disable_crit_edge, %if.end248.clk_disable_crit_edge, %if.then133
  %ret.1 = phi i32 [ %call249, %if.end248.clk_disable_crit_edge ], [ %call269, %do.end274 ], [ %ret.0, %pm_runtime_disable ], [ %40, %if.then133 ], [ %call256, %if.end252.clk_disable_crit_edge ]
  tail call fastcc void @clk_bulk_disable_unprepare(ptr noundef %bulk_clks)
  br label %bus_clk_disable

bus_clk_disable:                                  ; preds = %clk_disable, %if.end85.bus_clk_disable_crit_edge, %do.end74, %if.end62.bus_clk_disable_crit_edge, %if.end54.bus_clk_disable_crit_edge, %if.then48, %if.then40
  %ret.2 = phi i32 [ %27, %if.then40 ], [ %29, %if.then48 ], [ %call59, %if.end54.bus_clk_disable_crit_edge ], [ %call64, %if.end62.bus_clk_disable_crit_edge ], [ %call69, %do.end74 ], [ %call111, %if.end85.bus_clk_disable_crit_edge ], [ %ret.1, %clk_disable ]
  %110 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %bus_clk, align 4
  %cmp.i509 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i509, label %bus_clk_disable.pltfm_free_crit_edge, label %if.then305

bus_clk_disable.pltfm_free_crit_edge:             ; preds = %bus_clk_disable
  call void @__sanitizer_cov_trace_pc() #11
  br label %pltfm_free

if.then305:                                       ; preds = %bus_clk_disable
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %111) #9
  br label %pltfm_free.sink.split

pltfm_free.sink.split:                            ; preds = %if.then305, %if.end.i.pltfm_free.sink.split_crit_edge
  %.sink = phi ptr [ %111, %if.then305 ], [ %26, %if.end.i.pltfm_free.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %if.then305 ], [ %call1.i, %if.end.i.pltfm_free.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %pltfm_free

pltfm_free:                                       ; preds = %pltfm_free.sink.split, %bus_clk_disable.pltfm_free_crit_edge, %if.end30.pltfm_free_crit_edge, %if.then25.pltfm_free_crit_edge, %if.end.pltfm_free_crit_edge
  %ret.3 = phi i32 [ %call8, %if.end.pltfm_free_crit_edge ], [ %ret.2, %bus_clk_disable.pltfm_free_crit_edge ], [ %call27, %if.then25.pltfm_free_crit_edge ], [ %call.i, %if.end30.pltfm_free_crit_edge ], [ %ret.3.ph, %pltfm_free.sink.split ]
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  br label %cleanup

cleanup:                                          ; preds = %pltfm_free, %if.end293, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %ret.3, %pltfm_free ], [ 0, %if.end293 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  %conv = zext i1 %cmp to i32
  tail call void @sdhci_remove_host(ptr noundef %1, i32 noundef %conv) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !336
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !337
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %bulk_clks = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %bulk_clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %bulk_clks) #9
  %bus_clk = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 12
  %6 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_clk, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  tail call void @sdhci_pltfm_free(ptr noundef %pdev) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sdhci_pltfm_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_find_icc_paths(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_set_clkname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(ptr noundef %clks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_register_vreg(ptr nocapture noundef %msm_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 8
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %call = tail call i32 @mmc_regulator_get_supply(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdhci_msm_set_regulator_caps(ptr noundef %msm_host)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_handle_pwr_irq(ptr noundef %host, i32 noundef %irq) unnamed_addr #2 align 64 {
entry:
  %ios.i.i = alloca %struct.mmc_ios, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i227 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %mmc2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc2, align 8
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset, align 4
  %var_ops = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 20
  %4 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %var_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %core_pwrctl_status = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %core_pwrctl_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_pwrctl_status, align 4
  %call3 = tail call i32 %7(ptr noundef %host, i32 noundef %9) #9
  %and = and i32 %call3, 15
  %10 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %var_ops, align 4
  %msm_writel_relaxed = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %msm_writel_relaxed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msm_writel_relaxed, align 4
  %core_pwrctl_clear = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %core_pwrctl_clear to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_pwrctl_clear, align 4
  tail call void %13(i32 noundef %and, ptr noundef %host, i32 noundef %15) #9
  %16 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %var_ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %core_pwrctl_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %core_pwrctl_status, align 4
  %call8268 = tail call i32 %19(ptr noundef %host, i32 noundef %21) #9
  %and9269 = and i32 %call8268, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9269)
  %tobool.not270 = icmp eq i32 %and9269, 0
  br i1 %tobool.not270, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %entry.while.body_crit_edge
  %retry.0271 = phi i32 [ %dec, %if.end33.while.body_crit_edge ], [ 10, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0271)
  %cmp = icmp eq i32 %retry.0271, 0
  br i1 %cmp, label %do.end, label %if.end33

do.end:                                           ; preds = %while.body
  %22 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc2, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i228 = phi ptr [ %27, %if.end.i ], [ %25, %do.end.dev_name.exit_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %retval.0.i228, i32 noundef %and) #12
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %offset, align 4
  %30 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc2, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %dev_name.exit.sdhci_msm_dump_pwr_ctrl_regs.exit_crit_edge

dev_name.exit.sdhci_msm_dump_pwr_ctrl_regs.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_dump_pwr_ctrl_regs.exit

if.end.i.i:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i, align 4
  br label %sdhci_msm_dump_pwr_ctrl_regs.exit

sdhci_msm_dump_pwr_ctrl_regs.exit:                ; preds = %if.end.i.i, %dev_name.exit.sdhci_msm_dump_pwr_ctrl_regs.exit_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %dev_name.exit.sdhci_msm_dump_pwr_ctrl_regs.exit_crit_edge ]
  %36 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %var_ops, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %core_pwrctl_status.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %29, i32 0, i32 10
  %40 = ptrtoint ptr %core_pwrctl_status.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %core_pwrctl_status.i, align 4
  %call3.i = tail call i32 %39(ptr noundef %host, i32 noundef %41) #9
  %42 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %var_ops, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %core_pwrctl_mask.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %29, i32 0, i32 11
  %46 = ptrtoint ptr %core_pwrctl_mask.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_pwrctl_mask.i, align 4
  %call6.i = tail call i32 %45(ptr noundef %host, i32 noundef %47) #9
  %48 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %var_ops, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %core_pwrctl_ctl.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %29, i32 0, i32 13
  %52 = ptrtoint ptr %core_pwrctl_ctl.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %core_pwrctl_ctl.i, align 4
  %call9.i = tail call i32 %51(ptr noundef %host, i32 noundef %53) #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %retval.0.i.i, i32 noundef %call3.i, i32 noundef %call6.i, i32 noundef %call9.i) #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1620, i32 noundef 9, ptr noundef null) #9
  br label %while.end

if.end33:                                         ; preds = %while.body
  %54 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %var_ops, align 4
  %msm_writel_relaxed35 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %msm_writel_relaxed35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msm_writel_relaxed35, align 4
  %58 = ptrtoint ptr %core_pwrctl_clear to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %core_pwrctl_clear, align 4
  tail call void %57(i32 noundef %and, ptr noundef %host, i32 noundef %59) #9
  %dec = add nsw i32 %retry.0271, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 2147480) #9
  %61 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %var_ops, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %core_pwrctl_status to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %core_pwrctl_status, align 4
  %call8 = tail call i32 %64(ptr noundef %host, i32 noundef %66) #9
  %and9 = and i32 %call8, %and
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end33.while.end_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end33.while.end_crit_edge, %sdhci_msm_dump_pwr_ctrl_regs.exit, %entry.while.end_crit_edge
  %and37 = and i32 %call3, 2
  %67 = shl nuw nsw i32 %and37, 2
  %and41 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %pwr_state.1 = select i1 %tobool42.not, i32 %and37, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pwr_state.1)
  %tobool45.not = icmp eq i32 %pwr_state.1, 0
  br i1 %tobool45.not, label %while.end.if.end64_crit_edge, label %if.then46

while.end.if.end64_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then46:                                        ; preds = %while.end
  %supply.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %68 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %supply.i, align 16
  %cmp.i.i = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then46.if.then49_crit_edge, label %sdhci_msm_set_vmmc.exit

if.then46.if.then49_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

sdhci_msm_set_vmmc.exit:                          ; preds = %if.then46
  %vdd.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 1
  %70 = ptrtoint ptr %vdd.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vdd.i, align 4
  %call3.i229 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %69, i16 noundef zeroext %71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i229)
  %tobool48.not = icmp eq i32 %call3.i229, 0
  br i1 %tobool48.not, label %sdhci_msm_set_vmmc.exit.if.then49_crit_edge, label %sdhci_msm_set_vmmc.exit.if.end64_crit_edge

sdhci_msm_set_vmmc.exit.if.end64_crit_edge:       ; preds = %sdhci_msm_set_vmmc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

sdhci_msm_set_vmmc.exit.if.then49_crit_edge:      ; preds = %sdhci_msm_set_vmmc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then49

if.then49:                                        ; preds = %sdhci_msm_set_vmmc.exit.if.then49_crit_edge, %if.then46.if.then49_crit_edge
  %and50 = and i32 %pwr_state.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %vqmmc.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %72 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vqmmc.i, align 4
  %cmp.i.i232 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i232, label %if.then49.if.then55_crit_edge, label %lor.lhs.false.i

if.then49.if.then55_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

lor.lhs.false.i:                                  ; preds = %if.then49
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 5
  %74 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %power_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %75)
  %cmp.i = icmp eq i8 %75, 3
  br i1 %cmp.i, label %lor.lhs.false.i.if.then55_crit_edge, label %if.end.i233

lor.lhs.false.i.if.then55_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.end.i233:                                      ; preds = %lor.lhs.false.i
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %76 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %caps.i.i, align 32
  %78 = and i32 %77, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.not.i = icmp eq i32 %78, 0
  br i1 %tobool.not.not.i, label %if.end.i233.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i233.if.else.i_crit_edge:                  ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i233
  %card.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 37
  %79 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card.i, align 4
  %tobool3.not.i = icmp eq ptr %80, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.rhs.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp5.i = icmp eq i32 %82, 0
  br i1 %cmp5.i, label %if.then9.i, label %land.rhs.i.if.else.i_crit_edge

land.rhs.i.if.else.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then9.i:                                       ; preds = %land.rhs.i
  %cond.i.i = select i1 %tobool51.not, i32 0, i32 325000
  %call.i.i = tail call i32 @regulator_set_load(ptr noundef %73, i32 noundef %cond.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then9.i.if.then55_crit_edge, label %do.end.i.i

if.then9.i.if.then55_crit_edge:                   ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

do.end.i.i:                                       ; preds = %if.then9.i
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 128
  %init_name.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %85 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.i.dev_name.exit.i.i_crit_edge

do.end.i.i.dev_name.exit.i.i_crit_edge:           ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %87 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %class_dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %88, %if.end.i.i.i ], [ %86, %do.end.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.90, ptr noundef %retval.0.i.i.i, i32 noundef %call.i.i) #12
  br label %if.end64

if.else.i:                                        ; preds = %land.rhs.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.end.i233.if.else.i_crit_edge
  %and50.lobit = lshr i32 %pwr_state.1, 1
  %89 = trunc i32 %and50.lobit to i8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ios.i.i) #9
  %90 = call ptr @memset(ptr %ios.i.i, i32 255, i32 20)
  %vqmmc_enabled.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 3, i32 1, i32 1
  %91 = ptrtoint ptr %vqmmc_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %vqmmc_enabled.i.i, align 4, !range !328
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %89)
  %cmp.i25.i = icmp eq i8 %92, %89
  br i1 %cmp.i25.i, label %if.else.i.if.end53.thread260_crit_edge, label %if.end.i.i234

if.else.i.if.end53.thread260_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.thread260

if.end.i.i234:                                    ; preds = %if.else.i
  br i1 %tobool51.not, label %if.else26.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i234
  %caps_0.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 18
  %93 = ptrtoint ptr %caps_0.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %caps_0.i.i, align 4
  %and.i26.i = and i32 %94, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i)
  %tobool6.not.i.i = icmp eq i32 %and.i26.i, 0
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %if.then5.i.i.if.end14.sink.split.i.i_crit_edge

if.then5.i.i.if.end14.sink.split.i.i_crit_edge:   ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then5.i.i
  %and9.i.i = and i32 %94, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else.i.i.if.end14.i.i_crit_edge, label %if.else.i.i.if.end14.sink.split.i.i_crit_edge

if.else.i.i.if.end14.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.sink.split.i.i

if.else.i.i.if.end14.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.end14.sink.split.i.i:                          ; preds = %if.else.i.i.if.end14.sink.split.i.i_crit_edge, %if.then5.i.i.if.end14.sink.split.i.i_crit_edge
  %.sink.i.i = phi i8 [ 0, %if.then5.i.i.if.end14.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end14.sink.split.i.i_crit_edge ]
  %signal_voltage12.i.i = getelementptr inbounds %struct.mmc_ios, ptr %ios.i.i, i32 0, i32 8
  %95 = ptrtoint ptr %signal_voltage12.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %.sink.i.i, ptr %signal_voltage12.i.i, align 1
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end14.sink.split.i.i, %if.else.i.i.if.end14.i.i_crit_edge
  %and16.i.i = and i32 %94, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end14.i.i.if.end24.i.i_crit_edge, label %if.then18.i.i

if.end14.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.end14.i.i
  %call.i27.i = call i32 @mmc_regulator_set_vqmmc(ptr noundef %1, ptr noundef nonnull %ios.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp19.i.i = icmp slt i32 %call.i27.i, 0
  br i1 %cmp19.i.i, label %do.end.i30.i, label %if.then18.i.i.if.end24.i.i_crit_edge

if.then18.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

do.end.i30.i:                                     ; preds = %if.then18.i.i
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 128
  %init_name.i.i28.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %98 = ptrtoint ptr %init_name.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i.i28.i, align 8
  %tobool.not.i.i29.i = icmp eq ptr %99, null
  br i1 %tobool.not.i.i29.i, label %if.end.i.i32.i, label %do.end.i30.i.dev_name.exit.i34.i_crit_edge

do.end.i30.i.dev_name.exit.i34.i_crit_edge:       ; preds = %do.end.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i34.i

if.end.i.i32.i:                                   ; preds = %do.end.i30.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i31.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %class_dev.i31.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %class_dev.i31.i, align 4
  br label %dev_name.exit.i34.i

dev_name.exit.i34.i:                              ; preds = %if.end.i.i32.i, %do.end.i30.i.dev_name.exit.i34.i_crit_edge
  %retval.0.i.i33.i = phi ptr [ %101, %if.end.i.i32.i ], [ %99, %do.end.i30.i.dev_name.exit.i34.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.92, ptr noundef %retval.0.i.i33.i, i32 noundef %call.i27.i) #12
  br label %if.end53

if.end24.i.i:                                     ; preds = %if.then18.i.i.if.end24.i.i_crit_edge, %if.end14.i.i.if.end24.i.i_crit_edge
  %102 = ptrtoint ptr %vqmmc.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %vqmmc.i, align 4
  %call25.i.i = call i32 @regulator_enable(ptr noundef %103) #9
  br label %if.end30.i.i

if.else26.i.i:                                    ; preds = %if.end.i.i234
  call void @__sanitizer_cov_trace_pc() #11
  %call29.i.i = tail call i32 @regulator_disable(ptr noundef %73) #9
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.else26.i.i, %if.end24.i.i
  %ret.0.i.i = phi i32 [ %call25.i.i, %if.end24.i.i ], [ %call29.i.i, %if.else26.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool31.not.i.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool31.not.i.i, label %if.else41.i.i, label %do.end35.i.i

do.end35.i.i:                                     ; preds = %if.end30.i.i
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 128
  %init_name.i64.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %106 = ptrtoint ptr %init_name.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %init_name.i64.i.i, align 8
  %tobool.not.i65.i.i = icmp eq ptr %107, null
  br i1 %tobool.not.i65.i.i, label %if.end.i66.i.i, label %do.end35.i.i.dev_name.exit68.i.i_crit_edge

do.end35.i.i.dev_name.exit68.i.i_crit_edge:       ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit68.i.i

if.end.i66.i.i:                                   ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev37.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %108 = ptrtoint ptr %class_dev37.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %class_dev37.i.i, align 4
  br label %dev_name.exit68.i.i

dev_name.exit68.i.i:                              ; preds = %if.end.i66.i.i, %do.end35.i.i.dev_name.exit68.i.i_crit_edge
  %retval.0.i67.i.i = phi ptr [ %109, %if.end.i66.i.i ], [ %107, %do.end35.i.i.dev_name.exit68.i.i_crit_edge ]
  %cond.i36.i = select i1 %tobool51.not, ptr @.str.98, ptr @.str.97
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.95, ptr noundef %retval.0.i67.i.i, ptr noundef nonnull %cond.i36.i, i32 noundef %ret.0.i.i) #12
  br label %if.end53

if.else41.i.i:                                    ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %vqmmc_enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %89, ptr %vqmmc_enabled.i.i, align 4
  br label %if.end53.thread260

if.end53.thread260:                               ; preds = %if.else41.i.i, %if.else.i.if.end53.thread260_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ios.i.i) #9
  br label %if.then55

if.end53:                                         ; preds = %dev_name.exit68.i.i, %dev_name.exit.i34.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ios.i.i) #9
  br label %if.end64

if.then55:                                        ; preds = %if.end53.thread260, %if.then9.i.if.then55_crit_edge, %lor.lhs.false.i.if.then55_crit_edge, %if.then49.if.then55_crit_edge
  %111 = ptrtoint ptr %private.i227 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %private.i227, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  br i1 %tobool51.not, label %if.else.i238, label %if.then.i

if.then.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 @pinctrl_pm_select_default_state(ptr noundef %dev.i) #9
  br label %if.end59

if.else.i238:                                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i237 = call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev.i) #9
  br label %if.end59

if.end59:                                         ; preds = %if.else.i238, %if.then.i
  %ret.1 = phi i32 [ %call.i, %if.then.i ], [ %call3.i237, %if.else.i238 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool60.not = icmp eq i32 %ret.1, 0
  %spec.select = select i1 %tobool60.not, i32 1, i32 2
  br label %if.end64

if.end64:                                         ; preds = %if.end59, %if.end53, %dev_name.exit.i.i, %sdhci_msm_set_vmmc.exit.if.end64_crit_edge, %while.end.if.end64_crit_edge
  %irq_ack.0 = phi i32 [ 0, %while.end.if.end64_crit_edge ], [ 2, %if.end53 ], [ 2, %dev_name.exit.i.i ], [ 2, %sdhci_msm_set_vmmc.exit.if.end64_crit_edge ], [ %spec.select, %if.end59 ]
  %113 = and i32 %call3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %114 = icmp eq i32 %113, 0
  %spec.select226 = select i1 %114, i32 %67, i32 4
  %and69 = and i32 %call3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %io_level.3 = select i1 %tobool70.not, i32 %spec.select226, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %io_level.3)
  %tobool73.not = icmp eq i32 %io_level.3, 0
  %or75 = or i32 %irq_ack.0, 4
  %irq_ack.1 = select i1 %tobool73.not, i32 %irq_ack.0, i32 %or75
  br i1 %tobool73.not, label %if.end64.if.end95_crit_edge, label %land.lhs.true

if.end64.if.end95_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end64
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %115 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vqmmc, align 4
  %cmp.i240 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  %tobool45.not.not = xor i1 %tobool45.not, true
  %brmerge = select i1 %cmp.i240, i1 true, i1 %tobool45.not.not
  br i1 %brmerge, label %land.lhs.true.if.end95_crit_edge, label %if.then81

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then81:                                        ; preds = %land.lhs.true
  %ios = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %call82 = call i32 @mmc_regulator_set_vqmmc(ptr noundef %1, ptr noundef %ios) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end87, label %if.then81.if.end95_crit_edge

if.then81.if.end95_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

do.end87:                                         ; preds = %if.then81
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 128
  %init_name.i241 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %119 = ptrtoint ptr %init_name.i241 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i241, align 8
  %tobool.not.i242 = icmp eq ptr %120, null
  br i1 %tobool.not.i242, label %if.end.i243, label %do.end87.dev_name.exit245_crit_edge

do.end87.dev_name.exit245_crit_edge:              ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit245

if.end.i243:                                      ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev88 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %121 = ptrtoint ptr %class_dev88 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %class_dev88, align 4
  br label %dev_name.exit245

dev_name.exit245:                                 ; preds = %if.end.i243, %do.end87.dev_name.exit245_crit_edge
  %retval.0.i244 = phi ptr [ %122, %if.end.i243 ], [ %120, %do.end87.dev_name.exit245_crit_edge ]
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 8
  %123 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %signal_voltage, align 1
  %conv = zext i8 %124 to i32
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 1
  %125 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %vdd, align 4
  %conv92 = zext i16 %126 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.85, ptr noundef %retval.0.i244, i32 noundef %call82, i32 noundef %conv, i32 noundef %conv92, i32 noundef %and) #12
  %or93 = or i32 %irq_ack.1, 8
  br label %if.end95

if.end95:                                         ; preds = %dev_name.exit245, %if.then81.if.end95_crit_edge, %land.lhs.true.if.end95_crit_edge, %if.end64.if.end95_crit_edge
  %irq_ack.2 = phi i32 [ %or75, %land.lhs.true.if.end95_crit_edge ], [ %or93, %dev_name.exit245 ], [ %or75, %if.then81.if.end95_crit_edge ], [ %irq_ack.0, %if.end64.if.end95_crit_edge ]
  %127 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %var_ops, align 4
  %msm_writel_relaxed97 = getelementptr inbounds %struct.sdhci_msm_variant_ops, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %msm_writel_relaxed97 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %msm_writel_relaxed97, align 4
  %core_pwrctl_ctl = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 13
  %131 = ptrtoint ptr %core_pwrctl_ctl to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %core_pwrctl_ctl, align 4
  call void %130(i32 noundef %irq_ack.2, ptr noundef %host, i32 noundef %132) #9
  %caps_0 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 18
  %133 = ptrtoint ptr %caps_0 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %caps_0, align 4
  %and98 = and i32 %134, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end95.if.end127_crit_edge, label %if.then100

if.end95.if.end127_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then100:                                       ; preds = %if.end95
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %135 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 17
  %137 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr = getelementptr i8, ptr %136, i32 %138
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %140 = call i32 @llvm.bswap.i32(i32 %139)
  %and103 = and i32 %io_level.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else111, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %if.then100
  %141 = ptrtoint ptr %caps_0 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %caps_0, align 4
  %and107 = and i32 %142, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %land.lhs.true105.lor.lhs.false_crit_edge, label %if.then109

land.lhs.true105.lor.lhs.false_crit_edge:         ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.then109:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #11
  %and110 = and i32 %140, -65537
  br label %if.end120

if.else111:                                       ; preds = %if.then100
  %and112 = and i32 %io_level.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %if.else111.lor.lhs.false_crit_edge, label %if.else111.if.then117_crit_edge

if.else111.if.then117_crit_edge:                  ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

if.else111.lor.lhs.false_crit_edge:               ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else111.lor.lhs.false_crit_edge, %land.lhs.true105.lor.lhs.false_crit_edge
  %143 = ptrtoint ptr %caps_0 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %caps_0, align 4
  %and115 = and i32 %144, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %lor.lhs.false.if.end127_crit_edge, label %lor.lhs.false.if.then117_crit_edge

lor.lhs.false.if.then117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then117

lor.lhs.false.if.end127_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then117:                                       ; preds = %lor.lhs.false.if.then117_crit_edge, %if.else111.if.then117_crit_edge
  %or118 = or i32 %140, 65536
  br label %if.end120

if.end120:                                        ; preds = %if.then117, %if.then109
  %new_config.0 = phi i32 [ %and110, %if.then109 ], [ %or118, %if.then117 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %new_config.0)
  %tobool121.not = icmp eq i32 %140, %new_config.0
  br i1 %tobool121.not, label %if.end120.if.end127_crit_edge, label %if.then122

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end127

if.then122:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  %145 = call i32 @llvm.bswap.i32(i32 %new_config.0)
  %146 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ioaddr, align 16
  %148 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr125 = getelementptr i8, ptr %147, i32 %149
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %145) #9, !srcloc !329
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.end120.if.end127_crit_edge, %lor.lhs.false.if.end127_crit_edge, %if.end95.if.end127_crit_edge
  br i1 %tobool45.not, label %if.end127.if.end130_crit_edge, label %if.then129

if.end127.if.end130_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  %curr_pwr_state = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13, i32 1
  %150 = ptrtoint ptr %curr_pwr_state to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %pwr_state.1, ptr %curr_pwr_state, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end127.if.end130_crit_edge
  br i1 %tobool73.not, label %if.end130.do.body134_crit_edge, label %if.then132

if.end130.do.body134_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body134

if.then132:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %curr_io_level = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 14
  %151 = ptrtoint ptr %curr_io_level to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %io_level.3, ptr %curr_io_level, align 4
  br label %do.body134

do.body134:                                       ; preds = %if.then132, %if.end130.do.body134_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_handle_pwr_irq.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_handle_pwr_irq, %if.then144)) #9
          to label %do.end151 [label %if.then144], !srcloc !331

if.then144:                                       ; preds = %do.body134
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 128
  %mmc146 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 11
  %154 = ptrtoint ptr %mmc146 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mmc146, align 4
  %init_name.i246 = getelementptr inbounds %struct.mmc_host, ptr %155, i32 0, i32 1, i32 3
  %156 = ptrtoint ptr %init_name.i246 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %init_name.i246, align 8
  %tobool.not.i247 = icmp eq ptr %157, null
  br i1 %tobool.not.i247, label %if.end.i248, label %if.then144.dev_name.exit250_crit_edge

if.then144.dev_name.exit250_crit_edge:            ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit250

if.end.i248:                                      ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev147 = getelementptr inbounds %struct.mmc_host, ptr %155, i32 0, i32 1
  %158 = ptrtoint ptr %class_dev147 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %class_dev147, align 4
  br label %dev_name.exit250

dev_name.exit250:                                 ; preds = %if.end.i248, %if.then144.dev_name.exit250_crit_edge
  %retval.0.i249 = phi ptr [ %159, %if.end.i248 ], [ %157, %if.then144.dev_name.exit250_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_handle_pwr_irq.__UNIQUE_ID_ddebug317, ptr noundef %153, ptr noundef nonnull @.str.87, ptr noundef %retval.0.i249, ptr noundef nonnull @.str.83, i32 noundef %irq, i32 noundef %and, i32 noundef %irq_ack.2) #9
  br label %do.end151

do.end151:                                        ; preds = %dev_name.exit250, %do.body134
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_pwr_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sdhci_msm_handle_pwr_irq(ptr noundef %data, i32 noundef %irq)
  %pwr_irq_flag = getelementptr inbounds %struct.sdhci_host, ptr %data, i32 1, i32 13, i32 17, i32 4, i32 7
  %0 = ptrtoint ptr %pwr_irq_flag to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %pwr_irq_flag, align 4
  %pwr_irq_wait.i = getelementptr inbounds %struct.sdhci_host, ptr %data, i32 1, i32 13, i32 15
  tail call void @__wake_up(ptr noundef %pwr_irq_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_start_signal_voltage_switch(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !338

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i16 %5(ptr noundef %private.i, i32 noundef 62) #9
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %7, i32 62
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !330
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i16 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %signal_voltage = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 8
  %10 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %signal_voltage, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %11, label %sdhci_readw.exit.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
  ]

sdhci_readw.exit.cleanup_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %sdhci_readw.exit
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %15 = and i16 %retval.0.i, -9
  br label %sw.epilog

sw.bb7:                                           ; preds = %sdhci_readw.exit
  %flags8 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags8, align 4
  %and9 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %sw.bb7.cleanup_crit_edge, label %if.end12

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %18 = or i16 %retval.0.i, 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %if.end3
  %ctrl.0 = phi i16 [ %18, %if.end12 ], [ %15, %if.end3 ]
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i41 = icmp eq ptr %22, null
  br i1 %tobool.not.i41, label %do.body.i, label %if.then.i42, !prof !338

if.then.i42:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %22(ptr noundef %private.i, i16 noundef zeroext %ctrl.0, i32 noundef 62) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %23 = tail call i16 @llvm.bswap.i16(i16 %ctrl.0) #9
  %ioaddr.i43 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %ioaddr.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr.i43, align 16
  %add.ptr.i44 = getelementptr i8, ptr %25, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i44, i16 %23) #9, !srcloc !341
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i42
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #9
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %read_w.i46 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %read_w.i46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_w.i46, align 4
  %tobool.not.i47 = icmp eq ptr %29, null
  br i1 %tobool.not.i47, label %if.else.i52, label %if.then.i49, !prof !338

if.then.i49:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i48 = tail call zeroext i16 %29(ptr noundef %private.i, i32 noundef 62) #9
  br label %sdhci_readw.exit54

if.else.i52:                                      ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i50 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %ioaddr.i50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i50, align 16
  %add.ptr.i51 = getelementptr i8, ptr %31, i32 62
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i51) #9, !srcloc !330
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  br label %sdhci_readw.exit54

sdhci_readw.exit54:                               ; preds = %if.else.i52, %if.then.i49
  %retval.0.i53 = phi i16 [ %call.i48, %if.then.i49 ], [ %33, %if.else.i52 ]
  %34 = xor i16 %retval.0.i53, %ctrl.0
  %35 = and i16 %34, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp22 = icmp eq i16 %35, 0
  br i1 %cmp22, label %sdhci_readw.exit54.cleanup_crit_edge, label %do.end

sdhci_readw.exit54.cleanup_crit_edge:             ; preds = %sdhci_readw.exit54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %sdhci_readw.exit54
  %36 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc, align 128
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i55 = icmp eq ptr %39, null
  br i1 %tobool.not.i55, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  %40 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i56 = phi ptr [ %41, %if.end.i ], [ %39, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.100, ptr noundef %retval.0.i56) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %sdhci_readw.exit54.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %sdhci_readw.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %dev_name.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %sdhci_readw.exit.cleanup_crit_edge ], [ 0, %sdhci_readw.exit54.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_execute_tuning(ptr noundef %mmc, i32 noundef %opcode) #2 align 64 {
entry:
  %tuned_phases = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tuned_phases) #9
  %mmc1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %0 = call ptr @memset(ptr %tuned_phases, i32 255, i32 16)
  %1 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmc1, align 8
  %ios2 = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28
  %3 = ptrtoint ptr %ios2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ios.sroa.0.0.copyload136 = load i32, ptr %ios2, align 4
  %private.i188 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %clock.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000001, i32 %5)
  %cmp.i = icmp ult i32 %5, 100000001
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %lor.lhs.false.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %entry
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 7
  %6 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timing.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %7, label %lor.lhs.false.i.if.then_crit_edge [
    i8 10, label %lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge
    i8 9, label %lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge261
    i8 6, label %lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge262
  ]

lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge262: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_is_tuning_needed.exit

lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge261: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_is_tuning_needed.exit

lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_is_tuning_needed.exit

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sdhci_msm_is_tuning_needed.exit:                  ; preds = %lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge, %lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge261, %lor.lhs.false.i.sdhci_msm_is_tuning_needed.exit_crit_edge262
  %enhanced_strobe.i = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 28, i32 10
  %9 = ptrtoint ptr %enhanced_strobe.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enhanced_strobe.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end, label %sdhci_msm_is_tuning_needed.exit.if.then_crit_edge

sdhci_msm_is_tuning_needed.exit.if.then_crit_edge: ; preds = %sdhci_msm_is_tuning_needed.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sdhci_msm_is_tuning_needed.exit.if.then_crit_edge, %lor.lhs.false.i.if.then_crit_edge, %entry.if.then_crit_edge
  %use_cdr = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 48, i32 1, i32 4, i32 1, i32 1
  %11 = ptrtoint ptr %use_cdr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %use_cdr, align 4
  %offset.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 48, i32 1, i32 4, i32 1
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %offset.i.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %core_dll_config.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %13, i32 0, i32 15
  %16 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %or.i = and i32 %19, -655361
  %config.0.i = or i32 %or.i, 524288
  call void @__sanitizer_cov_trace_cmp4(i32 %config.0.i, i32 %19)
  %cmp.not.i = icmp eq i32 %config.0.i, %19
  br i1 %cmp.not.i, label %if.then.cleanup_crit_edge, label %if.then4.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %config.0.i) #9
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 16
  %23 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %20) #9, !srcloc !329
  br label %cleanup

if.end:                                           ; preds = %sdhci_msm_is_tuning_needed.exit
  %use_cdr6 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 48, i32 1, i32 4, i32 1, i32 1
  %25 = ptrtoint ptr %use_cdr6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %use_cdr6, align 4
  %tuning_done = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i188, i32 0, i32 10
  %26 = ptrtoint ptr %tuning_done to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %tuning_done, align 1
  %flags = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdhci_msm_hc_select_mode(ptr noundef %private.i)
  tail call fastcc void @msm_set_clock_rate_for_bus_mode(ptr noundef %private.i, i32 noundef %ios.sroa.0.0.copyload136)
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %and9 = and i32 %30, -8193
  store i32 %and9, ptr %flags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %call11224 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11224)
  %tobool12.not225 = icmp eq i32 %call11224, 0
  br i1 %tobool12.not225, label %do.body.preheader.lr.ph, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.preheader.lr.ph:                          ; preds = %if.end10
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1, i32 3
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 1
  br label %do.body.preheader

do.body.preheader:                                ; preds = %retry.backedge.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %tuning_seq_cnt.0226 = phi i32 [ 10, %do.body.preheader.lr.ph ], [ %tuning_seq_cnt.0.be, %retry.backedge.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.cond31.do.body_crit_edge, %do.body.preheader
  %indvars.iv = phi i32 [ 0, %do.body.preheader ], [ %indvars.iv.next, %do.cond31.do.body_crit_edge ]
  %tuned_phase_cnt.1 = phi i8 [ 0, %do.body.preheader ], [ %tuned_phase_cnt.2, %do.cond31.do.body_crit_edge ]
  %31 = trunc i32 %indvars.iv to i8
  %call15 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %private.i, i8 noundef zeroext %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %call19 = tail call i32 @mmc_send_tuning(ptr noundef %mmc, i32 noundef %opcode, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end18.do.cond31_crit_edge

if.end18.do.cond31_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond31

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i8 %tuned_phase_cnt.1, 1
  %idxprom = zext i8 %tuned_phase_cnt.1 to i32
  %arrayidx = getelementptr [16 x i8], ptr %tuned_phases, i32 0, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_execute_tuning, %if.then27)) #9
          to label %do.cond31 [label %if.then27], !srcloc !331

if.then27:                                        ; preds = %if.then21
  %33 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc, align 128
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i190 = icmp eq ptr %36, null
  br i1 %tobool.not.i190, label %if.end.i, label %if.then27.dev_name.exit_crit_edge

if.then27.dev_name.exit_crit_edge:                ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then27.dev_name.exit_crit_edge
  %retval.0.i191 = phi ptr [ %38, %if.end.i ], [ %36, %if.then27.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug309, ptr noundef %34, ptr noundef nonnull @.str.103, ptr noundef %retval.0.i191, i32 noundef %indvars.iv) #9
  br label %do.cond31

do.cond31:                                        ; preds = %dev_name.exit, %if.then21, %if.end18.do.cond31_crit_edge
  %tuned_phase_cnt.2 = phi i8 [ %tuned_phase_cnt.1, %if.end18.do.cond31_crit_edge ], [ %inc, %dev_name.exit ], [ %inc, %if.then21 ]
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %do.end35, label %do.cond31.do.body_crit_edge

do.cond31.do.body_crit_edge:                      ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end35:                                         ; preds = %do.cond31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tuned_phase_cnt.2)
  %tobool36.not = icmp eq i8 %tuned_phase_cnt.2, 0
  br i1 %tobool36.not, label %if.else95, label %if.then37

if.then37:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %tuned_phase_cnt.2)
  %cmp39 = icmp eq i8 %tuned_phase_cnt.2, 16
  br i1 %cmp39, label %do.body42, label %if.then37.if.end64_crit_edge

if.then37.if.end64_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

do.body42:                                        ; preds = %if.then37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_execute_tuning, %if.then54)) #9
          to label %do.end60 [label %if.then54], !srcloc !331

if.then54:                                        ; preds = %do.body42
  %39 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmc, align 128
  %41 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i193 = icmp eq ptr %42, null
  br i1 %tobool.not.i193, label %if.end.i194, label %if.then54.dev_name.exit196_crit_edge

if.then54.dev_name.exit196_crit_edge:             ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit196

if.end.i194:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit196

dev_name.exit196:                                 ; preds = %if.end.i194, %if.then54.dev_name.exit196_crit_edge
  %retval.0.i195 = phi ptr [ %44, %if.end.i194 ], [ %42, %if.then54.dev_name.exit196_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug310, ptr noundef %40, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i195) #9
  br label %do.end60

do.end60:                                         ; preds = %dev_name.exit196, %do.body42
  %dec = add i32 %tuning_seq_cnt.0226, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool61.not = icmp eq i32 %dec, 0
  br i1 %tobool61.not, label %do.end60.if.end64_crit_edge, label %do.end60.retry.backedge_crit_edge

do.end60.retry.backedge_crit_edge:                ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

do.end60.if.end64_crit_edge:                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.end64:                                         ; preds = %do.end60.if.end64_crit_edge, %if.then37.if.end64_crit_edge
  %call65 = call fastcc i32 @msm_find_most_appropriate_phase(ptr noundef %private.i, ptr noundef nonnull %tuned_phases, i8 noundef zeroext %tuned_phase_cnt.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %if.end64.cleanup_crit_edge, label %if.else

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end64
  %conv69 = trunc i32 %call65 to i8
  %call71 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %private.i, i8 noundef zeroext %conv69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %saved_tuning_phase = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i188, i32 0, i32 12
  %45 = ptrtoint ptr %saved_tuning_phase to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv69, ptr %saved_tuning_phase, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_execute_tuning, %if.then87)) #9
          to label %if.end119 [label %if.then87], !srcloc !331

if.then87:                                        ; preds = %if.end74
  %46 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmc, align 128
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i198 = icmp eq ptr %49, null
  br i1 %tobool.not.i198, label %if.end.i199, label %if.then87.if.end119.thread213_crit_edge

if.then87.if.end119.thread213_crit_edge:          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119.thread213

if.end.i199:                                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %class_dev, align 4
  br label %if.end119.thread213

if.end119.thread213:                              ; preds = %if.end.i199, %if.then87.if.end119.thread213_crit_edge
  %retval.0.i200 = phi ptr [ %51, %if.end.i199 ], [ %49, %if.then87.if.end119.thread213_crit_edge ]
  %conv91 = and i32 %call65, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug311, ptr noundef %47, ptr noundef nonnull @.str.105, ptr noundef %retval.0.i200, i32 noundef %conv91) #9
  br label %if.then121

if.else95:                                        ; preds = %do.end35
  %dec96 = add i32 %tuning_seq_cnt.0226, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec96)
  %tobool97.not = icmp eq i32 %dec96, 0
  br i1 %tobool97.not, label %do.body100, label %if.else95.retry.backedge_crit_edge

if.else95.retry.backedge_crit_edge:               ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  br label %retry.backedge

retry.backedge:                                   ; preds = %if.else95.retry.backedge_crit_edge, %do.end60.retry.backedge_crit_edge
  %tuning_seq_cnt.0.be = phi i32 [ %dec96, %if.else95.retry.backedge_crit_edge ], [ %dec, %do.end60.retry.backedge_crit_edge ]
  %call11 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %private.i)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %retry.backedge.do.body.preheader_crit_edge, label %retry.backedge.cleanup_crit_edge

retry.backedge.cleanup_crit_edge:                 ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

retry.backedge.do.body.preheader_crit_edge:       ; preds = %retry.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.preheader

do.body100:                                       ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_execute_tuning, %if.then112)) #9
          to label %if.end119 [label %if.then112], !srcloc !331

if.then112:                                       ; preds = %do.body100
  %52 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmc, align 128
  %54 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i203 = icmp eq ptr %55, null
  br i1 %tobool.not.i203, label %if.end.i204, label %if.then112.if.end119.thread_crit_edge

if.then112.if.end119.thread_crit_edge:            ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119.thread

if.end.i204:                                      ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %class_dev, align 4
  br label %if.end119.thread

if.end119.thread:                                 ; preds = %if.end.i204, %if.then112.if.end119.thread_crit_edge
  %retval.0.i205 = phi ptr [ %57, %if.end.i204 ], [ %55, %if.then112.if.end119.thread_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug312, ptr noundef %53, ptr noundef nonnull @.str.106, ptr noundef %retval.0.i205) #9
  br label %cleanup

if.end119:                                        ; preds = %do.body100, %if.end74
  %rc.0 = phi i32 [ 0, %if.end74 ], [ -5, %do.body100 ]
  br i1 %tobool36.not, label %if.end119.cleanup_crit_edge, label %if.end119.if.then121_crit_edge

if.end119.if.then121_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then121

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then121:                                       ; preds = %if.end119.if.then121_crit_edge, %if.end119.thread213
  %rc.0215 = phi i32 [ 0, %if.end119.thread213 ], [ %rc.0, %if.end119.if.then121_crit_edge ]
  %58 = ptrtoint ptr %tuning_done to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %tuning_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end119.cleanup_crit_edge, %if.end119.thread, %retry.backedge.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then4.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %if.end64.cleanup_crit_edge ], [ %call71, %if.else.cleanup_crit_edge ], [ %rc.0215, %if.then121 ], [ %rc.0, %if.end119.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then4.i ], [ -5, %if.end119.thread ], [ %call11224, %if.end10.cleanup_crit_edge ], [ %call15, %do.body.cleanup_crit_edge ], [ %call11, %retry.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tuned_phases) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_cqe_add_host(ptr noundef %host, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i83 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %caps = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 56
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_desc_sz = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 49
  %2 = ptrtoint ptr %alloc_desc_sz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %alloc_desc_sz, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @sdhci_setup_host(ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup47_crit_edge

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup47

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @cqhci_pltfm_init(ptr noundef %pdev) #9
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %cqhci_readl.exit.i

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call6 to i32
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, i32 noundef %3) #12
  br label %cleanup

cqhci_readl.exit.i:                               ; preds = %if.end5
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 11
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 4
  %or = or i32 %7, 25165824
  store i32 %or, ptr %caps2, align 4
  %8 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sdhci_msm_cqhci_ops, ptr %call6, align 4
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %11 = load ptr, ptr %mmc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %mmio.i.i = getelementptr inbounds %struct.cqhci_host, ptr %call6, i32 0, i32 1
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !332
  %17 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %cqhci_readl.exit.i.if.end16_crit_edge, label %if.end.i

cqhci_readl.exit.i.if.end16_crit_edge:            ; preds = %cqhci_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end.i:                                         ; preds = %cqhci_readl.exit.i
  %18 = ptrtoint ptr %private.i83 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private.i83, align 4
  %call2.i = tail call ptr @platform_get_resource_byname(ptr noundef %19, i32 noundef 512, ptr noundef nonnull @.str.78) #9
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.125) #12
  br label %do.end24.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @qcom_scm_ice_available() #9
  br i1 %call6.i, label %if.end11.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.128) #12
  br label %do.end24.i

if.end11.i:                                       ; preds = %if.end5.i
  %call12.i = tail call ptr @devm_ioremap_resource(ptr noundef %13, ptr noundef nonnull %call2.i) #9
  %ice_mem.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 23
  %20 = ptrtoint ptr %ice_mem.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call12.i, ptr %ice_mem.i, align 4
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sdhci_msm_ice_init.exit, label %if.end18.i

if.end18.i:                                       ; preds = %if.end11.i
  %21 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %add.ptr.i37.i = getelementptr i8, ptr %call12.i, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37.i) #9, !srcloc !332
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !342
  %shr.i.i = lshr i32 %26, 24
  %shr2.i.i = lshr i32 %26, 16
  %and.i.i = and i32 %shr2.i.i, 255
  %and3.i.i = and i32 %26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr.i.i)
  %cmp.not.i.i = icmp eq i32 %shr.i.i, 3
  br i1 %cmp.not.i.i, label %do.end6.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.133, i32 noundef %shr.i.i, i32 noundef %and.i.i, i32 noundef %and3.i.i) #12
  br label %do.end24.i

do.end6.i.i:                                      ; preds = %if.end18.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.136, i32 noundef 3, i32 noundef %and.i.i, i32 noundef %and3.i.i) #12
  %27 = ptrtoint ptr %ice_mem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ice_mem.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %28, i32 16
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !343
  %30 = and i32 %29, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i38.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i38.i, label %if.end21.i, label %do.end18.i.i

do.end18.i.i:                                     ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.139) #12
  br label %do.end24.i

if.end21.i:                                       ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 17
  %31 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps2.i, align 4
  %or.i = or i32 %32, 134217728
  store i32 %or.i, ptr %caps2.i, align 4
  br label %if.end16

do.end24.i:                                       ; preds = %do.end18.i.i, %do.end.i.i, %do.end10.i, %do.end.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.131) #12
  br label %if.end16

sdhci_msm_ice_init.exit:                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call12.i to i32
  br label %cleanup

if.end16:                                         ; preds = %do.end24.i, %if.end21.i, %cqhci_readl.exit.i.if.end16_crit_edge
  %and11 = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12 = icmp ne i32 %and11, 0
  %mmc17 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %34 = ptrtoint ptr %mmc17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc17, align 8
  %call19 = tail call i32 @cqhci_init(ptr noundef %call6, ptr noundef %35, i1 noundef zeroext %tobool12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end28, label %do.end24

do.end24:                                         ; preds = %if.end16
  %dev25 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %36 = ptrtoint ptr %mmc17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc17, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i84 = icmp eq ptr %39, null
  br i1 %tobool.not.i84, label %if.end.i85, label %do.end24.dev_name.exit_crit_edge

do.end24.dev_name.exit_crit_edge:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i85:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i85, %do.end24.dev_name.exit_crit_edge
  %retval.0.i86 = phi ptr [ %41, %if.end.i85 ], [ %39, %do.end24.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.115, ptr noundef %retval.0.i86, i32 noundef %call19) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %42 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call6, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i87 = icmp eq ptr %45, null
  br i1 %tobool.not.i87, label %if.else.i, label %if.then.i, !prof !338

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %45(ptr noundef %call6, i32 noundef 2560) #9
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 2560
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i88 = phi i32 [ %call.i, %if.then.i ], [ %49, %if.else.i ]
  %or30 = or i32 %retval.0.i88, 24576
  %50 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call6, align 4
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i89 = icmp eq ptr %53, null
  br i1 %tobool.not.i89, label %if.else.i93, label %if.then.i90, !prof !338

if.then.i90:                                      ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %53(ptr noundef %call6, i32 noundef %or30, i32 noundef 2560) #9
  br label %cqhci_writel.exit

if.else.i93:                                      ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %54 = tail call i32 @llvm.bswap.i32(i32 %or30) #9
  %55 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %56, i32 2560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %54) #9, !srcloc !329
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i93, %if.then.i90
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %and32 = and i32 %58, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cqhci_writel.exit.if.end35_crit_edge, label %if.then34

cqhci_writel.exit.if.end35_crit_edge:             ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then34:                                        ; preds = %cqhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  %desc_sz = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 48
  %59 = ptrtoint ptr %desc_sz to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 12, ptr %desc_sz, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %cqhci_writel.exit.if.end35_crit_edge
  %call36 = tail call i32 @__sdhci_add_host(ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %if.end35
  %dev43 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %60 = ptrtoint ptr %mmc17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmc17, align 8
  %init_name.i95 = getelementptr inbounds %struct.mmc_host, ptr %61, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %init_name.i95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %init_name.i95, align 8
  %tobool.not.i96 = icmp eq ptr %63, null
  br i1 %tobool.not.i96, label %if.end.i97, label %do.end42.dev_name.exit99_crit_edge

do.end42.dev_name.exit99_crit_edge:               ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit99

if.end.i97:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev45 = getelementptr inbounds %struct.mmc_host, ptr %61, i32 0, i32 1
  %64 = ptrtoint ptr %class_dev45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %class_dev45, align 4
  br label %dev_name.exit99

dev_name.exit99:                                  ; preds = %if.end.i97, %do.end42.dev_name.exit99_crit_edge
  %retval.0.i98 = phi ptr [ %65, %if.end.i97 ], [ %63, %do.end42.dev_name.exit99_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.118, ptr noundef %retval.0.i98) #12
  br label %cleanup47

cleanup:                                          ; preds = %if.end35.cleanup_crit_edge, %dev_name.exit, %sdhci_msm_ice_init.exit, %if.then8
  %ret.0 = phi i32 [ %3, %if.then8 ], [ %33, %sdhci_msm_ice_init.exit ], [ %call19, %dev_name.exit ], [ %call36, %if.end35.cleanup_crit_edge ]
  tail call void @sdhci_cleanup_host(ptr noundef %host) #9
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup, %dev_name.exit99, %if.end.cleanup47_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup ], [ 0, %dev_name.exit99 ], [ %call2, %if.end.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !335
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !336
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !337
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_bulk_disable_unprepare(ptr noundef %clks) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_pltfm_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_writew(ptr noundef %host, i16 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__sdhci_msm_check_write(ptr noundef %host, i16 noundef zeroext %val, i32 noundef %reg)
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdhci_msm_check_power_status(ptr noundef %host, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_writeb(ptr noundef %host, i8 noundef zeroext %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %val to i16
  %call = tail call fastcc i32 @__sdhci_msm_check_write(ptr noundef %host, i16 noundef zeroext %conv, i32 noundef %reg)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #9, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdhci_msm_check_power_status(ptr noundef %host, i32 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_set_clock(ptr noundef %host, i32 noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock)
  %tobool.not = icmp eq i32 %clock, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %clk_rate = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %0 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %clk_rate, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %1 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %2, i32 0, i32 58
  %3 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %actual_clock, align 8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sdhci_msm_hc_select_mode(ptr noundef %host)
  tail call fastcc void @msm_set_clock_rate_for_bus_mode(ptr noundef %host, i32 noundef %clock)
  br label %out

out:                                              ; preds = %if.end, %if.then
  %ops.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %write_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %write_w.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_w.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i, !prof !338

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %host, i16 noundef zeroext 0, i32 noundef 44) #9
  br label %sdhci_writew.exit.i

do.body.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %ioaddr.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #9, !srcloc !341
  br label %sdhci_writew.exit.i

sdhci_writew.exit.i:                              ; preds = %do.body.i.i, %if.then.i.i
  br i1 %tobool.not, label %sdhci_writew.exit.i.__sdhci_msm_set_clock.exit_crit_edge, label %if.end.i

sdhci_writew.exit.i.__sdhci_msm_set_clock.exit_crit_edge: ; preds = %sdhci_writew.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sdhci_msm_set_clock.exit

if.end.i:                                         ; preds = %sdhci_writew.exit.i
  %10 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i.i, align 4
  %read_w.i.i = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read_w.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_w.i.i, align 4
  %tobool.not.i4.i = icmp eq ptr %13, null
  br i1 %tobool.not.i4.i, label %if.else.i.i, label %if.then.i5.i, !prof !338

if.then.i5.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i16 %13(ptr noundef %host, i32 noundef 44) #9
  br label %sdhci_readw.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i6.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i6.i, align 16
  %add.ptr.i7.i = getelementptr i8, ptr %15, i32 44
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7.i) #9, !srcloc !330
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  br label %sdhci_readw.exit.i

sdhci_readw.exit.i:                               ; preds = %if.else.i.i, %if.then.i5.i
  %retval.0.i.i = phi i16 [ %call.i.i, %if.then.i5.i ], [ %17, %if.else.i.i ]
  tail call void @sdhci_enable_clk(ptr noundef %host, i16 noundef zeroext %retval.0.i.i) #9
  br label %__sdhci_msm_set_clock.exit

__sdhci_msm_set_clock.exit:                       ; preds = %sdhci_readw.exit.i, %sdhci_writew.exit.i.__sdhci_msm_set_clock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_power_noreg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_cqe_irq(ptr noundef %host, i32 noundef %intmask) #2 align 64 {
entry:
  %cmd_error = alloca i32, align 4
  %data_error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_error) #9
  %0 = ptrtoint ptr %cmd_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_error) #9
  %1 = ptrtoint ptr %data_error to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %data_error, align 4
  %call = call zeroext i1 @sdhci_cqe_irq(ptr noundef %host, i32 noundef %intmask, ptr noundef nonnull %cmd_error, ptr noundef nonnull %data_error) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %call1 = call i32 @cqhci_irq(ptr noundef %3, i32 noundef %intmask, i32 noundef %5, i32 noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %intmask, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_error) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_error) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_get_max_clock(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef -1) #9
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdhci_msm_get_min_clock(ptr nocapture noundef readnone %host) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 400000
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_set_timeout(ptr noundef %host, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__sdhci_set_timeout(ptr noundef %host, ptr noundef %cmd) #9
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %read_b.i = getelementptr inbounds %struct.sdhci_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read_b.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_b.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !338

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i8 %3(ptr noundef %host, i32 noundef 46) #9
  br label %sdhci_readb.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %5, i32 46
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #9, !srcloc !345
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !346
  br label %sdhci_readb.exit

sdhci_readb.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %6, %if.else.i ]
  %conv = zext i8 %retval.0.i to i32
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %sdhci_readb.exit.if.end_crit_edge, label %land.lhs.true

sdhci_readb.exit.if.end_crit_edge:                ; preds = %sdhci_readb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %sdhci_readb.exit
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true2

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %9 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clock, align 4
  %11 = add i32 %10, -400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 49600000, i32 %11)
  %12 = icmp ult i32 %11, 49600000
  br i1 %12, label %land.lhs.true8, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true2
  %shl = shl i32 32768, %conv
  %mul = mul nuw nsw i32 %10, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %mul)
  %cmp10 = icmp ugt i32 %shl, %mul
  br i1 %cmp10, label %if.then, label %land.lhs.true8.if.end_crit_edge

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  %data_timeout = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 79
  %13 = ptrtoint ptr %data_timeout to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 22000000000, ptr %data_timeout, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true8.if.end_crit_edge, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %sdhci_readb.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_set_bus_width(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_reset(ptr noundef %host, i8 noundef zeroext %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps2, align 4
  %and = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %4 = and i8 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @cqhci_deactivate(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sdhci_reset(ptr noundef %host, i8 noundef zeroext %mask) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_set_uhs_signaling(ptr noundef %host, i32 noundef %uhs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %private.i99 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset, align 4
  %ops.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 9
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %read_w.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_w.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !338

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call zeroext i16 %7(ptr noundef %host, i32 noundef 62) #9
  br label %sdhci_readw.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %9, i32 62
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #9, !srcloc !330
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !339
  br label %sdhci_readw.exit

sdhci_readw.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i100 = phi i16 [ %call.i, %if.then.i ], [ %11, %if.else.i ]
  %12 = and i16 %retval.0.i100, -8
  %13 = zext i32 %uhs to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %uhs, label %sdhci_readw.exit.sw.epilog_crit_edge [
    i32 8, label %sdhci_readw.exit.sw.bb19_crit_edge
    i32 4, label %sw.bb7
    i32 5, label %sw.bb11
    i32 10, label %sdhci_readw.exit.sw.bb15_crit_edge
    i32 9, label %sdhci_readw.exit.sw.bb15_crit_edge112
    i32 6, label %sdhci_readw.exit.sw.bb15_crit_edge113
    i32 7, label %sdhci_readw.exit.sw.bb19_crit_edge114
  ]

sdhci_readw.exit.sw.bb19_crit_edge114:            ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19

sdhci_readw.exit.sw.bb15_crit_edge113:            ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sdhci_readw.exit.sw.bb15_crit_edge112:            ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sdhci_readw.exit.sw.bb15_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb15

sdhci_readw.exit.sw.bb19_crit_edge:               ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb19

sdhci_readw.exit.sw.epilog_crit_edge:             ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = or i16 %12, 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %sdhci_readw.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = or i16 %12, 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %sdhci_readw.exit.sw.bb15_crit_edge, %sdhci_readw.exit.sw.bb15_crit_edge112, %sdhci_readw.exit.sw.bb15_crit_edge113
  %16 = or i16 %12, 3
  br label %sw.epilog

sw.bb19:                                          ; preds = %sdhci_readw.exit.sw.bb19_crit_edge, %sdhci_readw.exit.sw.bb19_crit_edge114
  %17 = or i16 %12, 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15, %sw.bb11, %sw.bb7, %sdhci_readw.exit.sw.epilog_crit_edge
  %ctrl_2.0 = phi i16 [ %17, %sw.bb19 ], [ %16, %sw.bb15 ], [ %15, %sw.bb11 ], [ %14, %sw.bb7 ], [ %12, %sdhci_readw.exit.sw.epilog_crit_edge ]
  %clock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %18 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000001, i32 %19)
  %cmp = icmp ult i32 %19, 100000001
  br i1 %cmp, label %if.then, label %sw.epilog.do.body_crit_edge

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %sw.epilog
  %20 = zext i32 %uhs to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %uhs, label %if.then.if.end_crit_edge [
    i32 10, label %if.then.if.then31_crit_edge
    i32 9, label %if.then.if.then31_crit_edge115
    i32 6, label %if.then.if.then31_crit_edge116
  ]

if.then.if.then31_crit_edge116:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then.if.then31_crit_edge115:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then.if.then31_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then31:                                        ; preds = %if.then.if.then31_crit_edge, %if.then.if.then31_crit_edge115, %if.then.if.then31_crit_edge116
  br label %if.end

if.end:                                           ; preds = %if.then31, %if.then.if.end_crit_edge
  %ctrl_2.1 = phi i16 [ %12, %if.then31 ], [ %ctrl_2.0, %if.then.if.end_crit_edge ]
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 16
  %core_dll_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_dll_config, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %26 = or i32 %25, 64
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 16
  %29 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_dll_config, align 4
  %add.ptr39 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %26) #9, !srcloc !329
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 16
  %33 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %core_dll_config, align 4
  %add.ptr43 = getelementptr i8, ptr %32, i32 %34
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !332
  %36 = or i32 %35, 32
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 16
  %39 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %core_dll_config, align 4
  %add.ptr49 = getelementptr i8, ptr %38, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %36) #9, !srcloc !329
  %calibration_done = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i99, i32 0, i32 11
  %41 = ptrtoint ptr %calibration_done to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %calibration_done, align 2
  br label %do.body

do.body:                                          ; preds = %if.end, %sw.epilog.do.body_crit_edge
  %ctrl_2.2 = phi i16 [ %ctrl_2.1, %if.end ], [ %ctrl_2.0, %sw.epilog.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_set_uhs_signaling.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_set_uhs_signaling, %if.then55)) #9
          to label %do.end [label %if.then55], !srcloc !331

if.then55:                                        ; preds = %do.body
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 128
  %44 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmc1, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %45, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i101 = icmp eq ptr %47, null
  br i1 %tobool.not.i101, label %if.end.i, label %if.then55.dev_name.exit_crit_edge

if.then55.dev_name.exit_crit_edge:                ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then55.dev_name.exit_crit_edge
  %retval.0.i102 = phi ptr [ %49, %if.end.i ], [ %47, %if.then55.dev_name.exit_crit_edge ]
  %50 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %clock, align 4
  %conv59 = zext i16 %ctrl_2.2 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdhci_msm_set_uhs_signaling.__UNIQUE_ID_ddebug313, ptr noundef %43, ptr noundef nonnull @.str.46, ptr noundef %retval.0.i102, i32 noundef %51, i32 noundef %uhs, i32 noundef %conv59) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %do.body
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %write_w.i = getelementptr inbounds %struct.sdhci_ops, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %write_w.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write_w.i, align 4
  %tobool.not.i104 = icmp eq ptr %55, null
  br i1 %tobool.not.i104, label %do.body.i, label %if.then.i105, !prof !338

if.then.i105:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %55(ptr noundef %host, i16 noundef zeroext %ctrl_2.2, i32 noundef 62) #9
  br label %sdhci_writew.exit

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !340
  tail call void @arm_heavy_mb() #9
  %56 = tail call i16 @llvm.bswap.i16(i16 %ctrl_2.2) #9
  %ioaddr.i106 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %57 = ptrtoint ptr %ioaddr.i106 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr.i106, align 16
  %add.ptr.i107 = getelementptr i8, ptr %58, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i107, i16 %56) #9, !srcloc !341
  br label %sdhci_writew.exit

sdhci_writew.exit:                                ; preds = %do.body.i, %if.then.i105
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %59 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %60)
  %cmp62 = icmp eq i8 %60, 10
  br i1 %cmp62, label %if.then64, label %sdhci_writew.exit.if.end66_crit_edge

sdhci_writew.exit.if.end66_crit_edge:             ; preds = %sdhci_writew.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then64:                                        ; preds = %sdhci_writew.exit
  %61 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %62)
  %cmp.i = icmp ugt i32 %62, 100000000
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then64.if.end66_crit_edge

if.then64.if.end66_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true.i:                                  ; preds = %if.then64
  %tuning_done.i = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i99, i32 0, i32 10
  %63 = ptrtoint ptr %tuning_done.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %tuning_done.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i109 = icmp eq i8 %64, 0
  br i1 %tobool.not.i109, label %lor.lhs.false.i, label %land.lhs.true.i.land.lhs.true3.i_crit_edge

land.lhs.true.i.land.lhs.true3.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true3.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %enhanced_strobe.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 10
  %65 = ptrtoint ptr %enhanced_strobe.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %enhanced_strobe.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool2.not.i = icmp eq i8 %66, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end66_crit_edge, label %lor.lhs.false.i.land.lhs.true3.i_crit_edge

lor.lhs.false.i.land.lhs.true3.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true3.i

lor.lhs.false.i.if.end66_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true3.i:                                 ; preds = %lor.lhs.false.i.land.lhs.true3.i_crit_edge, %land.lhs.true.i.land.lhs.true3.i_crit_edge
  %calibration_done.i = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i99, i32 0, i32 11
  %67 = ptrtoint ptr %calibration_done.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %calibration_done.i, align 2, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool4.not.i = icmp eq i8 %68, 0
  br i1 %tobool4.not.i, label %if.then.i110, label %land.lhs.true3.i.if.end66_crit_edge

land.lhs.true3.i.if.end66_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then.i110:                                     ; preds = %land.lhs.true3.i
  %call5.i = tail call fastcc i32 @sdhci_msm_hs400_dll_calibration(ptr noundef %host) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %do.end.i

if.then7.i:                                       ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %calibration_done.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %calibration_done.i, align 2
  br label %if.end66

do.end.i:                                         ; preds = %if.then.i110
  %70 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmc1, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %75, %if.end.i.i ], [ %73, %do.end.i.dev_name.exit.i_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %retval.0.i.i, i32 noundef %call5.i) #12
  br label %if.end66

if.end66:                                         ; preds = %dev_name.exit.i, %if.then7.i, %land.lhs.true3.i.if.end66_crit_edge, %lor.lhs.false.i.if.end66_crit_edge, %if.then64.if.end66_crit_edge, %sdhci_writew.exit.if.end66_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_dump_vendor_regs(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %offset, align 4
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %retval.0.i) #12
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 8
  %init_name.i92 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %init_name.i92 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i92, align 8
  %tobool.not.i93 = icmp eq ptr %11, null
  br i1 %tobool.not.i93, label %if.end.i94, label %dev_name.exit.dev_name.exit96_crit_edge

dev_name.exit.dev_name.exit96_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit96

if.end.i94:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev9 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %class_dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev9, align 4
  br label %dev_name.exit96

dev_name.exit96:                                  ; preds = %if.end.i94, %dev_name.exit.dev_name.exit96_crit_edge
  %retval.0.i95 = phi ptr [ %13, %if.end.i94 ], [ %11, %dev_name.exit.dev_name.exit96_crit_edge ]
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %core_dll_status = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %core_dll_status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_dll_status, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %core_dll_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_dll_config, align 4
  %add.ptr15 = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !332
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_2 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 24
  %28 = ptrtoint ptr %core_dll_config_2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %core_dll_config_2, align 4
  %add.ptr20 = getelementptr i8, ptr %27, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !332
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %retval.0.i95, i32 noundef %19, i32 noundef %25, i32 noundef %31) #12
  %32 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmc, align 8
  %init_name.i97 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %init_name.i97 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i97, align 8
  %tobool.not.i98 = icmp eq ptr %35, null
  br i1 %tobool.not.i98, label %if.end.i99, label %dev_name.exit96.dev_name.exit101_crit_edge

dev_name.exit96.dev_name.exit101_crit_edge:       ; preds = %dev_name.exit96
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit101

if.end.i99:                                       ; preds = %dev_name.exit96
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev29 = getelementptr inbounds %struct.mmc_host, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %class_dev29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev29, align 4
  br label %dev_name.exit101

dev_name.exit101:                                 ; preds = %if.end.i99, %dev_name.exit96.dev_name.exit101_crit_edge
  %retval.0.i100 = phi ptr [ %37, %if.end.i99 ], [ %35, %dev_name.exit96.dev_name.exit101_crit_edge ]
  %38 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_3 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 25
  %40 = ptrtoint ptr %core_dll_config_3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %core_dll_config_3, align 4
  %add.ptr33 = getelementptr i8, ptr %39, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !332
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr, align 16
  %core_dll_usr_ctl = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 28
  %46 = ptrtoint ptr %core_dll_usr_ctl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %core_dll_usr_ctl, align 4
  %add.ptr38 = getelementptr i8, ptr %45, i32 %47
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #9, !srcloc !332
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr, align 16
  %core_ddr_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 27
  %52 = ptrtoint ptr %core_ddr_config to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %core_ddr_config, align 4
  %add.ptr43 = getelementptr i8, ptr %51, i32 %53
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !332
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %retval.0.i100, i32 noundef %43, i32 noundef %49, i32 noundef %55) #12
  %56 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmc, align 8
  %init_name.i102 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %init_name.i102 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i102, align 8
  %tobool.not.i103 = icmp eq ptr %59, null
  br i1 %tobool.not.i103, label %if.end.i104, label %dev_name.exit101.dev_name.exit106_crit_edge

dev_name.exit101.dev_name.exit106_crit_edge:      ; preds = %dev_name.exit101
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit106

if.end.i104:                                      ; preds = %dev_name.exit101
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev52 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %class_dev52 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %class_dev52, align 4
  br label %dev_name.exit106

dev_name.exit106:                                 ; preds = %if.end.i104, %dev_name.exit101.dev_name.exit106_crit_edge
  %retval.0.i105 = phi ptr [ %61, %if.end.i104 ], [ %59, %dev_name.exit101.dev_name.exit106_crit_edge ]
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 17
  %64 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr56 = getelementptr i8, ptr %63, i32 %65
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #9, !srcloc !332
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec_func2 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 20
  %70 = ptrtoint ptr %core_vendor_spec_func2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %core_vendor_spec_func2, align 4
  %add.ptr61 = getelementptr i8, ptr %69, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #9, !srcloc !332
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec3 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 23
  %76 = ptrtoint ptr %core_vendor_spec3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %core_vendor_spec3, align 4
  %add.ptr66 = getelementptr i8, ptr %75, i32 %77
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #9, !srcloc !332
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %retval.0.i105, i32 noundef %67, i32 noundef %73, i32 noundef %79) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sdhci_msm_check_write(ptr nocapture noundef %host, i16 noundef zeroext %val, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %reg, label %entry.if.end34_crit_edge [
    i32 62, label %sw.bb
    i32 47, label %sw.bb2
    i32 41, label %sw.bb8
    i32 12, label %sw.bb11
    i32 14, label %sw.bb13
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = and i16 %val, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %cond = select i1 %tobool.not, i32 8, i32 4
  br label %if.then33

sw.bb2:                                           ; preds = %entry
  %pwr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 23
  %2 = ptrtoint ptr %pwr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  %4 = and i16 %val, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool7.not = icmp eq i16 %4, 0
  %or.cond = or i1 %tobool7.not, %tobool4.not
  br i1 %or.cond, label %sw.bb2.if.end34_crit_edge, label %sw.bb2.if.then33_crit_edge

sw.bb2.if.then33_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then33

sw.bb2.if.end34_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %val)
  %tobool9.not = icmp eq i16 %val, 0
  %cond10 = select i1 %tobool9.not, i32 1, i32 2
  br label %if.then33

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv12 = zext i16 %val to i32
  %transfer_mode = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 1, i32 1
  %5 = ptrtoint ptr %transfer_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv12, ptr %transfer_mode, align 4
  br label %if.end34

sw.bb13:                                          ; preds = %entry
  %use_cdr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 1
  %6 = ptrtoint ptr %use_cdr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_cdr, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %sw.bb13.if.end34_crit_edge, label %if.end16

sw.bb13.if.end34_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end16:                                         ; preds = %sw.bb13
  %transfer_mode17 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 1, i32 1
  %8 = ptrtoint ptr %transfer_mode17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_mode17, align 4
  %and18 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.else_crit_edge, label %land.lhs.true20

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true20:                                  ; preds = %if.end16
  %10 = lshr i16 %val, 8
  %trunc = trunc i16 %10 to i6
  %11 = zext i6 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.146)
  switch i6 %trunc, label %if.then30 [
    i6 21, label %land.lhs.true20.if.else_crit_edge
    i6 19, label %land.lhs.true20.if.else_crit_edge61
  ]

land.lhs.true20.if.else_crit_edge61:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true20.if.else_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true20
  %offset.i.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %offset.i.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %core_dll_config.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %13, i32 0, i32 15
  %16 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %or.i = and i32 %19, -655361
  %config.0.i = or i32 %or.i, 131072
  call void @__sanitizer_cov_trace_cmp4(i32 %config.0.i, i32 %19)
  %cmp.not.i = icmp eq i32 %config.0.i, %19
  br i1 %cmp.not.i, label %if.then30.if.end34_crit_edge, label %if.then4.i

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then4.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %config.0.i) #9
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr.i, align 16
  %23 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %20) #9, !srcloc !329
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true20.if.else_crit_edge, %land.lhs.true20.if.else_crit_edge61, %if.end16.if.else_crit_edge
  %offset.i.i48 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %25 = ptrtoint ptr %offset.i.i48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %offset.i.i48, align 4
  %ioaddr.i49 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %27 = ptrtoint ptr %ioaddr.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i49, align 16
  %core_dll_config.i50 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %core_dll_config.i50 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_dll_config.i50, align 4
  %add.ptr.i51 = getelementptr i8, ptr %28, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #9, !srcloc !332
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %or.i52 = and i32 %32, -655361
  %config.0.i53 = or i32 %or.i52, 524288
  call void @__sanitizer_cov_trace_cmp4(i32 %config.0.i53, i32 %32)
  %cmp.not.i54 = icmp eq i32 %config.0.i53, %32
  br i1 %cmp.not.i54, label %if.else.if.end34_crit_edge, label %if.then4.i56

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then4.i56:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %config.0.i53) #9
  %34 = ptrtoint ptr %ioaddr.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i49, align 16
  %36 = ptrtoint ptr %core_dll_config.i50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %core_dll_config.i50, align 4
  %add.ptr7.i55 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i55, i32 %33) #9, !srcloc !329
  br label %if.end34

if.then33:                                        ; preds = %sw.bb8, %sw.bb2.if.then33_crit_edge, %sw.bb
  %req_type.0 = phi i32 [ %cond10, %sw.bb8 ], [ %cond, %sw.bb ], [ 1, %sw.bb2.if.then33_crit_edge ]
  %pwr_irq_flag = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 4, i32 7
  %38 = ptrtoint ptr %pwr_irq_flag to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %pwr_irq_flag, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !347
  tail call void @arm_heavy_mb() #9
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.then4.i56, %if.else.if.end34_crit_edge, %if.then4.i, %if.then30.if.end34_crit_edge, %sw.bb13.if.end34_crit_edge, %sw.bb11, %sw.bb2.if.end34_crit_edge, %entry.if.end34_crit_edge
  %req_type.060 = phi i32 [ %req_type.0, %if.then33 ], [ 0, %entry.if.end34_crit_edge ], [ 0, %sw.bb13.if.end34_crit_edge ], [ 0, %sw.bb11 ], [ 0, %if.then30.if.end34_crit_edge ], [ 0, %if.then4.i ], [ 0, %if.else.if.end34_crit_edge ], [ 0, %if.then4.i56 ], [ 0, %sw.bb2.if.end34_crit_edge ]
  ret i32 %req_type.060
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_check_power_status(ptr noundef %host, i32 noundef %req_type) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i178 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_check_power_status, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i179 = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  %curr_pwr_state = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13, i32 1
  %8 = ptrtoint ptr %curr_pwr_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %curr_pwr_state, align 4
  %curr_io_level = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 14
  %10 = ptrtoint ptr %curr_io_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_io_level, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.33, ptr noundef %retval.0.i179, ptr noundef nonnull @.str.32, i32 noundef %req_type, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %mci_removed = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 19
  %12 = ptrtoint ptr %mci_removed to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mci_removed, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end9, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end9:                                          ; preds = %do.end
  %var_ops = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 20
  %14 = ptrtoint ptr %var_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %var_ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %core_generics = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %core_generics to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_generics, align 4
  %call8 = tail call i32 %17(ptr noundef %host, i32 noundef %19) #9
  %phi.bo = and i32 %call8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  %20 = and i32 %req_type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp ne i32 %20, 0
  %or.cond171 = select i1 %21, i1 %phi.cmp, i1 false
  br i1 %or.cond171, label %if.end9.cleanup131_crit_edge, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end9.cleanup131_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup131

if.end16:                                         ; preds = %if.end9.if.end16_crit_edge, %do.end.if.end16_crit_edge
  %and = and i32 %req_type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end16.if.end41_crit_edge, label %land.lhs.true19

if.end16.if.end41_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true19:                                  ; preds = %if.end16
  %pwr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 23
  %22 = ptrtoint ptr %pwr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pwr, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool20.not = icmp eq i8 %23, 0
  br i1 %tobool20.not, label %do.body22, label %land.lhs.true19.if.end41_crit_edge

land.lhs.true19.if.end41_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.body22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_check_power_status, %if.then34)) #9
          to label %cleanup131 [label %if.then34], !srcloc !331

if.then34:                                        ; preds = %do.body22
  %mmc35 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %24 = ptrtoint ptr %mmc35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmc35, align 8
  %init_name.i180 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %init_name.i180 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i180, align 8
  %tobool.not.i181 = icmp eq ptr %27, null
  br i1 %tobool.not.i181, label %if.end.i182, label %if.then34.dev_name.exit184_crit_edge

if.then34.dev_name.exit184_crit_edge:             ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit184

if.end.i182:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev36 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %class_dev36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %class_dev36, align 4
  br label %dev_name.exit184

dev_name.exit184:                                 ; preds = %if.end.i182, %if.then34.dev_name.exit184_crit_edge
  %retval.0.i183 = phi ptr [ %29, %if.end.i182 ], [ %27, %if.then34.dev_name.exit184_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.34, ptr noundef %retval.0.i183, i32 noundef %req_type) #9
  br label %cleanup131

if.end41:                                         ; preds = %land.lhs.true19.if.end41_crit_edge, %if.end16.if.end41_crit_edge
  %curr_pwr_state42 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13, i32 1
  %30 = ptrtoint ptr %curr_pwr_state42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %curr_pwr_state42, align 4
  %and43 = and i32 %31, %req_type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %if.end41.do.body112_crit_edge

if.end41.do.body112_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

lor.lhs.false45:                                  ; preds = %if.end41
  %curr_io_level46 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 14
  %32 = ptrtoint ptr %curr_io_level46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %curr_io_level46, align 4
  %and47 = and i32 %33, %req_type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then52, label %lor.lhs.false45.do.body112_crit_edge

lor.lhs.false45.do.body112_crit_edge:             ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.then52:                                        ; preds = %lor.lhs.false45
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1566) #9
  %pwr_irq_flag = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 17, i32 4, i32 7
  %34 = ptrtoint ptr %pwr_irq_flag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pwr_irq_flag, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool60.not = icmp eq i8 %35, 0
  br i1 %tobool60.not, label %if.then73, label %if.then52.do.body112_crit_edge

if.then52.do.body112_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.then73:                                        ; preds = %if.then52
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %36 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %pwr_irq_wait = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 15
  %call76204 = call i32 @prepare_to_wait_event(ptr noundef %pwr_irq_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %37 = ptrtoint ptr %pwr_irq_flag to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pwr_irq_flag, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool79.not205.not = icmp eq i8 %38, 0
  br i1 %tobool79.not205.not, label %if.then73.cleanup_crit_edge, label %if.end100.thread

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  br label %cleanup

if.end100.thread:                                 ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %pwr_irq_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.body112

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then73.cleanup_crit_edge
  %__ret74.1207 = phi i32 [ %__ret74.1, %cleanup.cleanup_crit_edge ], [ 500, %if.then73.cleanup_crit_edge ]
  %call97 = call i32 @schedule_timeout(i32 noundef %__ret74.1207) #9
  %call76 = call i32 @prepare_to_wait_event(ptr noundef %pwr_irq_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %39 = ptrtoint ptr %pwr_irq_flag to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pwr_irq_flag, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool79.not = icmp eq i8 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool83.not = icmp eq i32 %call97, 0
  %spec.store.select138 = select i1 %tobool83.not, i32 1, i32 %call97
  %__ret74.1 = select i1 %tobool79.not, i32 %call97, i32 %spec.store.select138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret74.1)
  %tobool89.not = icmp eq i32 %__ret74.1, 0
  %not.tobool79.not = xor i1 %tobool79.not, true
  %41 = select i1 %not.tobool79.not, i1 true, i1 %tobool89.not
  br i1 %41, label %if.end100, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end100:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret74.1)
  %phi.cmp210 = icmp eq i32 %__ret74.1, 0
  call void @finish_wait(ptr noundef %pwr_irq_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br i1 %phi.cmp210, label %do.end106, label %if.end100.do.body112_crit_edge

if.end100.do.body112_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

do.end106:                                        ; preds = %if.end100
  %42 = ptrtoint ptr %private.i178 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %private.i178, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  %mmc107 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %44 = ptrtoint ptr %mmc107 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmc107, align 8
  %init_name.i185 = getelementptr inbounds %struct.mmc_host, ptr %45, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %init_name.i185 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i185, align 8
  %tobool.not.i186 = icmp eq ptr %47, null
  br i1 %tobool.not.i186, label %if.end.i187, label %do.end106.dev_name.exit189_crit_edge

do.end106.dev_name.exit189_crit_edge:             ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit189

if.end.i187:                                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev108 = getelementptr inbounds %struct.mmc_host, ptr %45, i32 0, i32 1
  %48 = ptrtoint ptr %class_dev108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev108, align 4
  br label %dev_name.exit189

dev_name.exit189:                                 ; preds = %if.end.i187, %do.end106.dev_name.exit189_crit_edge
  %retval.0.i188 = phi ptr [ %49, %if.end.i187 ], [ %47, %do.end106.dev_name.exit189_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i188, i32 noundef %req_type) #12
  br label %do.body112

do.body112:                                       ; preds = %dev_name.exit189, %if.end100.do.body112_crit_edge, %if.end100.thread, %if.then52.do.body112_crit_edge, %lor.lhs.false45.do.body112_crit_edge, %if.end41.do.body112_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_check_power_status, %if.then124)) #9
          to label %cleanup131 [label %if.then124], !srcloc !331

if.then124:                                       ; preds = %do.body112
  %mmc125 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %50 = ptrtoint ptr %mmc125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmc125, align 8
  %init_name.i190 = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %init_name.i190 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i190, align 8
  %tobool.not.i191 = icmp eq ptr %53, null
  br i1 %tobool.not.i191, label %if.end.i192, label %if.then124.dev_name.exit194_crit_edge

if.then124.dev_name.exit194_crit_edge:            ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit194

if.end.i192:                                      ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev126 = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 1
  %54 = ptrtoint ptr %class_dev126 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %class_dev126, align 4
  br label %dev_name.exit194

dev_name.exit194:                                 ; preds = %if.end.i192, %if.then124.dev_name.exit194_crit_edge
  %retval.0.i193 = phi ptr [ %55, %if.end.i192 ], [ %53, %if.then124.dev_name.exit194_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i193, ptr noundef nonnull @.str.32, i32 noundef %req_type) #9
  br label %cleanup131

cleanup131:                                       ; preds = %dev_name.exit194, %do.body112, %dev_name.exit184, %do.body22, %if.end9.cleanup131_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_hc_select_mode(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %ios.sroa.4.0.ios1.sroa_idx = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %ios.sroa.4.0.ios1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %ios.sroa.4.0.copyload3 = load i8, ptr %ios.sroa.4.0.ios1.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %ios.sroa.4.0.copyload3)
  %cmp = icmp eq i8 %ios.sroa.4.0.copyload3, 10
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %private.i105.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %ios.sroa.4.0.ios2.sroa_idx.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 10
  %5 = ptrtoint ptr %ios.sroa.4.0.ios2.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %ios.sroa.4.0.copyload92.i = load i8, ptr %ios.sroa.4.0.ios2.sroa_idx.i, align 1
  %offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %6 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %offset.i, align 4
  %ioaddr.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 16
  %core_vendor_spec.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 17
  %10 = ptrtoint ptr %core_vendor_spec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_vendor_spec.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %13 = or i32 %12, 196608
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 16
  %16 = ptrtoint ptr %core_vendor_spec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_vendor_spec.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %13) #9, !srcloc !329
  %tuning_done.i = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i105.i, i32 0, i32 10
  %18 = ptrtoint ptr %tuning_done.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tuning_done.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %20 = and i8 %ios.sroa.4.0.copyload92.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not.i = icmp eq i8 %20, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool7.not.i, i1 false
  br i1 %or.cond.i, label %if.then.if.end.i_crit_edge, label %land.lhs.true.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %calibration_done.i = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i105.i, i32 0, i32 11
  %21 = ptrtoint ptr %calibration_done.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %calibration_done.i, align 2, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool8.not.i = icmp eq i8 %22, 0
  br i1 %tobool8.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 16
  %25 = ptrtoint ptr %core_vendor_spec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %core_vendor_spec.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %24, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !332
  %28 = or i32 %27, 13312
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 16
  %31 = ptrtoint ptr %core_vendor_spec.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %core_vendor_spec.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %28) #9, !srcloc !329
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %clk_rate.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %33 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.i = icmp eq i32 %34, 0
  br i1 %tobool20.not.i, label %land.lhs.true21.i, label %if.end.i.msm_hc_select_hs400.exit_crit_edge

if.end.i.msm_hc_select_hs400.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_hc_select_hs400.exit

land.lhs.true21.i:                                ; preds = %if.end.i
  %use_cdclp533.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13
  %35 = ptrtoint ptr %use_cdclp533.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %use_cdclp533.i, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool22.not.i = icmp eq i8 %36, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %land.lhs.true21.i.msm_hc_select_hs400.exit_crit_edge

land.lhs.true21.i.msm_hc_select_hs400.exit_crit_edge: ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_hc_select_hs400.exit

if.then23.i:                                      ; preds = %land.lhs.true21.i
  %call24.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call24.i, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 855) #9
  %core_dll_status.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %7, i32 0, i32 16
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i, align 16
  %39 = ptrtoint ptr %core_dll_status.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %core_dll_status.i, align 4
  %add.ptr36109.i = getelementptr i8, ptr %38, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36109.i) #9, !srcloc !332
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %and39110.i = and i32 %42, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39110.i)
  %tobool40.not111.i = icmp eq i32 %and39110.i, 0
  br i1 %tobool40.not111.i, label %if.then23.i.land.lhs.true44.i_crit_edge, label %if.then23.i.for.end.i_crit_edge

if.then23.i.for.end.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then23.i.land.lhs.true44.i_crit_edge:          ; preds = %if.then23.i
  br label %land.lhs.true44.i

land.lhs.true44.i:                                ; preds = %if.then57.i.land.lhs.true44.i_crit_edge, %if.then23.i.land.lhs.true44.i_crit_edge
  %call45.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call45.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call45.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then48.i, label %if.then57.i

if.then48.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr.i, align 16
  %45 = ptrtoint ptr %core_dll_status.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %core_dll_status.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %44, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !332
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #9
  br label %for.end.i

if.then57.i:                                      ; preds = %land.lhs.true44.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %49 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr.i, align 16
  %51 = ptrtoint ptr %core_dll_status.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %core_dll_status.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %50, i32 %52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #9, !srcloc !332
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %and39.i = and i32 %54, 2176
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.then57.i.land.lhs.true44.i_crit_edge, label %if.then57.i.for.end.i_crit_edge

if.then57.i.for.end.i_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

if.then57.i.land.lhs.true44.i_crit_edge:          ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true44.i

for.end.i:                                        ; preds = %if.then57.i.for.end.i_crit_edge, %if.then48.i, %if.then23.i.for.end.i_crit_edge
  %dll_lock.0.i = phi i32 [ %48, %if.then48.i ], [ %42, %if.then23.i.for.end.i_crit_edge ], [ %54, %if.then57.i.for.end.i_crit_edge ]
  %and60.i = and i32 %dll_lock.0.i, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %do.end66.i, label %for.end.i.msm_hc_select_hs400.exit_crit_edge

for.end.i.msm_hc_select_hs400.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_hc_select_hs400.exit

do.end66.i:                                       ; preds = %for.end.i
  %55 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmc, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %56, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end66.i.dev_name.exit.i_crit_edge

do.end66.i.dev_name.exit.i_crit_edge:             ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end66.i.dev_name.exit.i_crit_edge
  %retval.0.i106.i = phi ptr [ %60, %if.end.i.i ], [ %58, %do.end66.i.dev_name.exit.i_crit_edge ]
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %retval.0.i106.i, i32 noundef %dll_lock.0.i) #12
  br label %msm_hc_select_hs400.exit

msm_hc_select_hs400.exit:                         ; preds = %dev_name.exit.i, %for.end.i.msm_hc_select_hs400.exit_crit_edge, %land.lhs.true21.i.msm_hc_select_hs400.exit_crit_edge, %if.end.i.msm_hc_select_hs400.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !348
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %offset.i7 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %61 = ptrtoint ptr %offset.i7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %offset.i7, align 4
  %use_cdclp533.i8 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13
  %63 = ptrtoint ptr %use_cdclp533.i8 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %use_cdclp533.i8, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i9 = icmp eq i8 %64, 0
  br i1 %tobool.not.i9, label %if.then.i12, label %if.else.msm_hc_select_default.exit_crit_edge

if.else.msm_hc_select_default.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_hc_select_default.exit

if.then.i12:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i10 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %65 = ptrtoint ptr %ioaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr.i10, align 16
  %core_vendor_spec3.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %62, i32 0, i32 23
  %67 = ptrtoint ptr %core_vendor_spec3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %core_vendor_spec3.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %66, i32 %68
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #9, !srcloc !332
  %70 = and i32 %69, -134217729
  %71 = ptrtoint ptr %ioaddr.i10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ioaddr.i10, align 16
  %73 = ptrtoint ptr %core_vendor_spec3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %core_vendor_spec3.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %72, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %70) #9, !srcloc !329
  br label %msm_hc_select_default.exit

msm_hc_select_default.exit:                       ; preds = %if.then.i12, %if.else.msm_hc_select_default.exit_crit_edge
  %ioaddr7.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %75 = ptrtoint ptr %ioaddr7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ioaddr7.i, align 16
  %core_vendor_spec.i13 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %62, i32 0, i32 17
  %77 = ptrtoint ptr %core_vendor_spec.i13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %core_vendor_spec.i13, align 4
  %add.ptr8.i = getelementptr i8, ptr %76, i32 %78
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #9, !srcloc !332
  %80 = and i32 %79, -196609
  %81 = or i32 %80, 131072
  %82 = ptrtoint ptr %ioaddr7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr7.i, align 16
  %84 = ptrtoint ptr %core_vendor_spec.i13 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %core_vendor_spec.i13, align 4
  %add.ptr14.i = getelementptr i8, ptr %83, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %81) #9, !srcloc !329
  %86 = ptrtoint ptr %ioaddr7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr7.i, align 16
  %88 = ptrtoint ptr %core_vendor_spec.i13 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %core_vendor_spec.i13, align 4
  %add.ptr18.i = getelementptr i8, ptr %87, i32 %89
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #9, !srcloc !332
  %91 = and i32 %90, -15361
  %92 = ptrtoint ptr %ioaddr7.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioaddr7.i, align 16
  %94 = ptrtoint ptr %core_vendor_spec.i13 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %core_vendor_spec.i13, align 4
  %add.ptr25.i = getelementptr i8, ptr %93, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %91) #9, !srcloc !329
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !349
  br label %if.end

if.end:                                           ; preds = %msm_hc_select_default.exit, %msm_hc_select_hs400.exit
  tail call void @arm_heavy_mb() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_set_clock_rate_for_bus_mode(ptr nocapture noundef %host, i32 noundef %clock) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 8
  %curr_ios.sroa.4.0.ios.sroa_idx = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %2 = ptrtoint ptr %curr_ios.sroa.4.0.ios.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %curr_ios.sroa.4.0.copyload51 = load i8, ptr %curr_ios.sroa.4.0.ios.sroa_idx, align 4
  %clk = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = zext i8 %curr_ios.sroa.4.0.copyload51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %curr_ios.sroa.4.0.copyload51, label %lor.lhs.false12.i [
    i8 7, label %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge
    i8 8, label %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge76
    i8 10, label %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge77
  ]

entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge77: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_get_clock_mult_for_bus_mode.exit

entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge76: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_get_clock_mult_for_bus_mode.exit

entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_get_clock_mult_for_bus_mode.exit

lor.lhs.false12.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  br label %msm_get_clock_mult_for_bus_mode.exit

msm_get_clock_mult_for_bus_mode.exit:             ; preds = %lor.lhs.false12.i, %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge, %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge76, %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge77
  %retval.0.i62 = phi i32 [ 2, %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge ], [ 2, %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge76 ], [ 2, %entry.msm_get_clock_mult_for_bus_mode.exit_crit_edge77 ], [ %spec.select.i, %lor.lhs.false12.i ]
  %mul = mul i32 %retval.0.i62, %clock
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  %call4 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %9, i32 noundef %mul) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %msm_get_clock_mult_for_bus_mode.exit
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i63 = icmp eq ptr %13, null
  br i1 %tobool.not.i63, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i64 = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  %conv = zext i8 %curr_ios.sroa.4.0.copyload51 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %retval.0.i64, i32 noundef %mul, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %msm_get_clock_mult_for_bus_mode.exit
  %call8 = tail call i32 @clk_get_rate(ptr noundef %4) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %mul)
  %cmp = icmp ugt i32 %call8, %mul
  br i1 %cmp, label %do.end13, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end13:                                         ; preds = %if.end
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 8
  %init_name.i65 = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %init_name.i65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i65, align 8
  %tobool.not.i66 = icmp eq ptr %19, null
  br i1 %tobool.not.i66, label %if.end.i67, label %do.end13.dev_name.exit69_crit_edge

do.end13.dev_name.exit69_crit_edge:               ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit69

if.end.i67:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev16 = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %class_dev16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev16, align 4
  br label %dev_name.exit69

dev_name.exit69:                                  ; preds = %if.end.i67, %do.end13.dev_name.exit69_crit_edge
  %retval.0.i68 = phi ptr [ %21, %if.end.i67 ], [ %19, %do.end13.dev_name.exit69_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %retval.0.i68, i32 noundef %mul, i32 noundef %call8) #12
  br label %if.end19

if.end19:                                         ; preds = %dev_name.exit69, %if.end.if.end19_crit_edge
  %div = udiv i32 %call8, %retval.0.i62
  %22 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc, align 8
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 58
  %24 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div, ptr %actual_clock, align 8
  %clk_rate = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %25 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %clk_rate, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_set_clock_rate_for_bus_mode.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msm_set_clock_rate_for_bus_mode, %if.then27)) #9
          to label %cleanup [label %if.then27], !srcloc !331

if.then27:                                        ; preds = %if.end19
  %26 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc, align 8
  %init_name.i70 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %init_name.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i70, align 8
  %tobool.not.i71 = icmp eq ptr %29, null
  br i1 %tobool.not.i71, label %if.end.i72, label %if.then27.dev_name.exit74_crit_edge

if.then27.dev_name.exit74_crit_edge:              ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit74

if.end.i72:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev29 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %class_dev29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %class_dev29, align 4
  br label %dev_name.exit74

dev_name.exit74:                                  ; preds = %if.end.i72, %if.then27.dev_name.exit74_crit_edge
  %retval.0.i73 = phi ptr [ %31, %if.end.i72 ], [ %29, %if.then27.dev_name.exit74_crit_edge ]
  %conv32 = zext i8 %curr_ios.sroa.4.0.copyload51 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @msm_set_clock_rate_for_bus_mode.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i73, i32 noundef %call8, i32 noundef %conv32) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit74, %if.end19, %dev_name.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_enable_clk(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_irq(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sdhci_set_timeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_reset(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_hs400_dll_calibration(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i67 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %mmc2 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc2, align 8
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_hs400_dll_calibration, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc2, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i68 = phi ptr [ %9, %if.end.i ], [ %7, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.50, ptr noundef %retval.0.i68, ptr noundef nonnull @.str.49) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %call8 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.do.body29_crit_edge

do.end.do.body29_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.end11:                                         ; preds = %do.end
  %enhanced_strobe = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 10
  %10 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enhanced_strobe, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool12.not = icmp eq i8 %11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then13:                                        ; preds = %if.end11
  %saved_tuning_phase = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i67, i32 0, i32 12
  %12 = ptrtoint ptr %saved_tuning_phase to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %saved_tuning_phase, align 1
  %call14 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %host, i8 noundef zeroext %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.then13.do.body29_crit_edge

if.then13.do.body29_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %core_dll_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %16 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_dll_config, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %22 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_dll_config, align 4
  %add.ptr22 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %19) #9, !srcloc !329
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %if.end11.if.end23_crit_edge
  %use_cdclp533 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 13
  %24 = ptrtoint ptr %use_cdclp533 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_cdclp533, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not = icmp eq i8 %25, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call fastcc i32 @sdhci_msm_cdclp533_calibration(ptr noundef %host)
  br label %do.body29

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call fastcc i32 @sdhci_msm_cm_dll_sdc4_calibration(ptr noundef %host)
  br label %do.body29

do.body29:                                        ; preds = %if.else, %if.then25, %if.then13.do.body29_crit_edge, %do.end.do.body29_crit_edge
  %ret.0 = phi i32 [ %call8, %do.end.do.body29_crit_edge ], [ %call26, %if.then25 ], [ %call27, %if.else ], [ %call14, %if.then13.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_hs400_dll_calibration, %if.then41)) #9
          to label %do.end47 [label %if.then41], !srcloc !331

if.then41:                                        ; preds = %do.body29
  %26 = ptrtoint ptr %mmc2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc2, align 8
  %init_name.i69 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %init_name.i69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i69, align 8
  %tobool.not.i70 = icmp eq ptr %29, null
  br i1 %tobool.not.i70, label %if.end.i71, label %if.then41.dev_name.exit73_crit_edge

if.then41.dev_name.exit73_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit73

if.end.i71:                                       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev43 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %class_dev43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %class_dev43, align 4
  br label %dev_name.exit73

dev_name.exit73:                                  ; preds = %if.end.i71, %if.then41.dev_name.exit73_crit_edge
  %retval.0.i72 = phi ptr [ %31, %if.end.i71 ], [ %29, %if.then41.dev_name.exit73_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.51, ptr noundef %retval.0.i72, ptr noundef nonnull @.str.49, i32 noundef %ret.0) #9
  br label %do.end47

do.end47:                                         ; preds = %dev_name.exit73, %do.body29
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_init_cm_dll(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %private.i903 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset, align 4
  %use_14lpp_dll_reset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 12
  %4 = ptrtoint ptr %use_14lpp_dll_reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %use_14lpp_dll_reset, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body7_crit_edge, label %land.lhs.true

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

land.lhs.true:                                    ; preds = %entry
  %xo_clk3 = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i903, i32 0, i32 5
  %6 = ptrtoint ptr %xo_clk3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xo_clk3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true.do.body7_crit_edge, label %if.then

land.lhs.true.do.body7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @clk_get_rate(ptr noundef nonnull %7) #9
  br label %do.body7

do.body7:                                         ; preds = %if.then, %land.lhs.true.do.body7_crit_edge, %entry.do.body7_crit_edge
  %xo_clk.0 = phi i32 [ 0, %land.lhs.true.do.body7_crit_edge ], [ %call6, %if.then ], [ 0, %entry.do.body7_crit_edge ]
  %lock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 15
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %13 = and i32 %12, -33554433
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 16
  %16 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %13) #9, !srcloc !329
  %dll_config = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 3
  %18 = ptrtoint ptr %dll_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dll_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %do.body7.if.end22_crit_edge, label %if.then18

do.body7.if.end22_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioaddr, align 16
  %core_dll_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %23 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %core_dll_config, align 4
  %add.ptr21 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %20) #9, !srcloc !329
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %do.body7.if.end22_crit_edge
  %25 = ptrtoint ptr %use_14lpp_dll_reset to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_14lpp_dll_reset, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool24.not = icmp eq i8 %26, 0
  br i1 %tobool24.not, label %if.end22.if.end44_crit_edge, label %if.then25

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr, align 16
  %core_dll_config28 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %29 = ptrtoint ptr %core_dll_config28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %core_dll_config28, align 4
  %add.ptr29 = getelementptr i8, ptr %28, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !332
  %32 = and i32 %31, -1025
  %33 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ioaddr, align 16
  %35 = ptrtoint ptr %core_dll_config28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %core_dll_config28, align 4
  %add.ptr35 = getelementptr i8, ptr %34, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %32) #9, !srcloc !329
  %37 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_2 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 24
  %39 = ptrtoint ptr %core_dll_config_2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %core_dll_config_2, align 4
  %add.ptr38 = getelementptr i8, ptr %38, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #9, !srcloc !332
  %42 = or i32 %41, 8192
  %43 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ioaddr, align 16
  %45 = ptrtoint ptr %core_dll_config_2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %core_dll_config_2, align 4
  %add.ptr43 = getelementptr i8, ptr %44, i32 %46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %42) #9, !srcloc !329
  br label %if.end44

if.end44:                                         ; preds = %if.then25, %if.end22.if.end44_crit_edge
  %47 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr, align 16
  %core_dll_config47 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %49 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %core_dll_config47, align 4
  %add.ptr48 = getelementptr i8, ptr %48, i32 %50
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #9, !srcloc !332
  %52 = or i32 %51, 64
  %53 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr, align 16
  %55 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %core_dll_config47, align 4
  %add.ptr54 = getelementptr i8, ptr %54, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %52) #9, !srcloc !329
  %57 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ioaddr, align 16
  %59 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_dll_config47, align 4
  %add.ptr58 = getelementptr i8, ptr %58, i32 %60
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #9, !srcloc !332
  %62 = or i32 %61, 32
  %63 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr, align 16
  %65 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %core_dll_config47, align 4
  %add.ptr64 = getelementptr i8, ptr %64, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %62) #9, !srcloc !329
  %67 = ptrtoint ptr %dll_config to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dll_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool66.not = icmp eq i32 %68, 0
  br i1 %tobool66.not, label %if.then67, label %if.end44.if.end68_crit_edge

if.end44.if.end68_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then67:                                        ; preds = %if.end44
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %offset, align 4
  %clock.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %71 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %clock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112000001, i32 %72)
  %cmp.i904 = icmp ult i32 %72, 112000001
  br i1 %cmp.i904, label %if.then67.msm_cm_dll_set_freq.exit_crit_edge, label %if.else.i

if.then67.msm_cm_dll_set_freq.exit_crit_edge:     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000001, i32 %72)
  %cmp2.i = icmp ult i32 %72, 125000001
  br i1 %cmp2.i, label %if.else.i.msm_cm_dll_set_freq.exit_crit_edge, label %if.else4.i

if.else.i.msm_cm_dll_set_freq.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 137000001, i32 %72)
  %cmp6.i = icmp ult i32 %72, 137000001
  br i1 %cmp6.i, label %if.else4.i.msm_cm_dll_set_freq.exit_crit_edge, label %if.else8.i

if.else4.i.msm_cm_dll_set_freq.exit_crit_edge:    ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else8.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000001, i32 %72)
  %cmp10.i = icmp ult i32 %72, 150000001
  br i1 %cmp10.i, label %if.else8.i.msm_cm_dll_set_freq.exit_crit_edge, label %if.else12.i

if.else8.i.msm_cm_dll_set_freq.exit_crit_edge:    ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000001, i32 %72)
  %cmp14.i = icmp ult i32 %72, 162000001
  br i1 %cmp14.i, label %if.else12.i.msm_cm_dll_set_freq.exit_crit_edge, label %if.else16.i

if.else12.i.msm_cm_dll_set_freq.exit_crit_edge:   ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000001, i32 %72)
  %cmp18.i = icmp ult i32 %72, 175000001
  br i1 %cmp18.i, label %if.else16.i.msm_cm_dll_set_freq.exit_crit_edge, label %if.else20.i

if.else16.i.msm_cm_dll_set_freq.exit_crit_edge:   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 187000001, i32 %72)
  %cmp22.i = icmp ult i32 %72, 187000001
  br i1 %cmp22.i, label %if.else20.i.msm_cm_dll_set_freq.exit_crit_edge, label %if.else24.i

if.else20.i.msm_cm_dll_set_freq.exit_crit_edge:   ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit

if.else24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000001, i32 %72)
  %cmp26.i = icmp ult i32 %72, 200000001
  %spec.select.i905 = select i1 %cmp26.i, i32 117440512, i32 0
  br label %msm_cm_dll_set_freq.exit

msm_cm_dll_set_freq.exit:                         ; preds = %if.else24.i, %if.else20.i.msm_cm_dll_set_freq.exit_crit_edge, %if.else16.i.msm_cm_dll_set_freq.exit_crit_edge, %if.else12.i.msm_cm_dll_set_freq.exit_crit_edge, %if.else8.i.msm_cm_dll_set_freq.exit_crit_edge, %if.else4.i.msm_cm_dll_set_freq.exit_crit_edge, %if.else.i.msm_cm_dll_set_freq.exit_crit_edge, %if.then67.msm_cm_dll_set_freq.exit_crit_edge
  %mclk_freq.0.i = phi i32 [ 0, %if.then67.msm_cm_dll_set_freq.exit_crit_edge ], [ 16777216, %if.else.i.msm_cm_dll_set_freq.exit_crit_edge ], [ 33554432, %if.else4.i.msm_cm_dll_set_freq.exit_crit_edge ], [ 50331648, %if.else8.i.msm_cm_dll_set_freq.exit_crit_edge ], [ 67108864, %if.else12.i.msm_cm_dll_set_freq.exit_crit_edge ], [ 83886080, %if.else16.i.msm_cm_dll_set_freq.exit_crit_edge ], [ 100663296, %if.else20.i.msm_cm_dll_set_freq.exit_crit_edge ], [ %spec.select.i905, %if.else24.i ]
  %73 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr, align 16
  %core_dll_config.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %70, i32 0, i32 15
  %75 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr.i = getelementptr i8, ptr %74, i32 %76
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %78 = and i32 %77, -8
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %or.i = or i32 %79, %mclk_freq.0.i
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %81 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ioaddr, align 16
  %83 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %82, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %80) #9, !srcloc !329
  br label %if.end68

if.end68:                                         ; preds = %msm_cm_dll_set_freq.exit, %if.end44.if.end68_crit_edge
  %85 = ptrtoint ptr %use_14lpp_dll_reset to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %use_14lpp_dll_reset, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool70.not = icmp eq i8 %86, 0
  br i1 %tobool70.not, label %if.end68.if.end525_crit_edge, label %land.lhs.true72

if.end68.if.end525_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end525

land.lhs.true72:                                  ; preds = %if.end68
  %xo_clk73 = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i903, i32 0, i32 5
  %87 = ptrtoint ptr %xo_clk73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %xo_clk73, align 4
  %tobool.not.i906 = icmp eq ptr %88, null
  %cmp.i907 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %spec.select.i908 = or i1 %tobool.not.i906, %cmp.i907
  br i1 %spec.select.i908, label %land.lhs.true72.if.end525_crit_edge, label %if.then75

land.lhs.true72.if.end525_crit_edge:              ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end525

if.then75:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_278 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 24
  %91 = ptrtoint ptr %core_dll_config_278 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %core_dll_config_278, align 4
  %add.ptr79 = getelementptr i8, ptr %90, i32 %92
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !332
  %94 = and i32 %93, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool83.not = icmp eq i32 %94, 0
  %clock284 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %95 = ptrtoint ptr %clock284 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %clock284, align 4
  %. = select i1 %tobool83.not, i32 2, i32 3
  %mul285 = shl i32 %96, %.
  %div286899 = lshr i32 %xo_clk.0, 1
  %add287 = add i32 %mul285, %div286899
  %mclk_freq.0 = udiv i32 %add287, %xo_clk.0
  %97 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ioaddr, align 16
  %99 = ptrtoint ptr %core_dll_config_278 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %core_dll_config_278, align 4
  %add.ptr516 = getelementptr i8, ptr %98, i32 %100
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr516) #9, !srcloc !332
  %102 = and i32 %101, -16515841
  %103 = tail call i32 @llvm.bswap.i32(i32 %102)
  %shl520 = shl i32 %mclk_freq.0, 10
  %or521 = or i32 %103, %shl520
  %104 = tail call i32 @llvm.bswap.i32(i32 %or521)
  %105 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr, align 16
  %107 = ptrtoint ptr %core_dll_config_278 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %core_dll_config_278, align 4
  %add.ptr524 = getelementptr i8, ptr %106, i32 %108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr524, i32 %104) #9, !srcloc !329
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 1073740) #9
  br label %if.end525

if.end525:                                        ; preds = %if.then75, %land.lhs.true72.if.end525_crit_edge, %if.end68.if.end525_crit_edge
  %110 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ioaddr, align 16
  %112 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %core_dll_config47, align 4
  %add.ptr529 = getelementptr i8, ptr %111, i32 %113
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr529) #9, !srcloc !332
  %115 = and i32 %114, -65
  %116 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr, align 16
  %118 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %core_dll_config47, align 4
  %add.ptr535 = getelementptr i8, ptr %117, i32 %119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr535, i32 %115) #9, !srcloc !329
  %120 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ioaddr, align 16
  %122 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %core_dll_config47, align 4
  %add.ptr539 = getelementptr i8, ptr %121, i32 %123
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr539) #9, !srcloc !332
  %125 = and i32 %124, -33
  %126 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioaddr, align 16
  %128 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %core_dll_config47, align 4
  %add.ptr545 = getelementptr i8, ptr %127, i32 %129
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr545, i32 %125) #9, !srcloc !329
  %130 = ptrtoint ptr %use_14lpp_dll_reset to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %use_14lpp_dll_reset, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool547.not = icmp eq i8 %131, 0
  br i1 %tobool547.not, label %if.end525.if.end563_crit_edge, label %if.then548

if.end525.if.end563_crit_edge:                    ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end563

if.then548:                                       ; preds = %if.end525
  %132 = ptrtoint ptr %dll_config to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dll_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool550.not = icmp eq i32 %133, 0
  br i1 %tobool550.not, label %if.then551, label %if.then548.if.end552_crit_edge

if.then548.if.end552_crit_edge:                   ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end552

if.then551:                                       ; preds = %if.then548
  %134 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %offset, align 4
  %clock.i937 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 22
  %136 = ptrtoint ptr %clock.i937 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %clock.i937, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112000001, i32 %137)
  %cmp.i938 = icmp ult i32 %137, 112000001
  br i1 %cmp.i938, label %if.then551.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else.i940

if.then551.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.then551
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else.i940:                                     ; preds = %if.then551
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000001, i32 %137)
  %cmp2.i939 = icmp ult i32 %137, 125000001
  br i1 %cmp2.i939, label %if.else.i940.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else4.i942

if.else.i940.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.else.i940
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else4.i942:                                    ; preds = %if.else.i940
  call void @__sanitizer_cov_trace_const_cmp4(i32 137000001, i32 %137)
  %cmp6.i941 = icmp ult i32 %137, 137000001
  br i1 %cmp6.i941, label %if.else4.i942.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else8.i944

if.else4.i942.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.else4.i942
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else8.i944:                                    ; preds = %if.else4.i942
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000001, i32 %137)
  %cmp10.i943 = icmp ult i32 %137, 150000001
  br i1 %cmp10.i943, label %if.else8.i944.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else12.i946

if.else8.i944.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.else8.i944
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else12.i946:                                   ; preds = %if.else8.i944
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000001, i32 %137)
  %cmp14.i945 = icmp ult i32 %137, 162000001
  br i1 %cmp14.i945, label %if.else12.i946.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else16.i948

if.else12.i946.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.else12.i946
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else16.i948:                                   ; preds = %if.else12.i946
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000001, i32 %137)
  %cmp18.i947 = icmp ult i32 %137, 175000001
  br i1 %cmp18.i947, label %if.else16.i948.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else20.i950

if.else16.i948.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.else16.i948
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else20.i950:                                   ; preds = %if.else16.i948
  call void @__sanitizer_cov_trace_const_cmp4(i32 187000001, i32 %137)
  %cmp22.i949 = icmp ult i32 %137, 187000001
  br i1 %cmp22.i949, label %if.else20.i950.msm_cm_dll_set_freq.exit960_crit_edge, label %if.else24.i953

if.else20.i950.msm_cm_dll_set_freq.exit960_crit_edge: ; preds = %if.else20.i950
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_cm_dll_set_freq.exit960

if.else24.i953:                                   ; preds = %if.else20.i950
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000001, i32 %137)
  %cmp26.i951 = icmp ult i32 %137, 200000001
  %spec.select.i952 = select i1 %cmp26.i951, i32 117440512, i32 0
  br label %msm_cm_dll_set_freq.exit960

msm_cm_dll_set_freq.exit960:                      ; preds = %if.else24.i953, %if.else20.i950.msm_cm_dll_set_freq.exit960_crit_edge, %if.else16.i948.msm_cm_dll_set_freq.exit960_crit_edge, %if.else12.i946.msm_cm_dll_set_freq.exit960_crit_edge, %if.else8.i944.msm_cm_dll_set_freq.exit960_crit_edge, %if.else4.i942.msm_cm_dll_set_freq.exit960_crit_edge, %if.else.i940.msm_cm_dll_set_freq.exit960_crit_edge, %if.then551.msm_cm_dll_set_freq.exit960_crit_edge
  %mclk_freq.0.i954 = phi i32 [ 0, %if.then551.msm_cm_dll_set_freq.exit960_crit_edge ], [ 16777216, %if.else.i940.msm_cm_dll_set_freq.exit960_crit_edge ], [ 33554432, %if.else4.i942.msm_cm_dll_set_freq.exit960_crit_edge ], [ 50331648, %if.else8.i944.msm_cm_dll_set_freq.exit960_crit_edge ], [ 67108864, %if.else12.i946.msm_cm_dll_set_freq.exit960_crit_edge ], [ 83886080, %if.else16.i948.msm_cm_dll_set_freq.exit960_crit_edge ], [ 100663296, %if.else20.i950.msm_cm_dll_set_freq.exit960_crit_edge ], [ %spec.select.i952, %if.else24.i953 ]
  %138 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ioaddr, align 16
  %core_dll_config.i956 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %135, i32 0, i32 15
  %140 = ptrtoint ptr %core_dll_config.i956 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %core_dll_config.i956, align 4
  %add.ptr.i957 = getelementptr i8, ptr %139, i32 %141
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i957) #9, !srcloc !332
  %143 = and i32 %142, -8
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #9
  %or.i958 = or i32 %144, %mclk_freq.0.i954
  %145 = tail call i32 @llvm.bswap.i32(i32 %or.i958) #9
  %146 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ioaddr, align 16
  %148 = ptrtoint ptr %core_dll_config.i956 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %core_dll_config.i956, align 4
  %add.ptr38.i959 = getelementptr i8, ptr %147, i32 %149
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i959, i32 %145) #9, !srcloc !329
  br label %if.end552

if.end552:                                        ; preds = %msm_cm_dll_set_freq.exit960, %if.then548.if.end552_crit_edge
  %150 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_2555 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 24
  %152 = ptrtoint ptr %core_dll_config_2555 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %core_dll_config_2555, align 4
  %add.ptr556 = getelementptr i8, ptr %151, i32 %153
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr556) #9, !srcloc !332
  %155 = and i32 %154, -8193
  %156 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %ioaddr, align 16
  %158 = ptrtoint ptr %core_dll_config_2555 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %core_dll_config_2555, align 4
  %add.ptr562 = getelementptr i8, ptr %157, i32 %159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr562, i32 %155) #9, !srcloc !329
  br label %if.end563

if.end563:                                        ; preds = %if.end552, %if.end525.if.end563_crit_edge
  %uses_tassadar_dll = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i903, i32 0, i32 26
  %160 = ptrtoint ptr %uses_tassadar_dll to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %uses_tassadar_dll, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool564.not = icmp eq i8 %161, 0
  br i1 %tobool564.not, label %if.end563.if.end584_crit_edge, label %if.then565

if.end563.if.end584_crit_edge:                    ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end584

if.then565:                                       ; preds = %if.end563
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %ioaddr, align 16
  %core_dll_usr_ctl = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 28
  %164 = ptrtoint ptr %core_dll_usr_ctl to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %core_dll_usr_ctl, align 4
  %add.ptr567 = getelementptr i8, ptr %163, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr567, i32 524588) #9, !srcloc !329
  %166 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_3 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 25
  %168 = ptrtoint ptr %core_dll_config_3 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %core_dll_config_3, align 4
  %add.ptr570 = getelementptr i8, ptr %167, i32 %169
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr570) #9, !srcloc !332
  %171 = and i32 %170, 16777215
  %172 = tail call i32 @llvm.bswap.i32(i32 %171)
  %clk_rate = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 10
  %173 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %174)
  %cmp574 = icmp ult i32 %174, 150000000
  %config.0.v = select i1 %cmp574, i32 8, i32 16
  %config.0 = or i32 %config.0.v, %172
  %175 = tail call i32 @llvm.bswap.i32(i32 %config.0)
  %176 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ioaddr, align 16
  %178 = ptrtoint ptr %core_dll_config_3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %core_dll_config_3, align 4
  %add.ptr583 = getelementptr i8, ptr %177, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr583, i32 %175) #9, !srcloc !329
  br label %if.end584

if.end584:                                        ; preds = %if.then565, %if.end563.if.end584_crit_edge
  %180 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %ioaddr, align 16
  %182 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %core_dll_config47, align 4
  %add.ptr588 = getelementptr i8, ptr %181, i32 %183
  %184 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr588) #9, !srcloc !332
  %185 = or i32 %184, 256
  %186 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ioaddr, align 16
  %188 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %core_dll_config47, align 4
  %add.ptr594 = getelementptr i8, ptr %187, i32 %189
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr594, i32 %185) #9, !srcloc !329
  %190 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ioaddr, align 16
  %192 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %core_dll_config47, align 4
  %add.ptr598 = getelementptr i8, ptr %191, i32 %193
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr598) #9, !srcloc !332
  %195 = or i32 %194, 1024
  %196 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ioaddr, align 16
  %198 = ptrtoint ptr %core_dll_config47 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %core_dll_config47, align 4
  %add.ptr604 = getelementptr i8, ptr %197, i32 %199
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr604, i32 %195) #9, !srcloc !329
  %core_dll_status = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 16
  %200 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ioaddr, align 16
  %202 = ptrtoint ptr %core_dll_status to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %core_dll_status, align 4
  %add.ptr6071015 = getelementptr i8, ptr %201, i32 %203
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6071015) #9, !srcloc !332
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %204)
  %tobool611.not1016 = icmp sgt i32 %204, -1
  br i1 %tobool611.not1016, label %if.end584.while.body_crit_edge, label %if.end584.cleanup_crit_edge

if.end584.cleanup_crit_edge:                      ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end584.while.body_crit_edge:                   ; preds = %if.end584
  br label %while.body

while.body:                                       ; preds = %if.end622.while.body_crit_edge, %if.end584.while.body_crit_edge
  %wait_cnt.01017 = phi i32 [ %dec, %if.end622.while.body_crit_edge ], [ 50, %if.end584.while.body_crit_edge ]
  %dec = add nsw i32 %wait_cnt.01017, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp614 = icmp eq i32 %dec, 0
  br i1 %cmp614, label %do.end619, label %if.end622

do.end619:                                        ; preds = %while.body
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 128
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %207 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i961 = icmp eq ptr %208, null
  br i1 %tobool.not.i961, label %if.end.i, label %do.end619.dev_name.exit_crit_edge

do.end619.dev_name.exit_crit_edge:                ; preds = %do.end619
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end619
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %209 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end619.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %210, %if.end.i ], [ %208, %do.end619.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %206, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i) #12
  br label %cleanup

if.end622:                                        ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 214748) #9
  %212 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ioaddr, align 16
  %214 = ptrtoint ptr %core_dll_status to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %core_dll_status, align 4
  %add.ptr607 = getelementptr i8, ptr %213, i32 %215
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr607) #9, !srcloc !332
  %tobool611.not = icmp sgt i32 %216, -1
  br i1 %tobool611.not, label %if.end622.while.body_crit_edge, label %if.end622.cleanup_crit_edge

if.end622.cleanup_crit_edge:                      ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end622.while.body_crit_edge:                   ; preds = %if.end622
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %if.end622.cleanup_crit_edge, %dev_name.exit, %if.end584.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %dev_name.exit ], [ 0, %if.end584.cleanup_crit_edge ], [ 0, %if.end622.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_config_cm_dll_phase(ptr noundef %host, i8 noundef zeroext %phase) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %conv = zext i8 %phase to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %phase)
  %cmp = icmp ugt i8 %phase, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset.i, align 4
  %lock = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 15
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr, align 16
  %core_dll_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %core_dll_config, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %9 = and i32 %8, -3841
  %10 = or i32 %9, 2304
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 16
  %13 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_dll_config, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %10) #9, !srcloc !329
  %15 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc1, align 8
  %17 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %offset.i, align 4
  %19 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr, align 16
  %core_dll_config.i = getelementptr inbounds %struct.sdhci_msm_offset, ptr %18, i32 0, i32 15
  %21 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %24 = and i32 %23, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not36.i = icmp eq i32 %24, 0
  br i1 %cmp.not36.i, label %do.body3.if.end17_crit_edge, label %do.body3.while.body.i_crit_edge

do.body3.while.body.i_crit_edge:                  ; preds = %do.body3
  br label %while.body.i

do.body3.if.end17_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body3.while.body.i_crit_edge
  %wait_cnt.037.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ 50, %do.body3.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %wait_cnt.037.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp7.i = icmp eq i32 %dec.i, 0
  br i1 %cmp7.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %16, align 128
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.msm_dll_poll_ck_out_en.exit_crit_edge

do.end.i.msm_dll_poll_ck_out_en.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_dll_poll_ck_out_en.exit

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1
  %29 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev.i, align 4
  br label %msm_dll_poll_ck_out_en.exit

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #9
  %32 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr, align 16
  %34 = ptrtoint ptr %core_dll_config.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_dll_config.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %33, i32 %35
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #9, !srcloc !332
  %37 = and i32 %36, 1024
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %if.end.i.if.end17_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.if.end17_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

msm_dll_poll_ck_out_en.exit:                      ; preds = %if.end.i.i, %do.end.i.msm_dll_poll_ck_out_en.exit_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %do.end.i.msm_dll_poll_ck_out_en.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.56, ptr noundef %retval.0.i.i, i32 noundef 0) #12
  br label %do.end57

if.end17:                                         ; preds = %if.end.i.if.end17_crit_edge, %do.body3.if.end17_crit_edge
  %38 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr, align 16
  %40 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %core_dll_config, align 4
  %add.ptr21 = getelementptr i8, ptr %39, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !332
  %43 = and i32 %42, -61441
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %arrayidx = getelementptr [16 x i8], ptr @msm_config_cm_dll_phase.grey_coded_phase_table, i32 0, i32 %conv
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %46 to i32
  %shl = shl nuw nsw i32 %conv25, 20
  %or26 = or i32 %shl, %44
  %47 = tail call i32 @llvm.bswap.i32(i32 %or26)
  %48 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr, align 16
  %50 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %core_dll_config, align 4
  %add.ptr29 = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %47) #9, !srcloc !329
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 16
  %54 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_dll_config, align 4
  %add.ptr33 = getelementptr i8, ptr %53, i32 %55
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #9, !srcloc !332
  %57 = or i32 %56, 1024
  %58 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr, align 16
  %60 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %core_dll_config, align 4
  %add.ptr39 = getelementptr i8, ptr %59, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %57) #9, !srcloc !329
  %62 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmc1, align 8
  %64 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %offset.i, align 4
  %66 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr, align 16
  %core_dll_config.i103 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %65, i32 0, i32 15
  %68 = ptrtoint ptr %core_dll_config.i103 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %core_dll_config.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %67, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #9, !srcloc !332
  %71 = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.not36.i107.not = icmp eq i32 %71, 0
  br i1 %cmp.not36.i107.not, label %if.end17.while.body.i111_crit_edge, label %if.end17.if.end43_crit_edge

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end17.while.body.i111_crit_edge:               ; preds = %if.end17
  br label %while.body.i111

while.body.i111:                                  ; preds = %if.end.i123.while.body.i111_crit_edge, %if.end17.while.body.i111_crit_edge
  %wait_cnt.037.i108 = phi i32 [ %dec.i109, %if.end.i123.while.body.i111_crit_edge ], [ 50, %if.end17.while.body.i111_crit_edge ]
  %dec.i109 = add nsw i32 %wait_cnt.037.i108, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i109)
  %cmp7.i110 = icmp eq i32 %dec.i109, 0
  br i1 %cmp7.i110, label %do.end.i114, label %if.end.i123

do.end.i114:                                      ; preds = %while.body.i111
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %63, align 128
  %init_name.i.i112 = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 1, i32 3
  %74 = ptrtoint ptr %init_name.i.i112 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i.i112, align 8
  %tobool.not.i.i113 = icmp eq ptr %75, null
  br i1 %tobool.not.i.i113, label %if.end.i.i116, label %do.end.i114.msm_dll_poll_ck_out_en.exit125_crit_edge

do.end.i114.msm_dll_poll_ck_out_en.exit125_crit_edge: ; preds = %do.end.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %msm_dll_poll_ck_out_en.exit125

if.end.i.i116:                                    ; preds = %do.end.i114
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev.i115 = getelementptr inbounds %struct.mmc_host, ptr %63, i32 0, i32 1
  %76 = ptrtoint ptr %class_dev.i115 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %class_dev.i115, align 4
  br label %msm_dll_poll_ck_out_en.exit125

if.end.i123:                                      ; preds = %while.body.i111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748) #9
  %79 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr, align 16
  %81 = ptrtoint ptr %core_dll_config.i103 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %core_dll_config.i103, align 4
  %add.ptr14.i119 = getelementptr i8, ptr %80, i32 %82
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i119) #9, !srcloc !332
  %84 = and i32 %83, 1024
  %cmp.not.i122.not = icmp eq i32 %84, 0
  br i1 %cmp.not.i122.not, label %if.end.i123.while.body.i111_crit_edge, label %if.end.i123.if.end43_crit_edge

if.end.i123.if.end43_crit_edge:                   ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end.i123.while.body.i111_crit_edge:            ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i111

msm_dll_poll_ck_out_en.exit125:                   ; preds = %if.end.i.i116, %do.end.i114.msm_dll_poll_ck_out_en.exit125_crit_edge
  %retval.0.i.i117 = phi ptr [ %77, %if.end.i.i116 ], [ %75, %do.end.i114.msm_dll_poll_ck_out_en.exit125_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.56, ptr noundef %retval.0.i.i117, i32 noundef 1) #12
  br label %do.end57

if.end43:                                         ; preds = %if.end.i123.if.end43_crit_edge, %if.end17.if.end43_crit_edge
  %85 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ioaddr, align 16
  %87 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %core_dll_config, align 4
  %add.ptr47 = getelementptr i8, ptr %86, i32 %88
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !332
  %90 = and i32 %89, -2561
  %91 = or i32 %90, 512
  %92 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioaddr, align 16
  %94 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %core_dll_config, align 4
  %add.ptr54 = getelementptr i8, ptr %93, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %91) #9, !srcloc !329
  br label %out

do.end57:                                         ; preds = %msm_dll_poll_ck_out_en.exit125, %msm_dll_poll_ck_out_en.exit
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 128
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %98 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %99, null
  br i1 %tobool.not.i, label %if.end.i126, label %do.end57.dev_name.exit_crit_edge

do.end57.dev_name.exit_crit_edge:                 ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i126:                                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i126, %do.end57.dev_name.exit_crit_edge
  %retval.0.i127 = phi ptr [ %101, %if.end.i126 ], [ %99, %do.end57.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i127, i32 noundef %conv) #12
  br label %out

out:                                              ; preds = %dev_name.exit, %if.end43
  %rc.1 = phi i32 [ -110, %dev_name.exit ], [ 0, %if.end43 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_cdclp533_calibration(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i278 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 21
  %offset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %offset, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_cdclp533_calibration, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i279 = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.50, ptr noundef %retval.0.i279, ptr noundef nonnull @.str.58) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %call6 = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %host)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.do.body180_crit_edge

do.end.do.body180_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

if.end9:                                          ; preds = %do.end
  %saved_tuning_phase = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i278, i32 0, i32 12
  %8 = ptrtoint ptr %saved_tuning_phase to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %saved_tuning_phase, align 1
  %call10 = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %host, i8 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.do.body180_crit_edge

if.end9.do.body180_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

if.end13:                                         ; preds = %if.end9
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %10 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr, align 16
  %core_dll_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_dll_config, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %15 = or i32 %14, 16777216
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 16
  %18 = ptrtoint ptr %core_dll_config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %core_dll_config, align 4
  %add.ptr18 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #9, !srcloc !329
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %core_ddr_200_cfg = getelementptr inbounds %struct.sdhci_msm_offset, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !332
  %25 = and i32 %24, -16777217
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 16
  %28 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr26 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %25) #9, !srcloc !329
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 16
  %add.ptr29 = getelementptr i8, ptr %31, i32 376
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !332
  %33 = and i32 %32, -16777217
  %34 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr, align 16
  %add.ptr34 = getelementptr i8, ptr %35, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %33) #9, !srcloc !329
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 16
  %add.ptr37 = getelementptr i8, ptr %37, i32 376
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #9, !srcloc !332
  %39 = or i32 %38, 33554432
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 16
  %add.ptr42 = getelementptr i8, ptr %41, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %39) #9, !srcloc !329
  %42 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr, align 16
  %44 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr46 = getelementptr i8, ptr %43, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !332
  %47 = and i32 %46, -1073741825
  %48 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioaddr, align 16
  %50 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr52 = getelementptr i8, ptr %49, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %47) #9, !srcloc !329
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 16
  %add.ptr54 = getelementptr i8, ptr %53, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 -335538175) #9, !srcloc !329
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 16
  %add.ptr56 = getelementptr i8, ptr %55, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 286327043) #9, !srcloc !329
  %56 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr, align 16
  %add.ptr58 = getelementptr i8, ptr %57, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 1056769) #9, !srcloc !329
  %58 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioaddr, align 16
  %add.ptr60 = getelementptr i8, ptr %59, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 67108864) #9, !srcloc !329
  %60 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr, align 16
  %add.ptr62 = getelementptr i8, ptr %61, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 538997707) #9, !srcloc !329
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 16
  %add.ptr64 = getelementptr i8, ptr %63, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 420151296) #9, !srcloc !329
  %64 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ioaddr, align 16
  %add.ptr66 = getelementptr i8, ptr %65, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 -503054336) #9, !srcloc !329
  %66 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr, align 16
  %add.ptr68 = getelementptr i8, ptr %67, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #9, !srcloc !329
  %68 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr, align 16
  %add.ptr70 = getelementptr i8, ptr %69, i32 352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 878903552) #9, !srcloc !329
  %70 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ioaddr, align 16
  %add.ptr73 = getelementptr i8, ptr %71, i32 304
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #9, !srcloc !332
  %73 = or i32 %72, 256
  %74 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioaddr, align 16
  %add.ptr78 = getelementptr i8, ptr %75, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %73) #9, !srcloc !329
  %76 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr, align 16
  %add.ptr81 = getelementptr i8, ptr %77, i32 304
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #9, !srcloc !332
  %79 = and i32 %78, -257
  %80 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioaddr, align 16
  %add.ptr86 = getelementptr i8, ptr %81, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %79) #9, !srcloc !329
  %82 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ioaddr, align 16
  %add.ptr89 = getelementptr i8, ptr %83, i32 304
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #9, !srcloc !332
  %85 = or i32 %84, 512
  %86 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr, align 16
  %add.ptr94 = getelementptr i8, ptr %87, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %85) #9, !srcloc !329
  %88 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr, align 16
  %add.ptr97 = getelementptr i8, ptr %89, i32 312
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #9, !srcloc !332
  %91 = or i32 %90, 256
  %92 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioaddr, align 16
  %add.ptr102 = getelementptr i8, ptr %93, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr102, i32 %91) #9, !srcloc !329
  %call103 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call103, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 973) #9
  %94 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioaddr, align 16
  %add.ptr118299 = getelementptr i8, ptr %95, i32 356
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118299) #9, !srcloc !332
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %and121300 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121300)
  %tobool122.not301 = icmp eq i32 %and121300, 0
  br i1 %tobool122.not301, label %if.end13.land.lhs.true_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end13.land.lhs.true_crit_edge:                 ; preds = %if.end13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then137.land.lhs.true_crit_edge, %if.end13.land.lhs.true_crit_edge
  %call126 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call126, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call126, %add.i
  br i1 %cmp3.i, label %if.then129, label %if.then137

if.then129:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr, align 16
  %add.ptr132 = getelementptr i8, ptr %99, i32 356
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #9, !srcloc !332
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  br label %for.end

if.then137:                                       ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %102 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioaddr, align 16
  %add.ptr118 = getelementptr i8, ptr %103, i32 356
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #9, !srcloc !332
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  %and121 = and i32 %105, 1
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.then137.land.lhs.true_crit_edge, label %if.then137.for.end_crit_edge

if.then137.for.end_crit_edge:                     ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then137.land.lhs.true_crit_edge:               ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then137.for.end_crit_edge, %if.then129, %if.end13.for.end_crit_edge
  %calib_done.0 = phi i32 [ %101, %if.then129 ], [ %97, %if.end13.for.end_crit_edge ], [ %105, %if.then137.for.end_crit_edge ]
  %and140 = and i32 %calib_done.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %do.end146, label %if.end152

do.end146:                                        ; preds = %for.end
  %mmc148 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %106 = ptrtoint ptr %mmc148 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmc148, align 8
  %init_name.i281 = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %init_name.i281 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %init_name.i281, align 8
  %tobool.not.i282 = icmp eq ptr %109, null
  br i1 %tobool.not.i282, label %if.end.i283, label %do.end146.dev_name.exit285_crit_edge

do.end146.dev_name.exit285_crit_edge:             ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit285

if.end.i283:                                      ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev149 = getelementptr inbounds %struct.mmc_host, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %class_dev149 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %class_dev149, align 4
  br label %dev_name.exit285

dev_name.exit285:                                 ; preds = %if.end.i283, %do.end146.dev_name.exit285_crit_edge
  %retval.0.i284 = phi ptr [ %111, %if.end.i283 ], [ %109, %do.end146.dev_name.exit285_crit_edge ]
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %retval.0.i284, ptr noundef nonnull @.str.58) #12
  br label %do.body180

if.end152:                                        ; preds = %for.end
  %112 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioaddr, align 16
  %add.ptr155 = getelementptr i8, ptr %113, i32 356
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr155) #9, !srcloc !332
  %115 = shl i32 %114, 24
  %and158 = and i32 %115, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end169, label %do.end163

do.end163:                                        ; preds = %if.end152
  %mmc165 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %116 = ptrtoint ptr %mmc165 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmc165, align 8
  %init_name.i286 = getelementptr inbounds %struct.mmc_host, ptr %117, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %init_name.i286 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %init_name.i286, align 8
  %tobool.not.i287 = icmp eq ptr %119, null
  br i1 %tobool.not.i287, label %if.end.i288, label %do.end163.dev_name.exit290_crit_edge

do.end163.dev_name.exit290_crit_edge:             ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit290

if.end.i288:                                      ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev166 = getelementptr inbounds %struct.mmc_host, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %class_dev166 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %class_dev166, align 4
  br label %dev_name.exit290

dev_name.exit290:                                 ; preds = %if.end.i288, %do.end163.dev_name.exit290_crit_edge
  %retval.0.i289 = phi ptr [ %121, %if.end.i288 ], [ %119, %do.end163.dev_name.exit290_crit_edge ]
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %retval.0.i289, ptr noundef nonnull @.str.58, i32 noundef %and158) #12
  br label %do.body180

if.end169:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ioaddr, align 16
  %124 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr173 = getelementptr i8, ptr %123, i32 %125
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr173) #9, !srcloc !332
  %127 = or i32 %126, 1073741824
  %128 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ioaddr, align 16
  %130 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr179 = getelementptr i8, ptr %129, i32 %131
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %127) #9, !srcloc !329
  br label %do.body180

do.body180:                                       ; preds = %if.end169, %dev_name.exit290, %dev_name.exit285, %if.end9.do.body180_crit_edge, %do.end.do.body180_crit_edge
  %ret.0 = phi i32 [ %call6, %do.end.do.body180_crit_edge ], [ %call10, %if.end9.do.body180_crit_edge ], [ -110, %dev_name.exit285 ], [ -22, %dev_name.exit290 ], [ 0, %if.end169 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_cdclp533_calibration, %if.then192)) #9
          to label %do.end198 [label %if.then192], !srcloc !331

if.then192:                                       ; preds = %do.body180
  %mmc193 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %132 = ptrtoint ptr %mmc193 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmc193, align 8
  %init_name.i291 = getelementptr inbounds %struct.mmc_host, ptr %133, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %init_name.i291 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %init_name.i291, align 8
  %tobool.not.i292 = icmp eq ptr %135, null
  br i1 %tobool.not.i292, label %if.end.i293, label %if.then192.dev_name.exit295_crit_edge

if.then192.dev_name.exit295_crit_edge:            ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit295

if.end.i293:                                      ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev194 = getelementptr inbounds %struct.mmc_host, ptr %133, i32 0, i32 1
  %136 = ptrtoint ptr %class_dev194 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %class_dev194, align 4
  br label %dev_name.exit295

dev_name.exit295:                                 ; preds = %if.end.i293, %if.then192.dev_name.exit295_crit_edge
  %retval.0.i294 = phi ptr [ %137, %if.end.i293 ], [ %135, %if.then192.dev_name.exit295_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.51, ptr noundef %retval.0.i294, ptr noundef nonnull @.str.58, i32 noundef %ret.0) #9
  br label %do.end198

do.end198:                                        ; preds = %dev_name.exit295, %do.body180
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_cm_dll_sdc4_calibration(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 8
  %offset.i = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21
  %2 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %offset.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_cm_dll_sdc4_calibration, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !331

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc1, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i156 = phi ptr [ %9, %if.end.i ], [ %7, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.50, ptr noundef %retval.0.i156, ptr noundef nonnull @.str.63) #9
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %updated_ddr_cfg = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 2
  %10 = ptrtoint ptr %updated_ddr_cfg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %updated_ddr_cfg, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  %core_ddr_config = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 27
  %core_ddr_config_old = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 26
  %ddr_cfg_offset.0.in = select i1 %tobool9.not, ptr %core_ddr_config_old, ptr %core_ddr_config
  %12 = ptrtoint ptr %ddr_cfg_offset.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %ddr_cfg_offset.0 = load i32, ptr %ddr_cfg_offset.0.in, align 4
  %ddr_config = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 21, i32 3, i32 1
  %13 = ptrtoint ptr %ddr_config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ddr_config, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %17, i32 %ddr_cfg_offset.0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #9, !srcloc !329
  %enhanced_strobe = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 10
  %18 = ptrtoint ptr %enhanced_strobe to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enhanced_strobe, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool12.not = icmp eq i8 %19, 0
  br i1 %tobool12.not, label %do.end.if.end21_crit_edge, label %if.then13

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %core_ddr_200_cfg = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 22
  %22 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr15 = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !332
  %25 = or i32 %24, 33554432
  %26 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr, align 16
  %28 = ptrtoint ptr %core_ddr_200_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %core_ddr_200_cfg, align 4
  %add.ptr20 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %25) #9, !srcloc !329
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %do.end.if.end21_crit_edge
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 16
  %core_dll_config_2 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 24
  %32 = ptrtoint ptr %core_dll_config_2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %core_dll_config_2, align 4
  %add.ptr24 = getelementptr i8, ptr %31, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !332
  %35 = or i32 %34, 16777216
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 16
  %38 = ptrtoint ptr %core_dll_config_2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %core_dll_config_2, align 4
  %add.ptr30 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %35) #9, !srcloc !329
  %call31 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call31, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1040) #9
  %core_dll_status = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 16
  %40 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr, align 16
  %42 = ptrtoint ptr %core_dll_status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %core_dll_status, align 4
  %add.ptr46172 = getelementptr i8, ptr %41, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46172) #9, !srcloc !332
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %and173 = and i32 %45, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool49.not174 = icmp eq i32 %and173, 0
  br i1 %tobool49.not174, label %if.end21.land.lhs.true_crit_edge, label %if.end21.for.end_crit_edge

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end21.land.lhs.true_crit_edge:                 ; preds = %if.end21
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then65.land.lhs.true_crit_edge, %if.end21.land.lhs.true_crit_edge
  %call53 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call53, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call53, %add.i
  br i1 %cmp3.i, label %if.then56, label %if.then65

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr, align 16
  %48 = ptrtoint ptr %core_dll_status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %core_dll_status, align 4
  %add.ptr60 = getelementptr i8, ptr %47, i32 %49
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #9, !srcloc !332
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  br label %for.end

if.then65:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 16
  %54 = ptrtoint ptr %core_dll_status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %core_dll_status, align 4
  %add.ptr46 = getelementptr i8, ptr %53, i32 %55
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #9, !srcloc !332
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %and = and i32 %57, 2048
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.then65.land.lhs.true_crit_edge, label %if.then65.for.end_crit_edge

if.then65.for.end_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then65.land.lhs.true_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then65.for.end_crit_edge, %if.then56, %if.end21.for.end_crit_edge
  %dll_status.0 = phi i32 [ %51, %if.then56 ], [ %45, %if.end21.for.end_crit_edge ], [ %57, %if.then65.for.end_crit_edge ]
  %and68 = and i32 %dll_status.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond = select i1 %tobool69.not, i32 -110, i32 0
  br i1 %tobool69.not, label %do.end74, label %if.end80

do.end74:                                         ; preds = %for.end
  %58 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmc1, align 8
  %init_name.i158 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %init_name.i158 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i158, align 8
  %tobool.not.i159 = icmp eq ptr %61, null
  br i1 %tobool.not.i159, label %if.end.i160, label %do.end74.dev_name.exit162_crit_edge

do.end74.dev_name.exit162_crit_edge:              ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit162

if.end.i160:                                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev77 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %class_dev77 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %class_dev77, align 4
  br label %dev_name.exit162

dev_name.exit162:                                 ; preds = %if.end.i160, %do.end74.dev_name.exit162_crit_edge
  %retval.0.i161 = phi ptr [ %63, %if.end.i160 ], [ %61, %do.end74.dev_name.exit162_crit_edge ]
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %retval.0.i161, ptr noundef nonnull @.str.63) #12
  br label %do.body96

if.end80:                                         ; preds = %for.end
  %use_14lpp_dll_reset = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 13, i32 12
  %64 = ptrtoint ptr %use_14lpp_dll_reset to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %use_14lpp_dll_reset, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool81.not = icmp eq i8 %65, 0
  br i1 %tobool81.not, label %if.then82, label %if.end80.do.body93_crit_edge

if.end80.do.body93_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body93

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec3 = getelementptr inbounds %struct.sdhci_msm_offset, ptr %3, i32 0, i32 23
  %68 = ptrtoint ptr %core_vendor_spec3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %core_vendor_spec3, align 4
  %add.ptr85 = getelementptr i8, ptr %67, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #9, !srcloc !332
  %71 = or i32 %70, 134217728
  %72 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ioaddr, align 16
  %74 = ptrtoint ptr %core_vendor_spec3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %core_vendor_spec3, align 4
  %add.ptr91 = getelementptr i8, ptr %73, i32 %75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %71) #9, !srcloc !329
  br label %do.body93

do.body93:                                        ; preds = %if.then82, %if.end80.do.body93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !350
  tail call void @arm_heavy_mb() #9
  br label %do.body96

do.body96:                                        ; preds = %do.body93, %dev_name.exit162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_cm_dll_sdc4_calibration, %if.then108)) #9
          to label %do.end114 [label %if.then108], !srcloc !331

if.then108:                                       ; preds = %do.body96
  %76 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmc1, align 8
  %init_name.i163 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %init_name.i163 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %init_name.i163, align 8
  %tobool.not.i164 = icmp eq ptr %79, null
  br i1 %tobool.not.i164, label %if.end.i165, label %if.then108.dev_name.exit167_crit_edge

if.then108.dev_name.exit167_crit_edge:            ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit167

if.end.i165:                                      ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev110 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %class_dev110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %class_dev110, align 4
  br label %dev_name.exit167

dev_name.exit167:                                 ; preds = %if.end.i165, %if.then108.dev_name.exit167_crit_edge
  %retval.0.i166 = phi ptr [ %81, %if.end.i165 ], [ %79, %if.then108.dev_name.exit167_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.51, ptr noundef %retval.0.i166, ptr noundef nonnull @.str.63, i32 noundef %cond) #9
  br label %do.end114

do.end114:                                        ; preds = %dev_name.exit167, %do.body96
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_get_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sdhci_msm_set_regulator_caps(ptr nocapture noundef %msm_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 8
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %2 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqmmc, align 4
  %offset = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 22
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offset, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then:                                          ; preds = %entry
  %call6 = tail call i32 @regulator_is_supported_voltage(ptr noundef %3, i32 noundef 1700000, i32 noundef 1950000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 67108864
  %call8 = tail call i32 @regulator_is_supported_voltage(ptr noundef %3, i32 noundef 2700000, i32 noundef 3600000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %or11 = or i32 %spec.select, 33554432
  %caps.1 = select i1 %tobool9.not, i32 %spec.select, i32 %or11
  %tobool13.not = select i1 %tobool9.not, i1 %tobool.not, i1 false
  br i1 %tobool13.not, label %do.end, label %if.then20

do.end:                                           ; preds = %if.then
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i77 = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %retval.0.i77) #12
  br label %if.end40

if.then20:                                        ; preds = %if.then
  %curr_io_level = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 15
  %10 = ptrtoint ptr %curr_io_level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %curr_io_level, align 4
  %ioaddr = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 16
  %core_vendor_spec = getelementptr inbounds %struct.sdhci_msm_offset, ptr %5, i32 0, i32 17
  %14 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %17 = or i32 %16, 8388608
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  %and25 = and i32 %caps.1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool26.not
  br i1 %or.cond, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %and28 = and i32 %18, -65537
  br label %if.end36

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %and29 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond75 = select i1 %tobool30.not, i1 %tobool.not, i1 false
  %or34 = or i32 %18, 65536
  %spec.select76 = select i1 %or.cond75, i32 %18, i32 %or34
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then27
  %config.0 = phi i32 [ %and28, %if.then27 ], [ %spec.select76, %if.else ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %config.0)
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 16
  %22 = ptrtoint ptr %core_vendor_spec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %core_vendor_spec, align 4
  %add.ptr39 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %19) #9, !srcloc !329
  br label %if.end40

if.end40:                                         ; preds = %if.end36, %dev_name.exit, %entry.if.end40_crit_edge
  %caps.285 = phi i32 [ %caps.1, %if.end36 ], [ 0, %entry.if.end40_crit_edge ], [ 0, %dev_name.exit ]
  %caps_0 = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 18
  %24 = ptrtoint ptr %caps_0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %caps_0, align 4
  %or41 = or i32 %25, %caps.285
  store i32 %or41, ptr %caps_0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdhci_msm_set_regulator_caps.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdhci_msm_set_regulator_caps, %if.then48)) #9
          to label %do.end53 [label %if.then48], !srcloc !331

if.then48:                                        ; preds = %if.end40
  %init_name.i78 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %init_name.i78 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i78, align 8
  %tobool.not.i79 = icmp eq ptr %27, null
  br i1 %tobool.not.i79, label %if.end.i80, label %if.then48.dev_name.exit82_crit_edge

if.then48.dev_name.exit82_crit_edge:              ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit82

if.end.i80:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev49 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %class_dev49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %class_dev49, align 4
  br label %dev_name.exit82

dev_name.exit82:                                  ; preds = %if.end.i80, %if.then48.dev_name.exit82_crit_edge
  %retval.0.i81 = phi ptr [ %29, %if.end.i80 ], [ %27, %if.then48.dev_name.exit82_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sdhci_msm_set_regulator_caps.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.81, ptr noundef %retval.0.i81, i32 noundef %caps.285) #9
  br label %do.end53

do.end53:                                         ; preds = %dev_name.exit82, %if.end40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_tuning(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msm_find_most_appropriate_phase(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %phase_table, i8 noundef zeroext %total_phases) unnamed_addr #2 align 64 {
entry:
  %ranges = alloca [16 x [16 x i8]], align 1
  %phases_per_row = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ranges) #9
  %0 = call ptr @memset(ptr %ranges, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %phases_per_row) #9
  %1 = call ptr @memset(ptr %phases_per_row, i32 0, i32 16)
  %mmc1 = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 10
  %2 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc1, align 8
  %conv = zext i8 %total_phases to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %total_phases)
  %cmp = icmp ugt i8 %total_phases, 16
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %total_phases)
  %cmp5219.not = icmp eq i8 %total_phases, 0
  br i1 %cmp5219.not, label %for.cond.preheader.for.body109.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.body109.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body109.preheader

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.107, ptr noundef %retval.0.i, i32 noundef %conv) #12
  br label %cleanup137

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cnt.0222 = phi i32 [ %add12, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %col_index.0221 = phi i32 [ %col_index.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %row_index.0220 = phi i32 [ %row_index.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %phase_table, i32 %cnt.0222
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %arrayidx8 = getelementptr [16 x [16 x i8]], ptr %ranges, i32 0, i32 %row_index.0220, i32 %col_index.0221
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr [16 x i8], ptr %phases_per_row, i32 0, i32 %row_index.0220
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx9, align 1
  %add = add i8 %14, 1
  store i8 %add, ptr %arrayidx9, align 1
  %inc = add i32 %col_index.0221, 1
  %add12 = add nuw nsw i32 %cnt.0222, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add12, i32 %conv)
  %cmp14 = icmp eq i32 %add12, %conv
  br i1 %cmp14, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv18 = zext i8 %11 to i32
  %add19 = add nuw nsw i32 %conv18, 1
  %arrayidx21 = getelementptr i8, ptr %phase_table, i32 %add12
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add19, i32 %conv22)
  %cmp23.not = icmp eq i32 %add19, %conv22
  %not.cmp23.not = xor i1 %cmp23.not, true
  %inc26 = zext i1 %not.cmp23.not to i32
  %spec.select = add i32 %row_index.0220, %inc26
  %spec.select206 = select i1 %cmp23.not, i32 %inc, i32 0
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %row_index.1 = phi i32 [ %row_index.0220, %for.body.for.inc_crit_edge ], [ %spec.select, %if.else ]
  %col_index.1 = phi i32 [ %inc, %for.body.for.inc_crit_edge ], [ %spec.select206, %if.else ]
  %exitcond.not = icmp eq i32 %add12, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %row_index.1)
  %cmp30 = icmp sgt i32 %row_index.1, 15
  br i1 %cmp30, label %for.end.cleanup137_crit_edge, label %if.end33

for.end.cleanup137_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

if.end33:                                         ; preds = %for.end
  %17 = ptrtoint ptr %ranges to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ranges, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool36.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %row_index.1)
  %cmp39.not224 = icmp slt i32 %row_index.1, 1
  %or.cond = select i1 %tobool36.not, i1 true, i1 %cmp39.not224
  br i1 %or.cond, label %if.end33.if.end105_crit_edge, label %if.end33.for.body41_crit_edge

if.end33.for.body41_crit_edge:                    ; preds = %if.end33
  br label %for.body41

if.end33.if.end105_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

for.body41:                                       ; preds = %for.inc62.for.body41_crit_edge, %if.end33.for.body41_crit_edge
  %phase_15_raw_index.0228 = phi i32 [ %phase_15_raw_index.1, %for.inc62.for.body41_crit_edge ], [ 0, %if.end33.for.body41_crit_edge ]
  %cnt.1225 = phi i32 [ %inc63, %for.inc62.for.body41_crit_edge ], [ 1, %if.end33.for.body41_crit_edge ]
  %19 = phi i1 [ %phase_15_found.1.off0, %for.inc62.for.body41_crit_edge ], [ false, %if.end33.for.body41_crit_edge ]
  %arrayidx42 = getelementptr [16 x i8], ptr %phases_per_row, i32 0, i32 %cnt.1225
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool43.not = icmp eq i8 %21, 0
  br i1 %tobool43.not, label %for.body41.for.inc62_crit_edge, label %for.cond45.preheader

for.body41.for.inc62_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

for.cond45.preheader:                             ; preds = %for.body41
  %conv47 = zext i8 %21 to i32
  br label %for.body50

for.cond45:                                       ; preds = %for.body50
  %inc59 = add nuw nsw i32 %i.0223, 1
  %exitcond241.not = icmp eq i32 %inc59, %conv47
  br i1 %exitcond241.not, label %for.cond45.for.inc62_crit_edge, label %for.cond45.for.body50_crit_edge

for.cond45.for.body50_crit_edge:                  ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.cond45.for.inc62_crit_edge:                   ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

for.body50:                                       ; preds = %for.cond45.for.body50_crit_edge, %for.cond45.preheader
  %i.0223 = phi i32 [ 0, %for.cond45.preheader ], [ %inc59, %for.cond45.for.body50_crit_edge ]
  %arrayidx52 = getelementptr [16 x [16 x i8]], ptr %ranges, i32 0, i32 %cnt.1225, i32 %i.0223
  %22 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %23)
  %cmp54 = icmp eq i8 %23, 15
  br i1 %cmp54, label %for.body50.for.inc62_crit_edge, label %for.cond45

for.body50.for.inc62_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc62

for.inc62:                                        ; preds = %for.body50.for.inc62_crit_edge, %for.cond45.for.inc62_crit_edge, %for.body41.for.inc62_crit_edge
  %phase_15_raw_index.1 = phi i32 [ %phase_15_raw_index.0228, %for.body41.for.inc62_crit_edge ], [ %cnt.1225, %for.body50.for.inc62_crit_edge ], [ %phase_15_raw_index.0228, %for.cond45.for.inc62_crit_edge ]
  %phase_15_found.1.off0 = phi i1 [ %19, %for.body41.for.inc62_crit_edge ], [ true, %for.body50.for.inc62_crit_edge ], [ %19, %for.cond45.for.inc62_crit_edge ]
  %inc63 = add i32 %cnt.1225, 1
  %cmp39.not = icmp sgt i32 %inc63, %row_index.1
  br i1 %cmp39.not, label %if.end65, label %for.inc62.for.body41_crit_edge

for.inc62.for.body41_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body41

if.end65:                                         ; preds = %for.inc62
  br i1 %phase_15_found.1.off0, label %if.then70, label %if.end65.if.end105_crit_edge

if.end65.if.end105_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.then70:                                        ; preds = %if.end65
  %24 = ptrtoint ptr %phases_per_row to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %phases_per_row, align 1
  %arrayidx72 = getelementptr [16 x i8], ptr %phases_per_row, i32 0, i32 %phase_15_raw_index.1
  %26 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %25 to i32
  %conv74 = zext i8 %27 to i32
  %add75 = add nuw nsw i32 %conv74, %conv73
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add75)
  %cmp76 = icmp ugt i32 %add75, 15
  br i1 %cmp76, label %if.then70.cleanup137_crit_edge, label %for.cond81.preheader

if.then70.cleanup137_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

for.cond81.preheader:                             ; preds = %if.then70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp83231.not = icmp eq i8 %25, 0
  br i1 %cmp83231.not, label %for.cond81.preheader.if.end105.sink.split_crit_edge, label %for.cond81.preheader.for.body85_crit_edge

for.cond81.preheader.for.body85_crit_edge:        ; preds = %for.cond81.preheader
  br label %for.body85

for.cond81.preheader.if.end105.sink.split_crit_edge: ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.sink.split

for.cond81:                                       ; preds = %for.body85
  %inc90 = add nuw nsw i32 %i.1232, 1
  %inc96 = add nuw nsw i32 %cnt.2233, 1
  %exitcond242.not = icmp eq i32 %inc96, %conv73
  br i1 %exitcond242.not, label %for.cond81.if.end105.sink.split_crit_edge, label %for.cond81.for.body85_crit_edge

for.cond81.for.body85_crit_edge:                  ; preds = %for.cond81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body85

for.cond81.if.end105.sink.split_crit_edge:        ; preds = %for.cond81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.sink.split

for.body85:                                       ; preds = %for.cond81.for.body85_crit_edge, %for.cond81.preheader.for.body85_crit_edge
  %cnt.2233 = phi i32 [ %inc96, %for.cond81.for.body85_crit_edge ], [ 0, %for.cond81.preheader.for.body85_crit_edge ]
  %i.1232 = phi i32 [ %inc90, %for.cond81.for.body85_crit_edge ], [ %conv74, %for.cond81.preheader.for.body85_crit_edge ]
  %arrayidx87 = getelementptr [16 x i8], ptr %ranges, i32 0, i32 %cnt.2233
  %28 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx87, align 1
  %arrayidx89 = getelementptr [16 x [16 x i8]], ptr %ranges, i32 0, i32 %phase_15_raw_index.1, i32 %i.1232
  %30 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.1232)
  %cmp91 = icmp ugt i32 %i.1232, 14
  br i1 %cmp91, label %for.body85.if.end105.sink.split_crit_edge, label %for.cond81

for.body85.if.end105.sink.split_crit_edge:        ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.sink.split

if.end105.sink.split:                             ; preds = %for.body85.if.end105.sink.split_crit_edge, %for.cond81.if.end105.sink.split_crit_edge, %for.cond81.preheader.if.end105.sink.split_crit_edge
  %31 = ptrtoint ptr %phases_per_row to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %phases_per_row, align 1
  %conv102 = trunc i32 %add75 to i8
  %32 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv102, ptr %arrayidx72, align 1
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.end65.if.end105_crit_edge, %if.end33.if.end105_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %row_index.1)
  %cmp107.not234 = icmp slt i32 %row_index.1, 0
  br i1 %cmp107.not234, label %if.end105.for.end120_crit_edge, label %if.end105.for.body109.preheader_crit_edge

if.end105.for.body109.preheader_crit_edge:        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body109.preheader

if.end105.for.end120_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end120

for.body109.preheader:                            ; preds = %if.end105.for.body109.preheader_crit_edge, %for.cond.preheader.for.body109.preheader_crit_edge
  %row_index.0.lcssa245248258 = phi i32 [ %row_index.1, %if.end105.for.body109.preheader_crit_edge ], [ 0, %for.cond.preheader.for.body109.preheader_crit_edge ]
  br label %for.body109

for.body109:                                      ; preds = %for.body109.for.body109_crit_edge, %for.body109.preheader
  %cnt.3237 = phi i32 [ %inc119, %for.body109.for.body109_crit_edge ], [ 0, %for.body109.preheader ]
  %curr_max.0236 = phi i32 [ %35, %for.body109.for.body109_crit_edge ], [ 0, %for.body109.preheader ]
  %selected_row_index.0235 = phi i32 [ %spec.select207, %for.body109.for.body109_crit_edge ], [ 0, %for.body109.preheader ]
  %arrayidx110 = getelementptr [16 x i8], ptr %phases_per_row, i32 0, i32 %cnt.3237
  %33 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_max.0236, i32 %conv111)
  %cmp112 = icmp ult i32 %curr_max.0236, %conv111
  %spec.select207 = select i1 %cmp112, i32 %cnt.3237, i32 %selected_row_index.0235
  %35 = tail call i32 @llvm.smax.i32(i32 %curr_max.0236, i32 %conv111)
  %inc119 = add i32 %cnt.3237, 1
  %cmp107.not = icmp sgt i32 %inc119, %row_index.0.lcssa245248258
  br i1 %cmp107.not, label %for.end120.loopexit, label %for.body109.for.body109_crit_edge

for.body109.for.body109_crit_edge:                ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body109

for.end120.loopexit:                              ; preds = %for.body109
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = mul i32 %35, 3
  br label %for.end120

for.end120:                                       ; preds = %for.end120.loopexit, %if.end105.for.end120_crit_edge
  %selected_row_index.0.lcssa = phi i32 [ 0, %if.end105.for.end120_crit_edge ], [ %spec.select207, %for.end120.loopexit ]
  %curr_max.0.lcssa = phi i32 [ 0, %if.end105.for.end120_crit_edge ], [ %phi.bo, %for.end120.loopexit ]
  %mul.off = add i32 %curr_max.0.lcssa, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mul.off)
  %36 = icmp ult i32 %mul.off, 7
  %div = sdiv i32 %curr_max.0.lcssa, 4
  %dec = add nsw i32 %div, -1
  %i.2 = select i1 %36, i32 0, i32 %dec
  %arrayidx125 = getelementptr [16 x [16 x i8]], ptr %ranges, i32 0, i32 %selected_row_index.0.lcssa, i32 %i.2
  %37 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx125, align 1
  %conv126 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %38)
  %cmp127 = icmp ugt i8 %38, 15
  br i1 %cmp127, label %if.then129, label %for.end120.cleanup137_crit_edge

for.end120.cleanup137_crit_edge:                  ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup137

if.then129:                                       ; preds = %for.end120
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 128
  %init_name.i209 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %init_name.i209 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i209, align 8
  %tobool.not.i210 = icmp eq ptr %42, null
  br i1 %tobool.not.i210, label %if.end.i211, label %if.then129.dev_name.exit213_crit_edge

if.then129.dev_name.exit213_crit_edge:            ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit213

if.end.i211:                                      ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %class_dev134 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %class_dev134 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev134, align 4
  br label %dev_name.exit213

dev_name.exit213:                                 ; preds = %if.end.i211, %if.then129.dev_name.exit213_crit_edge
  %retval.0.i212 = phi ptr [ %44, %if.end.i211 ], [ %42, %if.then129.dev_name.exit213_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.110, ptr noundef %retval.0.i212, i32 noundef -22) #12
  br label %cleanup137

cleanup137:                                       ; preds = %dev_name.exit213, %for.end120.cleanup137_crit_edge, %if.then70.cleanup137_crit_edge, %for.end.cleanup137_crit_edge, %dev_name.exit
  %retval.1 = phi i32 [ -22, %dev_name.exit ], [ -22, %for.end.cleanup137_crit_edge ], [ -22, %dev_name.exit213 ], [ %conv126, %for.end120.cleanup137_crit_edge ], [ -22, %if.then70.cleanup137_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %phases_per_row) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ranges) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdhci_setup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cqhci_pltfm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cqhci_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sdhci_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cleanup_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_cqe_enable(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdhci_cqe_enable(ptr noundef %mmc) #9
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 44, i32 1
  %0 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc.i, align 4
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.sdhci_msm_ice_enable.exit_crit_edge, label %if.end.i

entry.sdhci_msm_ice_enable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_ice_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private.i5 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 0, i32 3, i32 7
  %ice_mem.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 42, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %ice_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ice_mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4096
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !351
  %7 = or i32 %6, 7340032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !352
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %ice_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ice_mem.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %9, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %7) #9, !srcloc !329
  %10 = ptrtoint ptr %ice_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ice_mem.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %11, i32 4096
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !353
  %13 = or i32 %12, 7438349
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !354
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %ice_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ice_mem.i.i, align 4
  %add.ptr3.i6.i = getelementptr i8, ptr %16, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i6.i, i32 %13) #9, !srcloc !329
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #9
  %call.i = tail call fastcc i32 @sdhci_msm_ice_wait_bist_status(ptr noundef %private.i5) #9
  br label %sdhci_msm_ice_enable.exit

sdhci_msm_ice_enable.exit:                        ; preds = %if.end.i, %entry.sdhci_msm_ice_enable.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_cqe_disable(ptr noundef %mmc, i1 noundef zeroext %recovery) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %flags1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  %and = and i32 %1, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %if.then

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %desc_sz = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 16, i32 1
  %2 = ptrtoint ptr %desc_sz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %desc_sz, align 8
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 12, i32 10, i32 1, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !338

if.then.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %6(ptr noundef %private.i, i32 noundef 52) #9
  br label %sdhci_readl.exit

if.else.i:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %ioaddr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 16
  %add.ptr.i = getelementptr i8, ptr %8, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !332
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !355
  br label %sdhci_readl.exit

sdhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %10, %if.else.i ]
  %or = or i32 %retval.0.i, 1
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write_l.i = getelementptr inbounds %struct.sdhci_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i19 = icmp eq ptr %14, null
  br i1 %tobool.not.i19, label %do.body.i, label %if.then.i20, !prof !338

if.then.i20:                                      ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef %private.i, i32 noundef %or, i32 noundef 52) #9
  br label %sdhci_writel.exit

do.body.i:                                        ; preds = %sdhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %ioaddr.i21 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %ioaddr.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i21, align 16
  %add.ptr.i22 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %15) #9, !srcloc !329
  br label %sdhci_writel.exit

sdhci_writel.exit:                                ; preds = %do.body.i, %if.then.i20
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %write_l.i24 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %write_l.i24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write_l.i24, align 4
  %tobool.not.i25 = icmp eq ptr %21, null
  br i1 %tobool.not.i25, label %do.body.i29, label %if.then.i26, !prof !338

if.then.i26:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %21(ptr noundef %private.i, i32 noundef 1, i32 noundef 48) #9
  br label %sdhci_writel.exit30

do.body.i29:                                      ; preds = %sdhci_writel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !356
  tail call void @arm_heavy_mb() #9
  %ioaddr.i27 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %ioaddr.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr.i27, align 16
  %add.ptr.i28 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 16777216) #9, !srcloc !329
  br label %sdhci_writel.exit30

sdhci_writel.exit30:                              ; preds = %do.body.i29, %if.then.i26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  tail call void @sdhci_cqe_disable(ptr noundef %mmc, i1 noundef zeroext %recovery) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_program_key(ptr nocapture noundef readonly %cq_host, ptr nocapture noundef readonly %cfg, i32 noundef %slot) #2 align 64 {
entry:
  %key = alloca %union.anon.88, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %key) #9
  %config_enable = getelementptr inbounds %struct.anon.85, ptr %cfg, i32 0, i32 4
  %4 = ptrtoint ptr %config_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool.not = icmp sgt i8 %5, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @qcom_scm_ice_invalidate_key(i32 noundef %slot) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %crypto_cap_array = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 31
  %6 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crypto_cap_array, align 4
  %crypto_cap_idx = getelementptr inbounds %struct.anon.85, ptr %cfg, i32 0, i32 2
  %8 = ptrtoint ptr %crypto_cap_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %crypto_cap_idx, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr %union.cqhci_crypto_cap_entry, ptr %7, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %cap.sroa.0.0.copyload = load i8, ptr %arrayidx, align 4
  %cap.sroa.636.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %11 = ptrtoint ptr %cap.sroa.636.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %11)
  %cap.sroa.636.0.copyload = load i8, ptr %cap.sroa.636.0.arrayidx.sroa_idx, align 2
  %conv1 = zext i8 %cap.sroa.0.0.copyload to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cap.sroa.0.0.copyload)
  %cmp.not = icmp eq i8 %cap.sroa.0.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cap.sroa.636.0.copyload)
  %cmp4.not = icmp eq i8 %cap.sroa.636.0.copyload, 3
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  %call7 = tail call i32 @___ratelimit(ptr noundef nonnull @sdhci_msm_program_key._rs, ptr noundef nonnull @__func__.sdhci_msm_program_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv14 = zext i8 %cap.sroa.636.0.copyload to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %conv1, i32 noundef %conv14) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %key, ptr %cfg, i32 64)
  %data_unit_size = getelementptr inbounds %struct.anon.85, ptr %cfg, i32 0, i32 1
  %13 = ptrtoint ptr %data_unit_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data_unit_size, align 4
  %conv27 = zext i8 %14 to i32
  %call28 = call i32 @qcom_scm_ice_set_key(i32 noundef %slot, ptr noundef nonnull %key, i32 noundef 64, i32 noundef 3, i32 noundef %conv27) #9
  %15 = call ptr @memset(ptr %key, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #9, !srcloc !357
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %do.body.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call28, %if.end18 ], [ %call, %if.then ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_msm_ice_wait_bist_status(ptr nocapture noundef readonly %msm_host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1942) #9
  %ice_mem = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 2
  %0 = ptrtoint ptr %ice_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ice_mem, align 4
  %add.ptr48 = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %3 = and i32 %2, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not49 = icmp eq i32 %3, 0
  br i1 %tobool.not49, label %entry.if.end36_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 13, i32 noundef 50, i32 noundef 2) #9
  %4 = ptrtoint ptr %ice_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ice_mem, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !358
  %7 = and i32 %6, 240
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then26.if.end36_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %ice_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ice_mem, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 112
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !359
  %11 = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %for.end.if.end36_crit_edge, label %do.end35

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end35:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %mmc = getelementptr inbounds %struct.sdhci_msm_host, ptr %msm_host, i32 0, i32 8
  %12 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.121) #12
  br label %if.end36

if.end36:                                         ; preds = %do.end35, %for.end.if.end36_crit_edge, %if.then26.if.end36_crit_edge, %entry.if.end36_crit_edge
  %cond = phi i32 [ -110, %do.end35 ], [ 0, %for.end.if.end36_crit_edge ], [ 0, %entry.if.end36_crit_edge ], [ 0, %if.then26.if.end36_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_cqe_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_ice_invalidate_key(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_ice_set_key(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_ice_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdhci_remove_host(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_mci_variant_readl_relaxed(ptr nocapture noundef readonly %host, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %core_mem = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %0 = ptrtoint ptr %core_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_mem, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_mci_variant_writel_relaxed(i32 noundef %val, ptr nocapture noundef readonly %host, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %core_mem = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 1, i32 11, i32 22
  %1 = ptrtoint ptr %core_mem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core_mem, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !329
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_v5_variant_readl_relaxed(ptr nocapture noundef readonly %host, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !332
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdhci_msm_v5_variant_writel_relaxed(i32 noundef %val, ptr nocapture noundef readonly %host, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %ioaddr = getelementptr inbounds %struct.sdhci_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 16
  %add.ptr = getelementptr i8, ptr %2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !329
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call3 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef 0) #9
  %bulk_clks = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %bulk_clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %bulk_clks) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdhci_msm_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i27 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 11, i32 21
  %bulk_clks = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %bulk_clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %bulk_clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %bulk_clks) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %restore_dll_config = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i27, i32 0, i32 20
  %2 = ptrtoint ptr %restore_dll_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %restore_dll_config, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %clk_rate = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 10
  %4 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end11_crit_edge, label %if.then6

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %land.lhs.true
  %mmc.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc.i.i, align 8
  %clock.i.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clock.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000001, i32 %9)
  %cmp.i.i = icmp ult i32 %9, 100000001
  br i1 %cmp.i.i, label %if.then6.if.end11_crit_edge, label %lor.lhs.false.i.i

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

lor.lhs.false.i.i:                                ; preds = %if.then6
  %timing.i.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 28, i32 7
  %10 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %timing.i.i, align 4
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %11, label %lor.lhs.false.i.i.if.end11_crit_edge [
    i8 10, label %lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge
    i8 9, label %lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge42
    i8 6, label %lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge43
  ]

lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge43: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_is_tuning_needed.exit.i

lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge42: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_is_tuning_needed.exit.i

lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdhci_msm_is_tuning_needed.exit.i

lor.lhs.false.i.i.if.end11_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

sdhci_msm_is_tuning_needed.exit.i:                ; preds = %lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge, %lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge42, %lor.lhs.false.i.i.sdhci_msm_is_tuning_needed.exit.i_crit_edge43
  %enhanced_strobe.i.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 28, i32 10
  %13 = ptrtoint ptr %enhanced_strobe.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enhanced_strobe.i.i, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i, label %if.end.i29, label %sdhci_msm_is_tuning_needed.exit.i.if.end11_crit_edge

sdhci_msm_is_tuning_needed.exit.i.if.end11_crit_edge: ; preds = %sdhci_msm_is_tuning_needed.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i29:                                       ; preds = %sdhci_msm_is_tuning_needed.exit.i
  %call3.i = tail call fastcc i32 @msm_init_cm_dll(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i28 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i28, label %sdhci_msm_restore_sdr_dll_config.exit, label %if.end.i29.cleanup_crit_edge

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sdhci_msm_restore_sdr_dll_config.exit:            ; preds = %if.end.i29
  %saved_tuning_phase.i = getelementptr inbounds %struct.sdhci_msm_host, ptr %private.i27, i32 0, i32 12
  %15 = ptrtoint ptr %saved_tuning_phase.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %saved_tuning_phase.i, align 1
  %call6.i = tail call fastcc i32 @msm_config_cm_dll_phase(ptr noundef %1, i8 noundef zeroext %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not, label %sdhci_msm_restore_sdr_dll_config.exit.if.end11_crit_edge, label %sdhci_msm_restore_sdr_dll_config.exit.cleanup_crit_edge

sdhci_msm_restore_sdr_dll_config.exit.cleanup_crit_edge: ; preds = %sdhci_msm_restore_sdr_dll_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sdhci_msm_restore_sdr_dll_config.exit.if.end11_crit_edge: ; preds = %sdhci_msm_restore_sdr_dll_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %sdhci_msm_restore_sdr_dll_config.exit.if.end11_crit_edge, %sdhci_msm_is_tuning_needed.exit.i.if.end11_crit_edge, %lor.lhs.false.i.i.if.end11_crit_edge, %if.then6.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %clk_rate12 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 10
  %17 = ptrtoint ptr %clk_rate12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_rate12, align 4
  %call13 = tail call i32 @dev_pm_opp_set_rate(ptr noundef %dev, i32 noundef %18) #9
  %mmc.i = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 1, i32 13, i32 11
  %19 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc.i, align 4
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %22, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i31 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i31, label %if.end11.cleanup_crit_edge, label %if.end.i33

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i33:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i32 = tail call fastcc i32 @sdhci_msm_ice_wait_bist_status(ptr noundef %private.i27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i33, %if.end11.cleanup_crit_edge, %sdhci_msm_restore_sdr_dll_config.exit.cleanup_crit_edge, %if.end.i29.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6.i, %sdhci_msm_restore_sdr_dll_config.exit.cleanup_crit_edge ], [ %call.i32, %if.end.i33 ], [ 0, %if.end11.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ %call3.i, %if.end.i29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !144, !146, !147, !149, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !174, !176, !178, !179, !180, !181, !183, !184, !186, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !201, !203, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !217, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !242, !243, !245, !246, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317}
!llvm.module.flags = !{!319, !320, !321, !322, !323, !324, !325, !326}
!llvm.ident = !{!327}

!0 = !{ptr @__initcall__kmod_sdhci_msm__321_2838_sdhci_msm_driver_init6, !1, !"__initcall__kmod_sdhci_msm__321_2838_sdhci_msm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2838, i32 1}
!2 = !{ptr @__exitcall_sdhci_msm_driver_exit, !1, !"__exitcall_sdhci_msm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description322, !4, !"__UNIQUE_ID_description322", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2840, i32 1}
!5 = !{ptr @__UNIQUE_ID_file323, !6, !"__UNIQUE_ID_file323", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2841, i32 1}
!7 = !{ptr @__UNIQUE_ID_license324, !6, !"__UNIQUE_ID_license324", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2831, i32 14}
!10 = !{ptr @sdhci_msm_driver, !11, !"sdhci_msm_driver", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2827, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2533, i32 47}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2545, i32 33}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2548, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sdhci_msm_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sdhci_msm_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2554, i32 33}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2557, i32 3}
!28 = !{ptr @sdhci_msm_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sdhci_msm_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2574, i32 3}
!32 = !{ptr @sdhci_msm_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sdhci_msm_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2581, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @sdhci_msm_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @sdhci_msm_probe._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2583, i32 33}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2588, i32 33}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2607, i32 46}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2610, i32 3}
!47 = !{ptr @sdhci_msm_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sdhci_msm_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2637, i32 2}
!51 = !{ptr @sdhci_msm_probe.__UNIQUE_ID_ddebug319, !50, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2646, i32 2}
!54 = !{ptr @sdhci_msm_probe.__UNIQUE_ID_ddebug320, !53, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2696, i32 52}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2711, i32 3}
!59 = !{ptr @sdhci_msm_probe._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sdhci_msm_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2730, i32 34}
!63 = !{ptr @sdhci_msm_pdata, !64, !"sdhci_msm_pdata", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2461, i32 38}
!65 = !{ptr @sdhci_msm_ops, !66, !"sdhci_msm_ops", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2446, i32 31}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1519, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug314, !68, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1550, i32 3}
!73 = !{ptr @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug315, !72, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1567, i32 4}
!76 = !{ptr @sdhci_msm_check_power_status._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sdhci_msm_check_power_status._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1571, i32 2}
!80 = !{ptr @sdhci_msm_check_power_status.__UNIQUE_ID_ddebug316, !79, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 857, i32 4}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @msm_hc_select_hs400._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @msm_hc_select_hs400._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 365, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @msm_set_clock_rate_for_bus_mode._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @msm_set_clock_rate_for_bus_mode._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 377, i32 3}
!93 = !{ptr @msm_set_clock_rate_for_bus_mode._entry.41, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @msm_set_clock_rate_for_bus_mode._entry_ptr.43, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 384, i32 2}
!97 = !{ptr @msm_set_clock_rate_for_bus_mode.__UNIQUE_ID_ddebug302, !96, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1380, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sdhci_msm_set_uhs_signaling.__UNIQUE_ID_ddebug313, !99, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1306, i32 4}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sdhci_msm_hs400._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sdhci_msm_hs400._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1085, i32 2}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug307, !108, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1113, i32 2}
!113 = !{ptr @sdhci_msm_hs400_dll_calibration.__UNIQUE_ID_ddebug308, !112, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 762, i32 4}
!116 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @msm_init_cm_dll._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @msm_init_cm_dll._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @msm_config_cm_dll_phase.grey_coded_phase_table, !120, !"grey_coded_phase_table", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 419, i32 18}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 469, i32 2}
!123 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @msm_config_cm_dll_phase._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @msm_config_cm_dll_phase._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 403, i32 4}
!128 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @msm_dll_poll_ck_out_en._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @msm_dll_poll_ck_out_en._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 905, i32 2}
!133 = !{ptr @sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug303, !132, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 976, i32 3}
!136 = !{ptr @sdhci_msm_cdclp533_calibration._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @sdhci_msm_cdclp533_calibration._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 984, i32 3}
!140 = !{ptr @sdhci_msm_cdclp533_calibration._entry.60, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sdhci_msm_cdclp533_calibration._entry_ptr.62, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @sdhci_msm_cdclp533_calibration.__UNIQUE_ID_ddebug304, !143, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!143 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 994, i32 2}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1009, i32 2}
!146 = !{ptr @sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug305, !145, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1043, i32 3}
!149 = !{ptr @sdhci_msm_cm_dll_sdc4_calibration._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @sdhci_msm_cm_dll_sdc4_calibration._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @sdhci_msm_cm_dll_sdc4_calibration.__UNIQUE_ID_ddebug306, !152, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1070, i32 2}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2388, i32 2}
!155 = !{ptr @.str.66, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @sdhci_msm_dump_vendor_regs._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @sdhci_msm_dump_vendor_regs._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2390, i32 2}
!160 = !{ptr @sdhci_msm_dump_vendor_regs._entry.67, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sdhci_msm_dump_vendor_regs._entry_ptr.69, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2395, i32 2}
!164 = !{ptr @sdhci_msm_dump_vendor_regs._entry.70, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sdhci_msm_dump_vendor_regs._entry_ptr.72, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2400, i32 2}
!168 = !{ptr @sdhci_msm_dump_vendor_regs._entry.73, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sdhci_msm_dump_vendor_regs._entry_ptr.75, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2478, i32 33}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2482, i32 29}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1857, i32 27}
!176 = !{ptr @.str.79, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2279, i32 4}
!178 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @sdhci_msm_set_regulator_caps._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @sdhci_msm_set_regulator_caps._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2303, i32 2}
!183 = !{ptr @sdhci_msm_set_regulator_caps.__UNIQUE_ID_ddebug318, !182, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1617, i32 4}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @sdhci_msm_handle_pwr_irq._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @sdhci_msm_handle_pwr_irq._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1666, i32 4}
!191 = !{ptr @sdhci_msm_handle_pwr_irq._entry.84, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @sdhci_msm_handle_pwr_irq._entry_ptr.86, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1720, i32 2}
!195 = !{ptr @sdhci_msm_handle_pwr_irq.__UNIQUE_ID_ddebug317, !194, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1582, i32 2}
!198 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sdhci_msm_dump_pwr_ctrl_regs._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @sdhci_msm_dump_pwr_ctrl_regs._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.90, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1455, i32 3}
!203 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @msm_config_vqmmc_mode._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @msm_config_vqmmc_mode._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1428, i32 5}
!208 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @msm_toggle_vqmmc._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @msm_toggle_vqmmc._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1439, i32 3}
!213 = !{ptr @msm_toggle_vqmmc._entry.94, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @msm_toggle_vqmmc._entry_ptr.96, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @sdhci_msm_init_pwr_irq_wait.__key, !218, !"__key", i1 false, i1 false}
!218 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1492, i32 2}
!219 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2372, i32 2}
!222 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @sdhci_msm_start_signal_voltage_switch._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @sdhci_msm_start_signal_voltage_switch._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.102, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1234, i32 4}
!227 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug309, !226, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!229 = !{ptr @.str.104, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1248, i32 4}
!231 = !{ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug310, !230, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1271, i32 3}
!234 = !{ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug311, !233, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1277, i32 3}
!237 = !{ptr @sdhci_msm_execute_tuning.__UNIQUE_ID_ddebug312, !236, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!238 = !{ptr @.str.107, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 498, i32 3}
!240 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @msm_find_most_appropriate_phase._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @msm_find_most_appropriate_phase._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 581, i32 3}
!245 = !{ptr @msm_find_most_appropriate_phase._entry.109, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @msm_find_most_appropriate_phase._entry_ptr.111, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2141, i32 3}
!249 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @sdhci_msm_cqe_add_host._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @sdhci_msm_cqe_add_host._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2156, i32 3}
!254 = !{ptr @sdhci_msm_cqe_add_host._entry.114, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @sdhci_msm_cqe_add_host._entry_ptr.116, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.118, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2179, i32 2}
!258 = !{ptr @.str.119, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @sdhci_msm_cqe_add_host._entry.117, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @sdhci_msm_cqe_add_host._entry_ptr.120, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @sdhci_msm_cqhci_ops, !262, !"sdhci_msm_cqhci_ops", i1 false, i1 false}
!262 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2109, i32 36}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1944, i32 3}
!265 = !{ptr @.str.122, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @sdhci_msm_ice_wait_bist_status._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @sdhci_msm_ice_wait_bist_status._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1989, i32 3}
!270 = !{ptr @sdhci_msm_program_key._rs, !269, !"_rs", i1 false, i1 false}
!271 = !{ptr @__func__.sdhci_msm_program_key, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.124, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @sdhci_msm_program_key._entry, !269, !"_entry", i1 false, i1 false}
!274 = !{ptr @sdhci_msm_program_key._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.125, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1873, i32 3}
!277 = !{ptr @.str.126, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @sdhci_msm_ice_init._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @sdhci_msm_ice_init._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1878, i32 3}
!282 = !{ptr @sdhci_msm_ice_init._entry.127, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @sdhci_msm_ice_init._entry_ptr.129, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1893, i32 2}
!286 = !{ptr @sdhci_msm_ice_init._entry.130, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @sdhci_msm_ice_init._entry_ptr.132, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1836, i32 3}
!290 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @sdhci_msm_ice_supported._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @sdhci_msm_ice_supported._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1841, i32 2}
!295 = !{ptr @sdhci_msm_ice_supported._entry.135, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @sdhci_msm_ice_supported._entry_ptr.137, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.139, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 1849, i32 3}
!299 = !{ptr @sdhci_msm_ice_supported._entry.138, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @sdhci_msm_ice_supported._entry_ptr.140, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @sdhci_msm_dt_match, !302, !"sdhci_msm_dt_match", i1 false, i1 false}
!302 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2436, i32 34}
!303 = !{ptr @sdhci_msm_mci_var, !304, !"sdhci_msm_mci_var", i1 false, i1 false}
!304 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2418, i32 44}
!305 = !{ptr @mci_var_ops, !306, !"mci_var_ops", i1 false, i1 false}
!306 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2408, i32 43}
!307 = !{ptr @sdhci_msm_mci_offset, !308, !"sdhci_msm_mci_offset", i1 false, i1 false}
!308 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 209, i32 38}
!309 = !{ptr @sdhci_msm_v5_var, !310, !"sdhci_msm_v5_var", i1 false, i1 false}
!310 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2423, i32 44}
!311 = !{ptr @v5_var_ops, !312, !"v5_var_ops", i1 false, i1 false}
!312 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2413, i32 43}
!313 = !{ptr @sdhci_msm_v5_offset, !314, !"sdhci_msm_v5_offset", i1 false, i1 false}
!314 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 179, i32 38}
!315 = !{ptr @sdm845_sdhci_var, !316, !"sdm845_sdhci_var", i1 false, i1 false}
!316 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2429, i32 44}
!317 = !{ptr @sdhci_msm_pm_ops, !318, !"sdhci_msm_pm_ops", i1 false, i1 false}
!318 = !{!"../drivers/mmc/host/sdhci-msm.c", i32 2819, i32 32}
!319 = !{i32 1, !"wchar_size", i32 2}
!320 = !{i32 1, !"min_enum_size", i32 4}
!321 = !{i32 8, !"branch-target-enforcement", i32 0}
!322 = !{i32 8, !"sign-return-address", i32 0}
!323 = !{i32 8, !"sign-return-address-all", i32 0}
!324 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!325 = !{i32 7, !"uwtable", i32 1}
!326 = !{i32 7, !"frame-pointer", i32 2}
!327 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!328 = !{i8 0, i8 2}
!329 = !{i64 5495838}
!330 = !{i64 5495418}
!331 = !{i64 2149035100, i64 2149035105, i64 2149035118, i64 2149035162, i64 2149035196, i64 2149035217}
!332 = !{i64 5496256}
!333 = !{i64 2155712594}
!334 = !{i64 2148421723, i64 2148421749, i64 2148421778, i64 2148421812, i64 2148421843, i64 2148421866}
!335 = !{i64 2148421142}
!336 = !{i64 906762, i64 906787, i64 906809, i64 906825, i64 906837, i64 906857, i64 906881, i64 906897, i64 906909}
!337 = !{i64 2148421330}
!338 = !{!"branch_weights", i32 2000, i32 1}
!339 = !{i64 2155491357}
!340 = !{i64 2155489289}
!341 = !{i64 5495218}
!342 = !{i64 2155645644}
!343 = !{i64 2155649818}
!344 = !{i64 5495641}
!345 = !{i64 5496036}
!346 = !{i64 2155491805}
!347 = !{i64 2155673974}
!348 = !{i64 2155554406}
!349 = !{i64 2155548435}
!350 = !{i64 2155582184}
!351 = !{i64 2155657288}
!352 = !{i64 2155657595}
!353 = !{i64 2155658416}
!354 = !{i64 2155659259}
!355 = !{i64 2155490653}
!356 = !{i64 2155488683}
!357 = !{i64 2149092236}
!358 = !{i64 2155661713}
!359 = !{i64 2155662235}
