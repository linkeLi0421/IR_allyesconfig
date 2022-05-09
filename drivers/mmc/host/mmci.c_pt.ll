; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mmci.c_pt.bc'
source_filename = "../drivers/mmc/host/mmci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.variant_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i8, i32, i32, i32, i8, i32, ptr }
%struct.mmci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmci_host = type { i32, ptr, ptr, ptr, %struct.mmc_command, ptr, ptr, ptr, i8, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.timer_list, i32, i32, %struct.sg_mapping_iter, i32, ptr, i8, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmci_dmae_priv = type { ptr, ptr, ptr, ptr, %struct.mmci_dmae_next }
%struct.mmci_dmae_next = type { ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
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
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmci_platform_data = type { i32, ptr, ptr }
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

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@mmci_dmae_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 759, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Deferred probe for TX channel ignored\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmci_dmae_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mmc/host/mmci.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmci_dmae_setup._entry_ptr = internal global ptr @mmci_dmae_setup._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@mmci_dmae_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 782, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA channels RX %s, TX %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmci_dmae_setup._entry_ptr.11 = internal global ptr @mmci_dmae_setup._entry.8, section ".printk_index", align 4
@mmci_dmae_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 847, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error during DMA transfer!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmci_dmae_error\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mmci_dmae_error._entry_ptr = internal global ptr @mmci_dmae_error._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mmci_dmae_finalize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 893, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"buggy DMA detected. Taking evasive action.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmci_dmae_finalize\00", [45 x i8] zeroinitializer }, align 32
@mmci_dmae_finalize._entry_ptr = internal global ptr @mmci_dmae_finalize._entry, section ".printk_index", align 4
@__initcall__kmod_armmmci__321_2464_mmci_driver_init6 = internal global ptr @mmci_driver_init, section ".initcall6.init", align 4
@mmci_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmci_dev_pm_ops, ptr null, ptr null }, ptr @mmci_probe, ptr @mmci_remove, ptr null, ptr @mmci_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mmci_driver_exit = internal global ptr @mmci_driver_exit, section ".exitcall.exit", align 4
@__param_str_fmax = internal constant [13 x i8] c"armmmci.fmax\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@fmax = internal global { i32, [28 x i8] } { i32 515633, [28 x i8] zeroinitializer }, align 32
@__param_fmax = internal constant %struct.kernel_param { ptr @__param_str_fmax, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @fmax } }, section "__param", align 4
@__UNIQUE_ID_fmaxtype322 = internal constant [27 x i8] c"armmmci.parmtype=fmax:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [77 x i8] c"armmmci.description=ARM PrimeCell PL180/181 Multimedia Card Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [38 x i8] c"armmmci.file=drivers/mmc/host/armmmci\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [20 x i8] c"armmmci.license=GPL\00", section ".modinfo", align 1
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmci-pl18x\00", [21 x i8] zeroinitializer }, align 32
@mmci_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmci_runtime_suspend, ptr @mmci_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mmci_ids = internal constant { [15 x %struct.amba_id], [44 x i8] } { [15 x %struct.amba_id] [%struct.amba_id { i32 266624, i32 -15728641, ptr @variant_arm }, %struct.amba_id { i32 17043840, i32 -15728641, ptr @variant_arm_extended_fifo }, %struct.amba_id { i32 33821056, i32 -15728641, ptr @variant_arm_extended_fifo_hwfc }, %struct.amba_id { i32 266625, i32 1048575, ptr @variant_arm }, %struct.amba_id { i32 1573248, i32 16777215, ptr @variant_u300 }, %struct.amba_id { i32 270008704, i32 -251658241, ptr @variant_nomadik }, %struct.amba_id { i32 2621824, i32 16777215, ptr @variant_nomadik }, %struct.amba_id { i32 4718976, i32 -251658241, ptr @variant_ux500 }, %struct.amba_id { i32 273154432, i32 -251658241, ptr @variant_ux500v2 }, %struct.amba_id { i32 8913280, i32 16777215, ptr @variant_stm32 }, %struct.amba_id { i32 269824384, i32 -251658241, ptr @variant_stm32_sdmmc }, %struct.amba_id { i32 2437504, i32 -251658241, ptr @variant_stm32_sdmmcv2 }, %struct.amba_id { i32 539308416, i32 -251658241, ptr @variant_stm32_sdmmcv2 }, %struct.amba_id { i32 332160, i32 1048575, ptr @variant_qcom }, %struct.amba_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@mmci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 2006, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No plat data or DT found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmci_probe\00", [21 x i8] zeroinitializer }, align 32
@mmci_probe._entry_ptr = internal global ptr @mmci_probe._entry, section ".printk_index", align 4
@mmci_ops = internal global { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr @mmci_post_request, ptr @mmci_pre_request, ptr @mmci_request, ptr null, ptr @mmci_set_ios, ptr @mmc_gpio_get_ro, ptr @mmci_get_cd, ptr null, ptr null, ptr null, ptr @mmci_sig_volt_switch, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mmci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 2036, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get pinctrl\00", [42 x i8] zeroinitializer }, align 32
@mmci_probe._entry_ptr.22 = internal global ptr @mmci_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"opendrain\00", [22 x i8] zeroinitializer }, align 32
@mmci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.4, i32 2044, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't select opendrain pins\0A\00", [35 x i8] zeroinitializer }, align 32
@mmci_probe._entry_ptr.26 = internal global ptr @mmci_probe._entry.24, section ".printk_index", align 4
@mmci_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.19, ptr @.str.4, ptr @.str.28, i8 2, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"armmmci\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"designer ID = 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@mmci_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.19, ptr @.str.4, ptr @.str.29, i8 2, i8 1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"revision = 0x%01x\0A\00", [45 x i8] zeroinitializer }, align 32
@mmci_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.19, ptr @.str.4, ptr @.str.30, i8 2, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"eventual mclk rate: %u Hz\0A\00", [37 x i8] zeroinitializer }, align 32
@mmci_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.19, ptr @.str.4, ptr @.str.31, i8 2, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clocking block at %u Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@mmci_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 2135, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to de-assert reset\0A\00", [37 x i8] zeroinitializer }, align 32
@mmci_probe._entry_ptr.34 = internal global ptr @mmci_probe._entry.32, section ".printk_index", align 4
@mmci_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.4, i32 2145, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Platform OCR mask is ignored\0A\00", [34 x i8] zeroinitializer }, align 32
@mmci_probe._entry_ptr.37 = internal global ptr @mmci_probe._entry.35, section ".printk_index", align 4
@mmci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmci-pl18x (cmd)\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmci-pl18x (pio)\00", [47 x i8] zeroinitializer }, align 32
@mmci_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.19, ptr @.str.4, i32 2254, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: PL%03x manf %x rev%u at 0x%08llx irq %d,%d (pio)\0A\00", [42 x i8] zeroinitializer }, align 32
@mmci_probe._entry_ptr.45 = internal global ptr @mmci_probe._entry.43, section ".printk_index", align 4
@mmci_validate_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 497, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unsupported block size (%d bytes)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmci_validate_data\00", [45 x i8] zeroinitializer }, align 32
@mmci_validate_data._entry_ptr = internal global ptr @mmci_validate_data._entry, section ".printk_index", align 4
@mmci_start_data.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmci_start_data\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"blksz %04x blks %04x flags %08x\0A\00", [63 x i8] zeroinitializer }, align 32
@mmci_start_command.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.50, ptr @.str.4, ptr @.str.51, i8 1, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmci_start_command\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"op %02x arg %08x flags %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@mmci_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 1751, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"platform ios_handler failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmci_set_ios\00", [19 x i8] zeroinitializer }, align 32
@mmci_set_ios._entry_ptr = internal global ptr @mmci_set_ios._entry, section ".printk_index", align 4
@mmci_set_ios._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 1781, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable vqmmc regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@mmci_set_ios._entry_ptr.56 = internal global ptr @mmci_set_ios._entry.54, section ".printk_index", align 4
@mmci_set_ios._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 1832, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error setting clock rate (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mmci_set_ios._entry_ptr.59 = internal global ptr @mmci_set_ios._entry.57, section ".printk_index", align 4
@mmci_sig_volt_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 1885, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Voltage switch failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmci_sig_volt_switch\00", [43 x i8] zeroinitializer }, align 32
@mmci_sig_volt_switch._entry_ptr = internal global ptr @mmci_sig_volt_switch._entry, section ".printk_index", align 4
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,sig-dir-dat0\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,sig-dir-dat2\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,sig-dir-dat31\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,sig-dir-dat74\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,sig-dir-cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,sig-pin-fbclk\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,sig-dir\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,neg-edge\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"st,use-ckin\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmc-cap-mmc-highspeed\00", [42 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc-cap-sd-highspeed\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st,cmd\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"st,ck\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st,ckin\00", [24 x i8] zeroinitializer }, align 32
@mmci_probe_level_translator._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 1946, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Level translator inoperable, CK signal not detected on CKIN, disabling.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mmci_probe_level_translator\00", [36 x i8] zeroinitializer }, align 32
@mmci_probe_level_translator._entry_ptr = internal global ptr @mmci_probe_level_translator._entry, section ".printk_index", align 4
@mmci_irq.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.78, ptr @.str.4, ptr @.str.79, i8 1, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmci_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq0 (data+cmd) %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@mmci_data_irq.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.80, ptr @.str.4, ptr @.str.81, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmci_data_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MCI ERROR IRQ, status 0x%08x at 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@mmci_data_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.4, i32 1333, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"stray MCI_DATABLOCKEND interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@mmci_data_irq._entry_ptr = internal global ptr @mmci_data_irq._entry, section ".printk_index", align 4
@mmci_pio_irq.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.27, ptr @.str.83, ptr @.str.4, ptr @.str.84, i8 1, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmci_pio_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq1 (pio) %08x\0A\00", [47 x i8] zeroinitializer }, align 32
@variant_arm = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 64, i32 32, i32 0, i32 0, i32 0, i32 11, i8 0, i32 2, i32 100000000, i8 0, i32 0, i32 0, i32 0, i8 12, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @mmci_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_arm_extended_fifo = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 512, i32 256, i32 0, i32 0, i32 0, i32 11, i8 0, i32 2, i32 100000000, i8 0, i32 0, i32 0, i32 0, i8 4, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @mmci_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_arm_extended_fifo_hwfc = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 0, i32 4096, i32 0, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 512, i32 256, i32 0, i32 0, i32 0, i32 11, i8 0, i32 2, i32 100000000, i8 0, i32 0, i32 0, i32 0, i8 4, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @mmci_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_u300 = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 0, i32 8192, i32 4096, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 16, i32 64, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 8, i32 3, i32 100000000, i8 -64, i32 0, i32 0, i32 0, i8 -124, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @mmci_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_nomadik = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 256, i32 0, i32 4096, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 64, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 12, i32 3, i32 100000000, i8 -64, i32 0, i32 0, i32 0, i8 -124, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @mmci_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_ux500 = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 256, i32 16384, i32 4096, i32 8192, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 120, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 -52, i32 3, i32 100000000, i8 -32, i32 16384, i32 16777216, i32 16777216, i8 -124, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @ux500_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_ux500v2 = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 256, i32 16384, i32 4096, i32 8192, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 120, i32 32, i32 0, i32 32768, i32 2048, i32 11, i8 -52, i32 3, i32 100000000, i8 -32, i32 16384, i32 16777216, i32 16777216, i8 -124, i32 2146304, i32 512, i32 64, i8 0, i32 0, ptr @ux500v2_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_stm32 = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 256, i32 16384, i32 4096, i32 8192, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 128, i32 32, i32 0, i32 0, i32 2048, i32 11, i8 12, i32 3, i32 48000000, i8 64, i32 0, i32 0, i32 0, i8 -128, i32 2146304, i32 0, i32 0, i8 0, i32 0, ptr @mmci_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_stm32_sdmmc = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 4096, i32 768, i32 256, i32 512, i32 128, i32 25, i32 64, i32 32, i32 64, i32 0, i32 2048, i32 14, i8 -78, i32 0, i32 208000000, i8 48, i32 0, i32 1048576, i32 2097152, i8 0, i32 49152, i32 0, i32 0, i8 0, i32 8160, ptr @sdmmc_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_stm32_sdmmcv2 = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 0, i32 0, i32 0, i32 0, i32 4096, i32 768, i32 256, i32 512, i32 128, i32 25, i32 64, i32 32, i32 64, i32 0, i32 2048, i32 14, i8 -78, i32 0, i32 267000000, i8 48, i32 0, i32 1048576, i32 2097152, i8 0, i32 49152, i32 0, i32 0, i8 -128, i32 131040, ptr @sdmmc_variant_init }, [40 x i8] zeroinitializer }, align 32
@variant_qcom = internal global { %struct.variant_data, [40 x i8] } { %struct.variant_data { i32 256, i32 36864, i32 3072, i32 0, i32 1024, i32 192, i32 64, i32 64, i32 0, i32 24, i32 64, i32 32, i32 4096, i32 49152, i32 0, i32 11, i8 -128, i32 2, i32 208000000, i8 0, i32 0, i32 0, i32 0, i8 116, i32 2146304, i32 512, i32 128, i8 0, i32 0, ptr @qcom_variant_init }, [40 x i8] zeroinitializer }, align 32
@mmci_variant_ops = internal global { %struct.mmci_host_ops, [36 x i8] } { %struct.mmci_host_ops { ptr null, ptr @mmci_dmae_prep_data, ptr @mmci_dmae_unprep_data, ptr @mmci_get_dctrl_cfg, ptr @mmci_dmae_get_next_data, ptr @mmci_dmae_setup, ptr @mmci_dmae_release, ptr @mmci_dmae_start, ptr @mmci_dmae_finalize, ptr @mmci_dmae_error, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 748, i32 58 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 755, i32 58 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 758, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 774, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 781, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 847, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 893, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"mmci_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2454, i32 27 }
@___asan_gen_.146 = private unnamed_addr constant [5 x i8] c"fmax\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 52, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2456, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"mmci_dev_pm_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2370, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant [9 x i8] c"mmci_ids\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2376, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2006, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [9 x i8] c"mmci_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1890, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2036, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2042, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2044, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2052, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2053, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2083, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2126, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2135, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2145, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2206, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2223, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2227, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2234, i32 6 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2242, i32 18 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 2251, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 496, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1136, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1219, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1751, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1780, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1831, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1885, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1967, i32 26 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1969, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1971, i32 26 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1973, i32 26 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1975, i32 26 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1977, i32 26 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1979, i32 26 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1981, i32 26 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1983, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1986, i32 26 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1988, i32 26 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1915, i32 28 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1919, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1923, i32 29 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1945, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1641, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1310, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1333, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1547, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [12 x i8] c"variant_arm\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 54, i32 28 }
@___asan_gen_.365 = private unnamed_addr constant [26 x i8] c"variant_arm_extended_fifo\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 73, i32 28 }
@___asan_gen_.368 = private unnamed_addr constant [31 x i8] c"variant_arm_extended_fifo_hwfc\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 91, i32 28 }
@___asan_gen_.371 = private unnamed_addr constant [13 x i8] c"variant_u300\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 110, i32 28 }
@___asan_gen_.374 = private unnamed_addr constant [16 x i8] c"variant_nomadik\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 135, i32 28 }
@___asan_gen_.377 = private unnamed_addr constant [14 x i8] c"variant_ux500\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 161, i32 28 }
@___asan_gen_.380 = private unnamed_addr constant [16 x i8] c"variant_ux500v2\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 195, i32 28 }
@___asan_gen_.383 = private unnamed_addr constant [14 x i8] c"variant_stm32\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 230, i32 28 }
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c"variant_stm32_sdmmc\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 254, i32 28 }
@___asan_gen_.389 = private unnamed_addr constant [22 x i8] c"variant_stm32_sdmmcv2\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 280, i32 28 }
@___asan_gen_.392 = private unnamed_addr constant [13 x i8] c"variant_qcom\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 307, i32 28 }
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"mmci_variant_ops\00", align 1
@___asan_gen_.396 = private constant [27 x i8] c"../drivers/mmc/host/mmci.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1066, i32 29 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_fmaxtype322, ptr @__UNIQUE_ID_license325, ptr @__exitcall_mmci_driver_exit, ptr @__initcall__kmod_armmmci__321_2464_mmci_driver_init6, ptr @__param_fmax, ptr @mmci_data_irq._entry, ptr @mmci_data_irq._entry_ptr, ptr @mmci_dmae_error._entry, ptr @mmci_dmae_error._entry_ptr, ptr @mmci_dmae_finalize._entry, ptr @mmci_dmae_finalize._entry_ptr, ptr @mmci_dmae_setup._entry, ptr @mmci_dmae_setup._entry.8, ptr @mmci_dmae_setup._entry_ptr, ptr @mmci_dmae_setup._entry_ptr.11, ptr @mmci_driver_exit, ptr @mmci_probe._entry, ptr @mmci_probe._entry.20, ptr @mmci_probe._entry.24, ptr @mmci_probe._entry.32, ptr @mmci_probe._entry.35, ptr @mmci_probe._entry.43, ptr @mmci_probe._entry_ptr, ptr @mmci_probe._entry_ptr.22, ptr @mmci_probe._entry_ptr.26, ptr @mmci_probe._entry_ptr.34, ptr @mmci_probe._entry_ptr.37, ptr @mmci_probe._entry_ptr.45, ptr @mmci_probe_level_translator._entry, ptr @mmci_probe_level_translator._entry_ptr, ptr @mmci_set_ios._entry, ptr @mmci_set_ios._entry.54, ptr @mmci_set_ios._entry.57, ptr @mmci_set_ios._entry_ptr, ptr @mmci_set_ios._entry_ptr.56, ptr @mmci_set_ios._entry_ptr.59, ptr @mmci_sig_volt_switch._entry, ptr @mmci_sig_volt_switch._entry_ptr, ptr @mmci_validate_data._entry, ptr @mmci_validate_data._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mmci_driver, ptr @fmax, ptr @.str.17, ptr @mmci_dev_pm_ops, ptr @mmci_ids, ptr @.str.18, ptr @.str.19, ptr @mmci_ops, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @mmci_probe.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @variant_arm, ptr @variant_arm_extended_fifo, ptr @variant_arm_extended_fifo_hwfc, ptr @variant_u300, ptr @variant_nomadik, ptr @variant_ux500, ptr @variant_ux500v2, ptr @variant_stm32, ptr @variant_stm32_sdmmc, ptr @variant_stm32_sdmmcv2, ptr @variant_qcom, ptr @mmci_variant_ops], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_dmae_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_dmae_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_dmae_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_dmae_finalize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmax to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_ids to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_validate_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_set_ios._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_set_ios._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_sig_volt_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_probe_level_translator._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_data_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_arm to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_arm_extended_fifo to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_arm_extended_fifo_hwfc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_u300 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_nomadik to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_ux500 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_ux500v2 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_stm32 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_stm32_sdmmc to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_stm32_sdmmcv2 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_qcom to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmci_variant_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_write_clkreg(ptr nocapture noundef %host, i32 noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %clk)
  %cmp.not = icmp eq i32 %1, %clk
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %clk, ptr %clk_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %clk)
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #10, !srcloc !219
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_write_pwrreg(ptr nocapture noundef %host, i32 noundef %pwr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pwr_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 14
  %0 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pwr_reg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pwr)
  %cmp.not = icmp eq i32 %1, %pwr
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %pwr, ptr %pwr_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %pwr)
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #10, !srcloc !219
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmci_dmae_setup(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 24, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %4 = ptrtoint ptr %dma_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %dma_priv, align 4
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  %call3 = tail call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull @.str) #10
  %rx_channel = getelementptr inbounds %struct.mmci_dmae_priv, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %rx_channel to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %rx_channel, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %call3 to i32
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.end
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %call13 = tail call ptr @dma_request_chan(ptr noundef %14, ptr noundef nonnull @.str.1) #10
  %tx_channel = getelementptr inbounds %struct.mmci_dmae_priv, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %tx_channel, align 4
  %cmp.i129 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %if.then16, label %if.end10.if.end24_crit_edge

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then16:                                        ; preds = %if.end10
  %cmp = icmp eq ptr %call13, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.end, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.2) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then16.if.end22_crit_edge
  %20 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_channel, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end10.if.end24_crit_edge
  %21 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_channel, align 4
  %tobool26.not = icmp eq ptr %22, null
  br i1 %tobool26.not, label %if.end24.if.end38_crit_edge, label %land.lhs.true

if.end24.if.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end24
  %23 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_channel, align 4
  %tobool28.not = icmp eq ptr %24, null
  br i1 %tobool28.not, label %if.end32, label %land.lhs.true.if.then35_crit_edge

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.end32:                                         ; preds = %land.lhs.true
  %25 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %tx_channel, align 4
  %26 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load ptr, ptr %rx_channel, align 4
  %tobool34.not = icmp eq ptr %.pr, null
  br i1 %tobool34.not, label %if.end32.if.then41_crit_edge, label %if.end32.if.then35_crit_edge

if.end32.if.then35_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then35

if.end32.if.then41_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.then35:                                        ; preds = %if.end32.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge
  %27 = phi ptr [ %.pr, %if.end32.if.then35_crit_edge ], [ %22, %land.lhs.true.if.then35_crit_edge ]
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then35.if.end38_crit_edge

if.then35.if.end38_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end.i.i, %if.then35.if.end38_crit_edge, %if.end24.if.end38_crit_edge
  %rxname.0.ph = phi ptr [ %31, %if.then35.if.end38_crit_edge ], [ %33, %if.end.i.i ], [ @.str.7, %if.end24.if.end38_crit_edge ]
  %34 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr150 = load ptr, ptr %tx_channel, align 4
  %tobool40.not = icmp eq ptr %.pr150, null
  br i1 %tobool40.not, label %if.end38.do.end48_crit_edge, label %if.end38.if.then41_crit_edge

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

if.end38.do.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

if.then41:                                        ; preds = %if.end38.if.then41_crit_edge, %if.end32.if.then41_crit_edge
  %rxname.0153 = phi ptr [ %rxname.0.ph, %if.end38.if.then41_crit_edge ], [ @.str.7, %if.end32.if.then41_crit_edge ]
  %35 = phi ptr [ %.pr150, %if.end38.if.then41_crit_edge ], [ %22, %if.end32.if.then41_crit_edge ]
  %dev.i130 = getelementptr inbounds %struct.dma_chan, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %dev.i130 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i130, align 4
  %init_name.i.i131 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %init_name.i.i131 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i131, align 8
  %tobool.not.i.i132 = icmp eq ptr %39, null
  br i1 %tobool.not.i.i132, label %if.end.i.i134, label %if.then41.do.end48_crit_edge

if.then41.do.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

if.end.i.i134:                                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %device.i133 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %device.i133 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device.i133, align 4
  br label %do.end48

do.end48:                                         ; preds = %if.end.i.i134, %if.then41.do.end48_crit_edge, %if.end38.do.end48_crit_edge
  %rxname.0154 = phi ptr [ %rxname.0.ph, %if.end38.do.end48_crit_edge ], [ %rxname.0153, %if.then41.do.end48_crit_edge ], [ %rxname.0153, %if.end.i.i134 ]
  %txname.0 = phi ptr [ @.str.7, %if.end38.do.end48_crit_edge ], [ %39, %if.then41.do.end48_crit_edge ], [ %41, %if.end.i.i134 ]
  %42 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmc, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 128
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.9, ptr noundef %rxname.0154, ptr noundef %txname.0) #13
  %46 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_channel, align 4
  %tobool52.not = icmp eq ptr %47, null
  br i1 %tobool52.not, label %do.end48.if.end64_crit_edge, label %if.then53

do.end48.if.end64_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then53:                                        ; preds = %do.end48
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %dev55 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev55, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 22
  %52 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.then53.if.end.i_crit_edge, label %land.lhs.true.i

if.then53.if.end.i_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then53
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool2.not.i = icmp eq i32 %55, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge

land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_max_seg_size.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then53.if.end.i_crit_edge
  br label %dma_get_max_seg_size.exit

dma_get_max_seg_size.exit:                        ; preds = %if.end.i, %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge
  %retval.0.i = phi i32 [ 65536, %if.end.i ], [ %55, %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge ]
  %56 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmc, align 4
  %max_seg_size58 = getelementptr inbounds %struct.mmc_host, ptr %57, i32 0, i32 20
  %58 = ptrtoint ptr %max_seg_size58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_seg_size58, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %59)
  %cmp59 = icmp ult i32 %retval.0.i, %59
  br i1 %cmp59, label %if.then60, label %dma_get_max_seg_size.exit.if.end64_crit_edge

dma_get_max_seg_size.exit.if.end64_crit_edge:     ; preds = %dma_get_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then60:                                        ; preds = %dma_get_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %max_seg_size58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i, ptr %max_seg_size58, align 16
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %dma_get_max_seg_size.exit.if.end64_crit_edge, %do.end48.if.end64_crit_edge
  %61 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_channel, align 4
  %tobool66.not = icmp eq ptr %62, null
  br i1 %tobool66.not, label %if.end64.if.end81_crit_edge, label %if.then67

if.end64.if.end81_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then67:                                        ; preds = %if.end64
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %dev71 = getelementptr inbounds %struct.dma_device, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev71, align 4
  %dma_parms.i137 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 22
  %67 = ptrtoint ptr %dma_parms.i137 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_parms.i137, align 4
  %tobool.not.i138 = icmp eq ptr %68, null
  br i1 %tobool.not.i138, label %if.then67.if.end.i141_crit_edge, label %land.lhs.true.i140

if.then67.if.end.i141_crit_edge:                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i141

land.lhs.true.i140:                               ; preds = %if.then67
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool2.not.i139 = icmp eq i32 %70, 0
  br i1 %tobool2.not.i139, label %land.lhs.true.i140.if.end.i141_crit_edge, label %land.lhs.true.i140.dma_get_max_seg_size.exit143_crit_edge

land.lhs.true.i140.dma_get_max_seg_size.exit143_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_max_seg_size.exit143

land.lhs.true.i140.if.end.i141_crit_edge:         ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i141

if.end.i141:                                      ; preds = %land.lhs.true.i140.if.end.i141_crit_edge, %if.then67.if.end.i141_crit_edge
  br label %dma_get_max_seg_size.exit143

dma_get_max_seg_size.exit143:                     ; preds = %if.end.i141, %land.lhs.true.i140.dma_get_max_seg_size.exit143_crit_edge
  %retval.0.i142 = phi i32 [ 65536, %if.end.i141 ], [ %70, %land.lhs.true.i140.dma_get_max_seg_size.exit143_crit_edge ]
  %71 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmc, align 4
  %max_seg_size75 = getelementptr inbounds %struct.mmc_host, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %max_seg_size75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_seg_size75, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i142, i32 %74)
  %cmp76 = icmp ult i32 %retval.0.i142, %74
  br i1 %cmp76, label %if.then77, label %dma_get_max_seg_size.exit143.if.end81_crit_edge

dma_get_max_seg_size.exit143.if.end81_crit_edge:  ; preds = %dma_get_max_seg_size.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then77:                                        ; preds = %dma_get_max_seg_size.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %max_seg_size75 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i142, ptr %max_seg_size75, align 16
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %dma_get_max_seg_size.exit143.if.end81_crit_edge, %if.end64.if.end81_crit_edge
  %76 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tx_channel, align 4
  %tobool83.not = icmp eq ptr %77, null
  br i1 %tobool83.not, label %if.end81.if.then86_crit_edge, label %lor.lhs.false

if.end81.if.then86_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

lor.lhs.false:                                    ; preds = %if.end81
  %78 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_channel, align 4
  %tobool85.not = icmp eq ptr %79, null
  br i1 %tobool85.not, label %lor.lhs.false.if.then86_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.if.then86_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.then86:                                        ; preds = %lor.lhs.false.if.then86_crit_edge, %if.end81.if.then86_crit_edge
  %80 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_priv, align 4
  %rx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %rx_channel.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rx_channel.i, align 4
  %tobool.not.i144 = icmp eq ptr %83, null
  br i1 %tobool.not.i144, label %if.then86.if.end.i146_crit_edge, label %if.then.i

if.then86.if.end.i146_crit_edge:                  ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i146

if.then.i:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %83) #10
  br label %if.end.i146

if.end.i146:                                      ; preds = %if.then.i, %if.then86.if.end.i146_crit_edge
  %tx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %81, i32 0, i32 2
  %84 = ptrtoint ptr %tx_channel.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_channel.i, align 4
  %tobool2.not.i145 = icmp eq ptr %85, null
  br i1 %tobool2.not.i145, label %if.end.i146.mmci_dmae_release.exit_crit_edge, label %if.then3.i

if.end.i146.mmci_dmae_release.exit_crit_edge:     ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dmae_release.exit

if.then3.i:                                       ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %85) #10
  br label %mmci_dmae_release.exit

mmci_dmae_release.exit:                           ; preds = %if.then3.i, %if.end.i146.mmci_dmae_release.exit_crit_edge
  %86 = ptrtoint ptr %tx_channel.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %tx_channel.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %mmci_dmae_release.exit, %if.then6
  %rx_channel.i.sink = phi ptr [ %rx_channel.i, %mmci_dmae_release.exit ], [ %rx_channel, %if.then6 ]
  %retval.0.ph = phi i32 [ -22, %mmci_dmae_release.exit ], [ %10, %if.then6 ]
  %87 = ptrtoint ptr %rx_channel.i.sink to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %rx_channel.i.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_dmae_release(ptr nocapture noundef readonly %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %rx_channel = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rx_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_channel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_channel = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tx_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_channel, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %5) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %tx_channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tx_channel, align 4
  %7 = ptrtoint ptr %rx_channel to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rx_channel, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_dmae_error(ptr nocapture noundef %host) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_in_progress = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %0 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dma_in_progress, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %2 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_priv, align 4
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #13
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

do.end.dmaengine_terminate_all.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %13(ptr noundef %9) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %do.end.dmaengine_terminate_all.exit_crit_edge
  %14 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load2 = load i8, ptr %dma_in_progress, align 4
  %bf.clear3 = and i8 %bf.load2, -65
  store i8 %bf.clear3, ptr %dma_in_progress, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %3, align 4
  %desc_current = getelementptr inbounds %struct.mmci_dmae_priv, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %desc_current to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc_current, align 4
  %data = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %host_cookie, align 4
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_priv, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  %rx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %22, i32 0, i32 1
  %tx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %22, i32 0, i32 2
  %chan.0.in.i = select i1 %tobool.not.i14, ptr %tx_channel.i, ptr %rx_channel.i
  %25 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %26 = ptrtoint ptr %chan.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan.0.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 12
  %30 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 10
  %32 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sg_len.i, align 4
  %and.i.i = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef %cond.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_all.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_dmae_finalize(ptr noundef %host, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %dma_in_progress = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dma_in_progress, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr48 = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #10, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not49 = icmp eq i32 %7, 0
  br i1 %tobool2.not49, label %for.cond.preheader.if.else_crit_edge, label %for.cond.preheader.if.end4_crit_edge

for.cond.preheader.if.end4_crit_edge:             ; preds = %for.cond.preheader
  br label %if.end4

for.cond.preheader.if.else_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.end4:                                          ; preds = %if.end4.if.end4_crit_edge, %for.cond.preheader.if.end4_crit_edge
  %i.050 = phi i32 [ %inc, %if.end4.if.end4_crit_edge ], [ 0, %for.cond.preheader.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #10
  %inc = add nuw nsw i32 %i.050, 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 52
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %i.050)
  %cmp = icmp ugt i32 %i.050, 98
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %or.cond, label %for.end, label %if.end4.if.end4_crit_edge

if.end4.if.end4_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

for.end:                                          ; preds = %if.end4
  br i1 %tobool2.not, label %for.end.if.else_crit_edge, label %if.then7

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then7:                                         ; preds = %for.end
  %13 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %dma_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then7.mmci_dma_error.exit_crit_edge, label %if.end.i

if.then7.mmci_dma_error.exit_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

if.end.i:                                         ; preds = %if.then7
  %ops.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.end.i.mmci_dma_error.exit_crit_edge, label %land.lhs.true.i

if.end.i.mmci_dma_error.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %dma_error.i = getelementptr inbounds %struct.mmci_host_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %dma_error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_error.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.mmci_dma_error.exit_crit_edge, label %if.then4.i

land.lhs.true.i.mmci_dma_error.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef %host) #10
  br label %mmci_dma_error.exit

mmci_dma_error.exit:                              ; preds = %if.then4.i, %land.lhs.true.i.mmci_dma_error.exit_crit_edge, %if.end.i.mmci_dma_error.exit_crit_edge, %if.then7.mmci_dma_error.exit_crit_edge
  %error = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %if.then9, label %mmci_dma_error.exit.do.end_crit_edge

mmci_dma_error.exit.do.end_crit_edge:             ; preds = %mmci_dma_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then9:                                         ; preds = %mmci_dma_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -5, ptr %error, align 4
  br label %do.end

if.else:                                          ; preds = %for.end.if.else_crit_edge, %for.cond.preheader.if.else_crit_edge
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 13
  %21 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_priv, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i41 = icmp eq i32 %and.i, 0
  %rx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %24, i32 0, i32 1
  %tx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %24, i32 0, i32 2
  %chan.0.in.i = select i1 %tobool.not.i41, ptr %tx_channel.i, ptr %rx_channel.i
  %27 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %28 = ptrtoint ptr %chan.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan.0.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %32 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %34 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg_len.i, align 4
  %and.i.i = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef %cond.i.i, i32 noundef 0) #10
  br label %if.end19

do.end:                                           ; preds = %if.then9, %mmci_dma_error.exit.do.end_crit_edge
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %36 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmc, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.15) #13
  %ops.i42 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %40 = ptrtoint ptr %ops.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i42, align 4
  %tobool.not.i43 = icmp eq ptr %41, null
  br i1 %tobool.not.i43, label %do.end.mmci_dma_release.exit_crit_edge, label %land.lhs.true.i44

do.end.mmci_dma_release.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_release.exit

land.lhs.true.i44:                                ; preds = %do.end
  %dma_release.i = getelementptr inbounds %struct.mmci_host_ops, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %dma_release.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_release.i, align 4
  %tobool2.not.i = icmp eq ptr %43, null
  br i1 %tobool2.not.i, label %land.lhs.true.i44.mmci_dma_release.exit_crit_edge, label %if.then.i

land.lhs.true.i44.mmci_dma_release.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_release.exit

if.then.i:                                        ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %43(ptr noundef %host) #10
  br label %mmci_dma_release.exit

mmci_dma_release.exit:                            ; preds = %if.then.i, %land.lhs.true.i44.mmci_dma_release.exit_crit_edge, %do.end.mmci_dma_release.exit_crit_edge
  %44 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i46 = load i8, ptr %dma_in_progress, align 4
  %bf.clear.i = and i8 %bf.load.i46, 127
  store i8 %bf.clear.i, ptr %dma_in_progress, align 4
  br label %if.end19

if.end19:                                         ; preds = %mmci_dma_release.exit, %if.then13, %if.else.if.end19_crit_edge
  %45 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load21 = load i8, ptr %dma_in_progress, align 4
  %bf.clear22 = and i8 %bf.load21, -65
  store i8 %bf.clear22, ptr %dma_in_progress, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %1, align 4
  %desc_current = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %desc_current to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %desc_current, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmci_dmae_prep_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data, i1 noundef zeroext %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %next_data = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4
  %use_dma = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %next, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chan = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4, i32 1
  %call = tail call fastcc i32 @_mmci_dmae_prep_data(ptr noundef %host, ptr noundef %data, ptr noundef %chan, ptr noundef %next_data)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %land.lhs.true

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %desc_current = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %desc_current to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_current, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %desc_current9 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 3
  %call10 = tail call fastcc i32 @_mmci_dmae_prep_data(ptr noundef %host, ptr noundef %data, ptr noundef %1, ptr noundef %desc_current9)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ %call10, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_mmci_dmae_prep_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %dma_chan, ptr nocapture noundef writeonly %dma_desc) unnamed_addr #0 align 64 {
entry:
  %conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %variant1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %conf) #10
  %4 = call ptr @memset(ptr %conf, i32 255, i32 40)
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 1
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %host, align 4
  %add = add i32 %6, 128
  %7 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 2
  %8 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 3
  %9 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 4
  %10 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 5
  %fifohalfsize = getelementptr inbounds %struct.variant_data, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %fifohalfsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifohalfsize, align 4
  %shr = lshr i32 %12, 2
  %13 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 6
  %14 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %dst_maxburst, align 4
  %src_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 7
  %15 = ptrtoint ptr %src_port_window_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %src_port_window_size, align 4
  %dst_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 8
  %16 = ptrtoint ptr %dst_port_window_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dst_port_window_size, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 9
  %17 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %device_fc, align 4
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 10
  %18 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %peripheral_config, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %conf, i32 0, i32 11
  %19 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %peripheral_size, align 4
  %flags6 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %20 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags6, align 4
  %and = and i32 %21, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %conf, align 4
  %rx_channel = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %conf, align 4
  %tx_channel = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %chan.0.in = phi ptr [ %rx_channel, %if.then ], [ %tx_channel, %if.else ]
  %24 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %tobool9.not = icmp eq ptr %chan.0, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocks, align 4
  %mul = mul i32 %28, %26
  %fifosize = getelementptr inbounds %struct.variant_data, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fifosize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %30)
  %cmp.not = icmp ugt i32 %mul, %30
  br i1 %cmp.not, label %if.end13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end11
  %dma_power_of_2 = getelementptr inbounds %struct.variant_data, ptr %3, i32 0, i32 16
  %31 = ptrtoint ptr %dma_power_of_2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load = load i8, ptr %dma_power_of_2, align 4
  %32 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool15.not = icmp eq i8 %32, 0
  %33 = tail call i32 @llvm.ctpop.i32(i32 %26) #10, !range !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %34 = icmp eq i32 %33, 1
  %or.cond = select i1 %tobool15.not, i1 true, i1 %34
  br i1 %or.cond, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %35 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan.0, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %39 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %41 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sg_len, align 4
  %and.i = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 1
  %call21 = tail call i32 @dma_map_sg_attrs(ptr noundef %38, ptr noundef %40, i32 noundef %42, i32 noundef %cond.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %43 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %variant1, align 4
  %qcom_dml = getelementptr inbounds %struct.variant_data, ptr %44, i32 0, i32 23
  %45 = ptrtoint ptr %qcom_dml to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load27 = load i8, ptr %qcom_dml, align 4
  %46 = and i8 %bf.load27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool30.not = icmp eq i8 %46, 0
  %spec.select = select i1 %tobool30.not, i32 2, i32 3
  %47 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan.0, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i77 = icmp eq ptr %50, null
  br i1 %tobool.not.i77, label %if.end25.lor.lhs.false.i_crit_edge, label %if.then.i

if.end25.lor.lhs.false.i_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 %50(ptr noundef nonnull %chan.0, ptr noundef nonnull %conf) #10
  %51 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load ptr, ptr %chan.0, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then.i, %if.end25.lor.lhs.false.i_crit_edge
  %52 = phi ptr [ %.pr, %if.then.i ], [ %48, %if.end25.lor.lhs.false.i_crit_edge ]
  %53 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sg, align 4
  %55 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %conf, align 4
  %tobool1.not.i = icmp eq ptr %52, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.unmap_exit_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.unmap_exit_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_exit

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 39
  %57 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %58, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.unmap_exit_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.unmap_exit_crit_edge:            ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_exit

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i79 = call ptr %58(ptr noundef nonnull %chan.0, ptr noundef %54, i32 noundef %call21, i32 noundef %56, i32 noundef %spec.select, ptr noundef null) #10
  %tobool37.not = icmp eq ptr %call.i79, null
  br i1 %tobool37.not, label %dmaengine_prep_slave_sg.exit.unmap_exit_crit_edge, label %if.end39

dmaengine_prep_slave_sg.exit.unmap_exit_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unmap_exit

if.end39:                                         ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %chan.0, ptr %dma_chan, align 4
  %60 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i79, ptr %dma_desc, align 4
  br label %cleanup

unmap_exit:                                       ; preds = %dmaengine_prep_slave_sg.exit.unmap_exit_crit_edge, %lor.lhs.false2.i.unmap_exit_crit_edge, %lor.lhs.false.i.unmap_exit_crit_edge
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %63 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sg, align 4
  %65 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sg_len, align 4
  %67 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags6, align 4
  %and.i81 = and i32 %68, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i82 = icmp eq i32 %and.i81, 0
  %cond.i83 = select i1 %tobool.not.i82, i32 2, i32 1
  call void @dma_unmap_sg_attrs(ptr noundef %62, ptr noundef %64, i32 noundef %66, i32 noundef %cond.i83, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %unmap_exit, %if.end39, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -12, %unmap_exit ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %conf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmci_dmae_start(ptr nocapture noundef %host, ptr nocapture noundef %datactrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %dma_in_progress = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dma_in_progress, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %dma_in_progress, align 4
  %desc_current = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %desc_current to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_current, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_submit.i, align 4
  %call.i = tail call i32 %6(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dma_in_progress to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load3 = load i8, ptr %dma_in_progress, align 4
  %bf.clear4 = and i8 %bf.load3, -65
  store i8 %bf.clear4, ptr %dma_in_progress, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 50
  %12 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %13(ptr noundef %9) #10
  %14 = ptrtoint ptr %datactrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %datactrl, align 4
  %or = or i32 %15, 8
  store i32 %or, ptr %datactrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %16 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #10
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_dmae_get_next_data(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %next_data = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4
  %use_dma = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 13
  %3 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %land.rhs, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

land.rhs:                                         ; preds = %if.end
  %5 = ptrtoint ptr %next_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %next_data, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.rhs, label %land.rhs.do.end_crit_edge

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs:                                          ; preds = %land.rhs
  %chan = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %lor.rhs.if.end18_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !224

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lor.rhs.if.end18_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %land.rhs.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1025, i32 noundef 9, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %lor.rhs.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %9 = ptrtoint ptr %next_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_data, align 4
  %desc_current = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %desc_current to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %desc_current, align 4
  %chan26 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %chan26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan26, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %1, align 4
  store ptr null, ptr %next_data, align 4
  store ptr null, ptr %chan26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmci_dmae_unprep_data(ptr nocapture noundef %host, ptr nocapture noundef readonly %data, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_priv = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 38
  %0 = ptrtoint ptr %dma_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_priv, align 4
  %use_dma = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %2 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %rx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 1
  %tx_channel.i = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 2
  %chan.0.in.i = select i1 %tobool.not.i, ptr %tx_channel.i, ptr %rx_channel.i
  %5 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %6 = ptrtoint ptr %chan.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan.0.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %10 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %12 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_len.i, align 4
  %and.i.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %cond.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool1.not = icmp eq i32 %err, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %next_data = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %chan.0.in = select i1 %tobool3.not, ptr %tx_channel.i, ptr %rx_channel.i
  %16 = ptrtoint ptr %chan.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %chan.0 = load ptr, ptr %chan.0.in, align 4
  %17 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.0, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i31 = icmp eq ptr %20, null
  br i1 %tobool.not.i31, label %if.then2.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then2.dmaengine_terminate_all.exit_crit_edge:  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %20(ptr noundef %chan.0) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then2.dmaengine_terminate_all.exit_crit_edge
  %desc_current = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %desc_current to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_current, align 4
  %23 = ptrtoint ptr %next_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_data, align 4
  %cmp = icmp eq ptr %22, %24
  br i1 %cmp, label %if.then6, label %dmaengine_terminate_all.exit.if.end8_crit_edge

dmaengine_terminate_all.exit.if.end8_crit_edge:   ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then6:                                         ; preds = %dmaengine_terminate_all.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %desc_current to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %desc_current, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %dmaengine_terminate_all.exit.if.end8_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %chan9 = getelementptr inbounds %struct.mmci_dmae_priv, ptr %1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %chan9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan9, align 4
  %cmp10 = icmp eq ptr %27, %29
  br i1 %cmp10, label %if.then11, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load12 = load i8, ptr %use_dma, align 4
  %bf.clear = and i8 %bf.load12, -65
  store i8 %bf.clear, ptr %use_dma, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %1, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %32 = ptrtoint ptr %next_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %next_data, align 4
  %33 = ptrtoint ptr %chan9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %chan9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @mmci_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmci_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @amba_driver_unregister(ptr noundef nonnull @mmci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %data = getelementptr inbounds %struct.amba_id, ptr %id, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #10
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %plat.0 = phi ptr [ %1, %if.end.if.end11_crit_edge ], [ %call.i, %if.then6.if.end11_crit_edge ]
  %call13 = tail call ptr @mmc_alloc_host(i32 noundef 324, ptr noundef %dev) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 70
  %mmc18 = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %mmc18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %mmc18, align 4
  %mmc_ops = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 9
  %7 = ptrtoint ptr %mmc_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mmci_ops, ptr %mmc_ops, align 4
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mmci_ops, ptr %ops, align 4
  %call1.i = tail call i32 @mmc_of_parse(ptr noundef nonnull %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.host_free_crit_edge

if.end16.host_free_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %host_free

if.end.i:                                         ; preds = %if.end16
  %call2.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.62, ptr noundef null) #10
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %pwr_reg_add.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pwr_reg_add.i, align 4
  %or.i = or i32 %10, 16
  store i32 %or.i, ptr %pwr_reg_add.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %call6.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.63, ptr noundef null) #10
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then8.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add9.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %pwr_reg_add9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pwr_reg_add9.i, align 4
  %or10.i = or i32 %12, 4
  store i32 %or10.i, ptr %pwr_reg_add9.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end11.i_crit_edge
  %call12.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.64, ptr noundef null) #10
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.end11.i.if.end17.i_crit_edge, label %if.then14.i

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add15.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %pwr_reg_add15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pwr_reg_add15.i, align 4
  %or16.i = or i32 %14, 32
  store i32 %or16.i, ptr %pwr_reg_add15.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end17.i_crit_edge
  %call18.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.65, ptr noundef null) #10
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.if.end23.i_crit_edge, label %if.then20.i

if.end17.i.if.end23.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add21.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %pwr_reg_add21.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwr_reg_add21.i, align 4
  %or22.i = or i32 %16, 256
  store i32 %or22.i, ptr %pwr_reg_add21.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.end17.i.if.end23.i_crit_edge
  %call24.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.66, ptr noundef null) #10
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then26.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add27.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %17 = ptrtoint ptr %pwr_reg_add27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pwr_reg_add27.i, align 4
  %or28.i = or i32 %18, 8
  store i32 %or28.i, ptr %pwr_reg_add27.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end29.i_crit_edge
  %call30.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef null) #10
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end29.i.if.end35.i_crit_edge, label %if.then32.i

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add33.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %pwr_reg_add33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pwr_reg_add33.i, align 4
  %or34.i = or i32 %20, 128
  store i32 %or34.i, ptr %pwr_reg_add33.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end29.i.if.end35.i_crit_edge
  %call36.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef null) #10
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.end35.i.if.end41.i_crit_edge, label %if.then38.i

if.end35.i.if.end41.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  %pwr_reg_add39.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %pwr_reg_add39.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pwr_reg_add39.i, align 4
  %or40.i = or i32 %22, 16
  store i32 %or40.i, ptr %pwr_reg_add39.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end41.i_crit_edge
  %call42.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.69, ptr noundef null) #10
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %if.end41.i.if.end46.i_crit_edge, label %if.then44.i

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.i

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %clk_reg_add.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 3
  %23 = ptrtoint ptr %clk_reg_add.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_reg_add.i, align 4
  %or45.i = or i32 %24, 65536
  store i32 %or45.i, ptr %clk_reg_add.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %if.end41.i.if.end46.i_crit_edge
  %call47.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef null) #10
  %tobool48.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool48.not.i, label %if.end46.i.if.end50.i_crit_edge, label %if.then49.i

if.end46.i.if.end50.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then49.i:                                      ; preds = %if.end46.i
  %25 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call13, align 128
  %clk_reg_add.i.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 3
  %27 = ptrtoint ptr %clk_reg_add.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_reg_add.i.i, align 4
  %or.i.i = or i32 %28, 1048576
  store i32 %or.i.i, ptr %clk_reg_add.i.i, align 4
  %call1.i.i = tail call ptr @gpiod_get(ptr noundef %26, ptr noundef nonnull @.str.73, i32 noundef 7) #10
  %cmp.i.i.i = icmp ugt ptr %call1.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then49.i.mmci_probe_level_translator.exit.i_crit_edge, label %if.end.i.i

if.then49.i.mmci_probe_level_translator.exit.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_probe_level_translator.exit.i

if.end.i.i:                                       ; preds = %if.then49.i
  %call3.i.i = tail call ptr @gpiod_get(ptr noundef %26, ptr noundef nonnull @.str.74, i32 noundef 7) #10
  %cmp.i41.i.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i.i, label %if.end.i.i.exit_ck.i.i_crit_edge, label %if.end6.i.i

if.end.i.i.exit_ck.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_ck.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call7.i.i = tail call ptr @gpiod_get(ptr noundef %26, ptr noundef nonnull @.str.75, i32 noundef 1) #10
  %cmp.i42.i.i = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42.i.i, label %if.end6.i.i.exit_ckin.i.i_crit_edge, label %if.end10.i.i

if.end6.i.i.exit_ckin.i.i_crit_edge:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit_ckin.i.i

if.end10.i.i:                                     ; preds = %if.end6.i.i
  %call11.i.i = tail call i32 @gpiod_get_value(ptr noundef %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool.not.i.i = icmp ne i32 %call11.i.i, 0
  tail call void @gpiod_set_value(ptr noundef %call3.i.i, i32 noundef 0) #10
  %call13.i.i = tail call i32 @gpiod_get_value(ptr noundef %call7.i.i) #10
  %call19.i.i = tail call i32 @gpiod_direction_input(ptr noundef %call1.i.i) #10
  %call20.i.i = tail call i32 @gpiod_direction_input(ptr noundef %call3.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %tobool14.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end10.i.i.if.end25.i.i_crit_edge, label %if.then23.i.i

if.end10.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i.i

if.then23.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %clk_reg_add.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_reg_add.i.i, align 4
  %and.i.i = and i32 %30, -1048577
  store i32 %and.i.i, ptr %clk_reg_add.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.76) #13
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.then23.i.i, %if.end10.i.i.if.end25.i.i_crit_edge
  tail call void @gpiod_put(ptr noundef %call7.i.i) #10
  br label %exit_ckin.i.i

exit_ckin.i.i:                                    ; preds = %if.end25.i.i, %if.end6.i.i.exit_ckin.i.i_crit_edge
  tail call void @gpiod_put(ptr noundef %call3.i.i) #10
  br label %exit_ck.i.i

exit_ck.i.i:                                      ; preds = %exit_ckin.i.i, %if.end.i.i.exit_ck.i.i_crit_edge
  tail call void @gpiod_put(ptr noundef %call1.i.i) #10
  br label %mmci_probe_level_translator.exit.i

mmci_probe_level_translator.exit.i:               ; preds = %exit_ck.i.i, %if.then49.i.mmci_probe_level_translator.exit.i_crit_edge
  %call26.i.i = tail call i32 @pinctrl_select_default_state(ptr noundef %26) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %mmci_probe_level_translator.exit.i, %if.end46.i.if.end50.i_crit_edge
  %call51.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.71, ptr noundef null) #10
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.end50.i.if.end55.i_crit_edge, label %if.then53.i

if.end50.i.if.end55.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 16
  %31 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %caps.i, align 32
  %or54.i = or i32 %32, 2
  store i32 %or54.i, ptr %caps.i, align 32
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end50.i.if.end55.i_crit_edge
  %call56.i = tail call ptr @of_get_property(ptr noundef %3, ptr noundef nonnull @.str.72, ptr noundef null) #10
  %tobool57.not.i = icmp eq ptr %call56.i, null
  br i1 %tobool57.not.i, label %if.end55.i.if.end22_crit_edge, label %if.then58.i

if.end55.i.if.end22_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %caps59.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 16
  %33 = ptrtoint ptr %caps59.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %caps59.i, align 32
  %or60.i = or i32 %34, 4
  store i32 %or60.i, ptr %caps59.i, align 32
  br label %if.end22

if.end22:                                         ; preds = %if.then58.i, %if.end55.i.if.end22_crit_edge
  %opendrain = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 26
  %35 = ptrtoint ptr %opendrain to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %opendrain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool23.not = icmp eq i32 %36, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end48_crit_edge

if.end22.if.end48_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then24:                                        ; preds = %if.end22
  %call26 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #10
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 9, i32 1, i32 3
  %37 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call26, ptr %pinctrl, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #13
  %38 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pinctrl, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %host_free

if.end36:                                         ; preds = %if.then24
  %call38 = tail call ptr @pinctrl_lookup_state(ptr noundef %call26, ptr noundef nonnull @.str.23) #10
  %pins_opendrain = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 9, i32 1, i32 4
  %41 = ptrtoint ptr %pins_opendrain to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call38, ptr %pins_opendrain, align 4
  %cmp.i605 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i605, label %do.end44, label %if.end36.if.end48_crit_edge

if.end36.if.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call13, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.25) #13
  %44 = ptrtoint ptr %pins_opendrain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pins_opendrain, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %host_free

if.end48:                                         ; preds = %if.end36.if.end48_crit_edge, %if.end22.if.end48_crit_edge
  %periphid = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 4
  %47 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %periphid, align 8
  %shr = lshr i32 %48, 12
  %conv = trunc i32 %shr to i8
  %hw_designer = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %49 = ptrtoint ptr %hw_designer to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv, ptr %hw_designer, align 4
  %50 = load i32, ptr %periphid, align 8
  %hw_revision = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 30
  %51 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %hw_revision, align 1
  %sh.diff = lshr i32 %50, 16
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -16
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %hw_revision, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_probe, %if.then58)) #10
          to label %do.body65 [label %if.then58], !srcloc !225

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call13, align 128
  %54 = ptrtoint ptr %hw_designer to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %hw_designer, align 4
  %conv61 = zext i8 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_probe.__UNIQUE_ID_ddebug311, ptr noundef %53, ptr noundef nonnull @.str.28, i32 noundef %conv61) #10
  br label %do.body65

do.body65:                                        ; preds = %if.then58, %if.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_probe, %if.then77)) #10
          to label %do.end84 [label %if.then77], !srcloc !225

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call13, align 128
  %58 = ptrtoint ptr %hw_revision to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load80 = load i8, ptr %hw_revision, align 1
  %bf.lshr = lshr i8 %bf.load80, 4
  %conv81 = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_probe.__UNIQUE_ID_ddebug312, ptr noundef %57, ptr noundef nonnull @.str.29, i32 noundef %conv81) #10
  br label %do.end84

do.end84:                                         ; preds = %if.then77, %do.body65
  %call86 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call86, ptr %clk, align 4
  %cmp.i606 = icmp ugt ptr %call86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i606, label %if.then89, label %if.end92

if.then89:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call86 to i32
  br label %host_free

if.end92:                                         ; preds = %do.end84
  %call.i607 = tail call i32 @clk_prepare(ptr noundef %call86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i607)
  %tobool.not.i608 = icmp eq i32 %call.i607, 0
  br i1 %tobool.not.i608, label %if.end.i610, label %if.end92.host_free_crit_edge

if.end92.host_free_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  br label %host_free

if.end.i610:                                      ; preds = %if.end92
  %call1.i609 = tail call i32 @clk_enable(ptr noundef %call86) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i609)
  %tobool2.not.i = icmp eq i32 %call1.i609, 0
  br i1 %tobool2.not.i, label %if.end97, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i610
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %call86) #10
  br label %host_free

if.end97:                                         ; preds = %if.end.i610
  %qcom_fifo = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 23
  %61 = ptrtoint ptr %qcom_fifo to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load98 = load i8, ptr %qcom_fifo, align 4
  %62 = and i8 %bf.load98, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool101.not = icmp eq i8 %62, 0
  %spec.select = select i1 %tobool101.not, ptr @mmci_get_rx_fifocnt, ptr @mmci_qcom_get_rx_fifocnt
  %63 = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 10, i32 1, i32 4, i32 6
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %spec.select, ptr %63, align 4
  %plat105 = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 8
  %65 = ptrtoint ptr %plat105 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %plat.0, ptr %plat105, align 4
  %variant106 = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 9, i32 1, i32 1
  %66 = ptrtoint ptr %variant106 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %5, ptr %variant106, align 4
  %67 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk, align 4
  %call108 = tail call i32 @clk_get_rate(ptr noundef %68) #10
  %mclk = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %69 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call108, ptr %mclk, align 4
  %f_max = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 18
  %70 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %f_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call108, i32 %71)
  %cmp = icmp ugt i32 %call108, %71
  br i1 %cmp, label %if.then111, label %if.end97.if.end140_crit_edge

if.end97.if.end140_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end140

if.then111:                                       ; preds = %if.end97
  %72 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk, align 4
  %call114 = tail call i32 @clk_set_rate(ptr noundef %73, i32 noundef %71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then111.clk_disable_crit_edge, label %if.end118

if.then111.clk_disable_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_disable

if.end118:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk, align 4
  %call120 = tail call i32 @clk_get_rate(ptr noundef %75) #10
  %76 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %call120, ptr %mclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_probe, %if.then134)) #10
          to label %if.end140 [label %if.then134], !srcloc !225

if.then134:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call13, align 128
  %79 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_probe.__UNIQUE_ID_ddebug313, ptr noundef %78, ptr noundef nonnull @.str.30, i32 noundef %80) #10
  br label %if.end140

if.end140:                                        ; preds = %if.then134, %if.end118, %if.end97.if.end140_crit_edge
  %res = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1
  %81 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %res, align 8
  %83 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %private.i, align 4
  %call143 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %res) #10
  %base = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %84 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call143, ptr %base, align 4
  %cmp.i612 = icmp ugt ptr %call143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i612, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %call143 to i32
  br label %clk_disable

if.end149:                                        ; preds = %if.end140
  %init = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 29
  %86 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init, align 4
  %tobool150.not = icmp eq ptr %87, null
  br i1 %tobool150.not, label %if.end149.if.end153_crit_edge, label %if.then151

if.end149.if.end153_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end153

if.then151:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %87(ptr noundef %private.i) #10
  br label %if.end153

if.end153:                                        ; preds = %if.then151, %if.end149.if.end153_crit_edge
  %st_clkdiv = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 16
  %88 = ptrtoint ptr %st_clkdiv to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load154 = load i8, ptr %st_clkdiv, align 4
  %89 = and i8 %bf.load154, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool157.not = icmp eq i8 %89, 0
  br i1 %tobool157.not, label %if.else160, label %if.then158

if.then158:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mclk, align 4
  %sub = add i32 %91, 256
  %div = udiv i32 %sub, 257
  br label %if.end188

if.else160:                                       ; preds = %if.end153
  %92 = and i8 %bf.load154, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool164.not = icmp eq i8 %92, 0
  br i1 %tobool164.not, label %if.else171, label %if.then165

if.then165:                                       ; preds = %if.else160
  call void @__sanitizer_cov_trace_pc() #12
  %93 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %mclk, align 4
  %sub168 = add i32 %94, 2045
  %div169 = udiv i32 %sub168, 2046
  br label %if.end188

if.else171:                                       ; preds = %if.else160
  %95 = ptrtoint ptr %qcom_fifo to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load172 = load i8, ptr %qcom_fifo, align 4
  %96 = and i8 %bf.load172, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool175.not = icmp eq i8 %96, 0
  br i1 %tobool175.not, label %if.else180, label %if.then176

if.then176:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %clk, align 4
  %call178 = tail call i32 @clk_round_rate(ptr noundef %98, i32 noundef 100000) #10
  br label %if.end188

if.else180:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mclk, align 4
  %sub183 = add i32 %100, 511
  %div184593 = lshr i32 %sub183, 9
  br label %if.end188

if.end188:                                        ; preds = %if.else180, %if.then176, %if.then165, %if.then158
  %div169.sink = phi i32 [ %div169, %if.then165 ], [ %div184593, %if.else180 ], [ %call178, %if.then176 ], [ %div, %if.then158 ]
  %f_min170 = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 5
  %101 = ptrtoint ptr %f_min170 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div169.sink, ptr %f_min170, align 4
  %f_max189 = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 6
  %102 = ptrtoint ptr %f_max189 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %f_max189, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool190.not = icmp eq i32 %103, 0
  %104 = ptrtoint ptr %qcom_fifo to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load219 = load i8, ptr %qcom_fifo, align 4
  %105 = and i8 %bf.load219, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool223.not = icmp eq i8 %105, 0
  br i1 %tobool190.not, label %if.else217, label %if.then191

if.then191:                                       ; preds = %if.end188
  br i1 %tobool223.not, label %cond.false204, label %cond.true

cond.true:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %f_max, align 4
  %108 = tail call i32 @llvm.umin.i32(i32 %107, i32 %103)
  br label %do.body238

cond.false204:                                    ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mclk, align 4
  %111 = tail call i32 @llvm.umin.i32(i32 %110, i32 %103)
  br label %do.body238

if.else217:                                       ; preds = %if.end188
  br i1 %tobool223.not, label %cond.false225, label %cond.true224

cond.true224:                                     ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #12
  %112 = load i32, ptr @fmax, align 4
  br label %do.body238

cond.false225:                                    ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mclk, align 4
  %115 = load i32, ptr @fmax, align 4
  %116 = tail call i32 @llvm.umin.i32(i32 %114, i32 %115)
  br label %do.body238

do.body238:                                       ; preds = %cond.false225, %cond.true224, %cond.false204, %cond.true
  %storemerge = phi i32 [ %108, %cond.true ], [ %111, %cond.false204 ], [ %112, %cond.true224 ], [ %116, %cond.false225 ]
  %117 = ptrtoint ptr %f_max189 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %storemerge, ptr %f_max189, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_probe, %if.then250)) #10
          to label %do.end255 [label %if.then250], !srcloc !225

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #12
  %118 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call13, align 128
  %120 = ptrtoint ptr %f_max189 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %f_max189, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_probe.__UNIQUE_ID_ddebug320, ptr noundef %119, ptr noundef nonnull @.str.31, i32 noundef %121) #10
  br label %do.end255

do.end255:                                        ; preds = %if.then250, %do.body238
  %call.i613 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #10
  %rst = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %122 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i613, ptr %rst, align 4
  %cmp.i614 = icmp ugt ptr %call.i613, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i614, label %if.then260, label %if.end263

if.then260:                                       ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %call.i613 to i32
  br label %clk_disable

if.end263:                                        ; preds = %do.end255
  %call265 = tail call i32 @reset_control_deassert(ptr noundef %call.i613) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %tobool266.not = icmp eq i32 %call265, 0
  br i1 %tobool266.not, label %if.end263.if.end272_crit_edge, label %do.end270

if.end263.if.end272_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272

do.end270:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %call13, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.33) #13
  br label %if.end272

if.end272:                                        ; preds = %do.end270, %if.end263.if.end272_crit_edge
  %call273 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %if.end276, label %if.end272.clk_disable_crit_edge

if.end272.clk_disable_crit_edge:                  ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_disable

if.end276:                                        ; preds = %if.end272
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 8
  %126 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ocr_avail, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool277.not = icmp eq i32 %127, 0
  %128 = ptrtoint ptr %plat.0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %plat.0, align 4
  br i1 %tobool277.not, label %if.then278, label %if.else280

if.then278:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %ocr_avail, align 64
  br label %if.end289

if.else280:                                       ; preds = %if.end276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool282.not = icmp eq i32 %129, 0
  br i1 %tobool282.not, label %if.else280.if.end289_crit_edge, label %do.end286

if.else280.if.end289_crit_edge:                   ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end289

do.end286:                                        ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %call13, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.36) #13
  br label %if.end289

if.end289:                                        ; preds = %do.end286, %if.else280.if.end289_crit_edge, %if.then278
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 16
  %133 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %caps, align 32
  %or = or i32 %134, 1073741824
  store i32 %or, ptr %caps, align 32
  %busy_detect = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 19
  %135 = ptrtoint ptr %busy_detect to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load290 = load i8, ptr %busy_detect, align 4
  %136 = and i8 %bf.load290, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool293.not = icmp eq i8 %136, 0
  br i1 %tobool293.not, label %if.end289.if.end302_crit_edge, label %if.then294

if.end289.if.end302_crit_edge:                    ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end302

if.then294:                                       ; preds = %if.end289
  store ptr @mmci_card_busy, ptr getelementptr inbounds (%struct.mmc_host_ops, ptr @mmci_ops, i32 0, i32 11), align 4
  %busy_dpsm_flag = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 20
  %137 = ptrtoint ptr %busy_dpsm_flag to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %busy_dpsm_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool295.not = icmp eq i32 %138, 0
  br i1 %tobool295.not, label %if.then294.if.end299_crit_edge, label %if.then296

if.then294.if.end299_crit_edge:                   ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end299

if.then296:                                       ; preds = %if.then294
  call void @__sanitizer_cov_trace_pc() #12
  %139 = ptrtoint ptr %variant106 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %variant106, align 4
  %busy_dpsm_flag298 = getelementptr inbounds %struct.variant_data, ptr %140, i32 0, i32 20
  %141 = ptrtoint ptr %busy_dpsm_flag298 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %busy_dpsm_flag298, align 4
  tail call fastcc void @mmci_write_datactrlreg(ptr noundef %private.i, i32 noundef %142)
  br label %if.end299

if.end299:                                        ; preds = %if.then296, %if.then294.if.end299_crit_edge
  %143 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %caps, align 32
  %or301 = or i32 %144, 512
  store i32 %or301, ptr %caps, align 32
  br label %if.end302

if.end302:                                        ; preds = %if.end299, %if.end289.if.end302_crit_edge
  %145 = ptrtoint ptr %busy_detect to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load303 = load i8, ptr %busy_detect, align 4
  %146 = and i8 %bf.load303, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool306.not = icmp eq i8 %146, 0
  br i1 %tobool306.not, label %if.end302.if.end310_crit_edge, label %if.then307

if.end302.if.end310_crit_edge:                    ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end310

if.then307:                                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %caps, align 32
  %or309 = or i32 %148, 4194304
  store i32 %or309, ptr %caps, align 32
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %if.end302.if.end310_crit_edge
  %stop_abort = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 1, i32 1
  %149 = ptrtoint ptr %stop_abort to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 12, ptr %stop_abort, align 4
  %arg = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 2
  %150 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7
  %151 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 29, ptr %flags, align 4
  %pm_caps = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 19
  %152 = ptrtoint ptr %pm_caps to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %pm_caps, align 4
  %or313 = or i32 %153, 1
  store i32 %or313, ptr %pm_caps, align 4
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 21
  %154 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 128, ptr %max_segs, align 4
  %datalength_bits = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 9
  %155 = ptrtoint ptr %datalength_bits to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %datalength_bits, align 4
  %notmask = shl nsw i32 -1, %156
  %sub314 = xor i32 %notmask, -1
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 23
  %157 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %sub314, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 20
  %158 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %sub314, ptr %max_seg_size, align 16
  %datactrl_blocksz = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 15
  %159 = ptrtoint ptr %datactrl_blocksz to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %datactrl_blocksz, align 4
  %shl316 = shl nuw i32 1, %160
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 24
  %161 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %shl316, ptr %max_blk_size, align 4
  %162 = load i32, ptr %datactrl_blocksz, align 4
  %shr319 = lshr i32 %sub314, %162
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 25
  %163 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %shr319, ptr %max_blk_count, align 128
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.38, ptr noundef nonnull @mmci_probe.__key, i16 noundef signext 3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  tail call void @arm_heavy_mb() #10
  %164 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %165, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !219
  %166 = ptrtoint ptr %qcom_fifo to i32
  call void @__asan_load1_noabort(i32 %166)
  %bf.load328 = load i8, ptr %qcom_fifo, align 4
  %167 = and i8 %bf.load328, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool331.not = icmp eq i8 %167, 0
  br i1 %tobool331.not, label %if.end310.do.body339_crit_edge, label %do.body333

if.end310.do.body339_crit_edge:                   ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body339

do.body333:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  tail call void @arm_heavy_mb() #10
  %168 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base, align 4
  %add.ptr337 = getelementptr i8, ptr %169, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr337, i32 0) #10, !srcloc !219
  br label %do.body339

do.body339:                                       ; preds = %do.body333, %if.end310.do.body339_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  tail call void @arm_heavy_mb() #10
  %170 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base, align 4
  %add.ptr343 = getelementptr i8, ptr %171, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr343, i32 -15794176) #10, !srcloc !219
  br i1 %tobool3.not, label %if.then345, label %do.body339.if.end356_crit_edge

do.body339.if.end356_crit_edge:                   ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end356

if.then345:                                       ; preds = %do.body339
  %call346 = tail call i32 @mmc_gpiod_request_cd(ptr noundef nonnull %call13, ptr noundef nonnull @.str.39, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call346)
  %cmp347 = icmp eq i32 %call346, -517
  br i1 %cmp347, label %if.then345.clk_disable_crit_edge, label %if.end350

if.then345.clk_disable_crit_edge:                 ; preds = %if.then345
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_disable

if.end350:                                        ; preds = %if.then345
  %call351 = tail call i32 @mmc_gpiod_request_ro(ptr noundef nonnull %call13, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call351)
  %cmp352 = icmp eq i32 %call351, -517
  br i1 %cmp352, label %if.end350.clk_disable_crit_edge, label %if.end350.if.end356_crit_edge

if.end350.if.end356_crit_edge:                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end356

if.end350.clk_disable_crit_edge:                  ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_disable

if.end356:                                        ; preds = %if.end350.if.end356_crit_edge, %do.body339.if.end356_crit_edge
  %irq = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 7
  %172 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %irq, align 8
  %call358 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %173, ptr noundef nonnull @mmci_irq, ptr noundef nonnull @mmci_irq_thread, i32 noundef 128, ptr noundef nonnull @.str.41, ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call358)
  %tobool359.not = icmp eq i32 %call358, 0
  br i1 %tobool359.not, label %if.end361, label %if.end356.clk_disable_crit_edge

if.end356.clk_disable_crit_edge:                  ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_disable

if.end361:                                        ; preds = %if.end356
  %arrayidx363 = getelementptr %struct.amba_device, ptr %dev, i32 0, i32 7, i32 1
  %174 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx363, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool364.not = icmp eq i32 %175, 0
  br i1 %tobool364.not, label %if.then365, label %if.else369

if.then365:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #12
  %singleirq = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %176 = ptrtoint ptr %singleirq to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load366 = load i8, ptr %singleirq, align 4
  %bf.set368 = or i8 %bf.load366, -128
  store i8 %bf.set368, ptr %singleirq, align 4
  br label %do.body378

if.else369:                                       ; preds = %if.end361
  %call.i615 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %175, ptr noundef nonnull @mmci_pio_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.42, ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i615)
  %tobool374.not = icmp eq i32 %call.i615, 0
  br i1 %tobool374.not, label %if.else369.do.body378_crit_edge, label %if.else369.clk_disable_crit_edge

if.else369.clk_disable_crit_edge:                 ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_disable

if.else369.do.body378_crit_edge:                  ; preds = %if.else369
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body378

do.body378:                                       ; preds = %if.else369.do.body378_crit_edge, %if.then365
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  tail call void @arm_heavy_mb() #10
  %start_err = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 25
  %177 = ptrtoint ptr %start_err to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %start_err, align 4
  %or381 = or i32 %178, 255
  %179 = tail call i32 @llvm.bswap.i32(i32 %or381)
  %180 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base, align 4
  %add.ptr383 = getelementptr i8, ptr %181, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr383, i32 %179) #10, !srcloc !219
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %182 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call13, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 1, i32 3
  %183 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i616 = icmp eq ptr %184, null
  br i1 %tobool.not.i616, label %if.end.i617, label %do.body378.dev_name.exit_crit_edge

do.body378.dev_name.exit_crit_edge:               ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i617:                                      ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 0, i32 1
  %185 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i617, %do.body378.dev_name.exit_crit_edge
  %retval.0.i618 = phi ptr [ %186, %if.end.i617 ], [ %184, %do.body378.dev_name.exit_crit_edge ]
  %187 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %periphid, align 8
  %and391 = and i32 %188, 4095
  %shr393 = lshr i32 %188, 12
  %and394 = and i32 %shr393, 255
  %shr396 = lshr i32 %188, 20
  %and397 = and i32 %shr396, 15
  %189 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %res, align 8
  %conv400 = zext i32 %190 to i64
  %191 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %irq, align 8
  %193 = ptrtoint ptr %arrayidx363 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx363, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.44, ptr noundef %retval.0.i618, i32 noundef %and391, i32 noundef %and394, i32 noundef %and397, i64 noundef %conv400, i32 noundef %192, i32 noundef %194) #13
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 9, i32 1
  %195 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ops.i, align 4
  %tobool.not.i619 = icmp eq ptr %196, null
  br i1 %tobool.not.i619, label %dev_name.exit.mmci_dma_setup.exit_crit_edge, label %lor.lhs.false.i

dev_name.exit.mmci_dma_setup.exit_crit_edge:      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_setup.exit

lor.lhs.false.i:                                  ; preds = %dev_name.exit
  %dma_setup.i = getelementptr inbounds %struct.mmci_host_ops, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %dma_setup.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dma_setup.i, align 4
  %tobool2.not.i620 = icmp eq ptr %198, null
  br i1 %tobool2.not.i620, label %lor.lhs.false.i.mmci_dma_setup.exit_crit_edge, label %if.end.i622

lor.lhs.false.i.mmci_dma_setup.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_setup.exit

if.end.i622:                                      ; preds = %lor.lhs.false.i
  %call.i621 = tail call i32 %198(ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i621)
  %tobool5.not.i = icmp eq i32 %call.i621, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i622.mmci_dma_setup.exit_crit_edge

if.end.i622.mmci_dma_setup.exit_crit_edge:        ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_setup.exit

if.end7.i:                                        ; preds = %if.end.i622
  call void @__sanitizer_cov_trace_pc() #12
  %next_cookie.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 10, i32 3
  %199 = ptrtoint ptr %next_cookie.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 1, ptr %next_cookie.i, align 4
  %use_dma.i = getelementptr inbounds %struct.mmc_host, ptr %call13, i32 1, i32 1, i32 10, i32 1, i32 4, i32 7
  %200 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %use_dma.i, align 4
  br label %mmci_dma_setup.exit

mmci_dma_setup.exit:                              ; preds = %if.end7.i, %if.end.i622.mmci_dma_setup.exit_crit_edge, %lor.lhs.false.i.mmci_dma_setup.exit_crit_edge, %dev_name.exit.mmci_dma_setup.exit_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %call407 = tail call i32 @mmc_add_host(ptr noundef nonnull %call13) #10
  %call.i623 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  br label %cleanup

clk_disable:                                      ; preds = %if.else369.clk_disable_crit_edge, %if.end356.clk_disable_crit_edge, %if.end350.clk_disable_crit_edge, %if.then345.clk_disable_crit_edge, %if.end272.clk_disable_crit_edge, %if.then260, %if.then146, %if.then111.clk_disable_crit_edge
  %ret.0 = phi i32 [ %call114, %if.then111.clk_disable_crit_edge ], [ %85, %if.then146 ], [ %123, %if.then260 ], [ %call273, %if.end272.clk_disable_crit_edge ], [ %call358, %if.end356.clk_disable_crit_edge ], [ %call.i615, %if.else369.clk_disable_crit_edge ], [ -517, %if.then345.clk_disable_crit_edge ], [ -517, %if.end350.clk_disable_crit_edge ]
  %201 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %202) #10
  tail call void @clk_unprepare(ptr noundef %202) #10
  br label %host_free

host_free:                                        ; preds = %clk_disable, %if.then3.i, %if.end92.host_free_crit_edge, %if.then89, %do.end44, %do.end32, %if.end16.host_free_crit_edge
  %ret.1 = phi i32 [ %60, %if.then89 ], [ %ret.0, %clk_disable ], [ %40, %do.end32 ], [ %46, %do.end44 ], [ %call1.i, %if.end16.host_free_crit_edge ], [ %call1.i609, %if.then3.i ], [ %call.i607, %if.end92.host_free_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call13) #10
  br label %cleanup

cleanup:                                          ; preds = %host_free, %mmci_dma_setup.exit, %if.end11.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %host_free ], [ 0, %mmci_dma_setup.exit ], [ -22, %do.end ], [ -12, %if.then6.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %variant3 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 9, i32 1, i32 1
  %2 = ptrtoint ptr %variant3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  tail call void @mmc_remove_host(ptr noundef nonnull %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  tail call void @arm_heavy_mb() #10
  %base = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !219
  %mmcimask1 = getelementptr inbounds %struct.variant_data, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %mmcimask1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %mmcimask1, align 4
  %7 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.then.do.body13_crit_edge, label %do.body8

if.then.do.body13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body13

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #10, !srcloc !219
  br label %do.body13

do.body13:                                        ; preds = %do.body8, %if.then.do.body13_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #10, !srcloc !219
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 9, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body13.mmci_dma_release.exit_crit_edge, label %land.lhs.true.i

do.body13.mmci_dma_release.exit_crit_edge:        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_release.exit

land.lhs.true.i:                                  ; preds = %do.body13
  %dma_release.i = getelementptr inbounds %struct.mmci_host_ops, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dma_release.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_release.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.mmci_dma_release.exit_crit_edge, label %if.then.i

land.lhs.true.i.mmci_dma_release.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_release.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %17(ptr noundef %private.i) #10
  br label %mmci_dma_release.exit

mmci_dma_release.exit:                            ; preds = %if.then.i, %land.lhs.true.i.mmci_dma_release.exit_crit_edge, %do.body13.mmci_dma_release.exit_crit_edge
  %use_dma.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 10, i32 1, i32 4, i32 7
  %18 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %use_dma.i, align 4
  %clk = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %20) #10
  tail call void @clk_unprepare(ptr noundef %20) #10
  tail call void @mmc_free_host(ptr noundef nonnull %1) #10
  br label %if.end23

if.end23:                                         ; preds = %mmci_dma_release.exit, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %call3 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #10
  %lock.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !219
  %variant.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %pwrreg_nopower.i = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %pwrreg_nopower.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %pwrreg_nopower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.mmci_save.exit_crit_edge, label %do.body8.i

if.then.mmci_save.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_save.exit

do.body8.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 0) #10, !srcloc !219
  br label %mmci_save.exit

mmci_save.exit:                                   ; preds = %do.body8.i, %if.then.mmci_save.exit_crit_edge
  %cclk.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %cclk.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cclk.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %14)
  %cmp.i.i = icmp ult i32 %14, 25000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %..i.i = select i1 %cmp.i.i, i32 6442440, i32 214748
  tail call void %15(i32 noundef %..i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %clk = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  br label %if.end

if.end:                                           ; preds = %mmci_save.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %clk = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %3) #10
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then.clk_prepare_enable.exit_crit_edge
  %lock.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %variant.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant.i, align 4
  %pwrreg_nopower.i = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %pwrreg_nopower.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %pwrreg_nopower.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i8 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i8, label %clk_prepare_enable.exit.mmci_restore.exit_crit_edge, label %do.body5.i

clk_prepare_enable.exit.mmci_restore.exit_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_restore.exit

do.body5.i:                                       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %clk_reg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 2
  %7 = ptrtoint ptr %clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_reg.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  %base.i = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  tail call void @arm_heavy_mb() #10
  %datactrl_reg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 4
  %12 = ptrtoint ptr %datactrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %datactrl_reg.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %16, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %14) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %pwr_reg.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 8
  %17 = ptrtoint ptr %pwr_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pwr_reg.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #10, !srcloc !219
  br label %mmci_restore.exit

mmci_restore.exit:                                ; preds = %do.body5.i, %clk_prepare_enable.exit.mmci_restore.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %variant.i, align 4
  %start_err.i = getelementptr inbounds %struct.variant_data, ptr %23, i32 0, i32 25
  %24 = ptrtoint ptr %start_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %start_err.i, align 4
  %or.i = or i32 %25, 255
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %base22.i = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %27 = ptrtoint ptr %base22.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base22.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %28, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %26) #10, !srcloc !219
  %cclk.i.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 3
  %29 = ptrtoint ptr %cclk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cclk.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %30)
  %cmp.i.i = icmp ult i32 %30, 25000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %..i.i = select i1 %cmp.i.i, i32 6442440, i32 214748
  tail call void %31(i32 noundef %..i.i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %call4 = tail call i32 @pinctrl_select_default_state(ptr noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %mmci_restore.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmci_qcom_get_rx_fifocnt(ptr nocapture noundef readonly %host, i32 noundef %status, i32 noundef %r) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %fifohalfsize = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %fifohalfsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifohalfsize, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and1 = lshr i32 %status, 19
  %4 = and i32 %and1, 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %3, %if.then ], [ %4, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_get_rx_fifocnt(ptr nocapture noundef readonly %host, i32 noundef %status, i32 noundef %remain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  %shl.neg = mul i32 %3, -4
  %sub = add i32 %shl.neg, %remain
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_card_busy(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %base = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  %variant = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %busy_detect_flag = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %busy_detect_flag to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %busy_detect_flag, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %tobool.not to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmci_write_datactrlreg(ptr nocapture noundef %host, i32 noundef %datactrl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %datactrl_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %datactrl_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datactrl_reg, align 4
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %busy_dpsm_flag = getelementptr inbounds %struct.variant_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %busy_dpsm_flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_dpsm_flag, align 4
  %and = and i32 %5, %1
  %or = or i32 %and, %datactrl
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %or)
  %cmp.not = icmp eq i32 %1, %or
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %datactrl_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %datactrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #10, !srcloc !219
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_ro(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %irq_action = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 33
  %0 = ptrtoint ptr %irq_action to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %irq_action, align 4
  %base = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 1
  %singleirq = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 8
  %mask1_reg = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 20
  %variant = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 25
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 6
  %data = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 5
  %cmd = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end51.do.body_crit_edge, %entry
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 52
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %5 = ptrtoint ptr %singleirq to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %singleirq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body.if.end6_crit_edge, label %if.then

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %do.body
  %6 = ptrtoint ptr %mask1_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask1_reg, align 4
  %and = and i32 %7, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @mmci_pio_irq(i32 noundef %irq, ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %irq_pio_mask = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %irq_pio_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_pio_mask, align 4
  %neg = xor i32 %11, -1
  %and5 = and i32 %4, %neg
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.body.if.end6_crit_edge
  %status.0 = phi i32 [ %and5, %if.end ], [ %4, %do.body.if.end6_crit_edge ]
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 60
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !221
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  %and14 = and i32 %15, %status.0
  %16 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %variant, align 4
  %busy_detect = getelementptr inbounds %struct.variant_data, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %busy_detect to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load16 = load i8, ptr %busy_detect, align 4
  %19 = and i8 %bf.load16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool18.not, label %do.body26, label %do.body20

do.body20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %variant, align 4
  %busy_detect_mask = getelementptr inbounds %struct.variant_data, ptr %21, i32 0, i32 22
  %22 = ptrtoint ptr %busy_detect_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %busy_detect_mask, align 4
  %neg22 = xor i32 %23, -1
  %and23 = and i32 %and14, %neg22
  %24 = tail call i32 @llvm.bswap.i32(i32 %and23)
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %26, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %24) #10, !srcloc !219
  br label %do.body32

do.body26:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %and14)
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %27) #10, !srcloc !219
  br label %do.body32

do.body32:                                        ; preds = %do.body26, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_irq.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_irq, %if.then38)) #10
          to label %do.end41 [label %if.then38], !srcloc !225

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_irq.__UNIQUE_ID_ddebug310, ptr noundef %33, ptr noundef nonnull @.str.79, i32 noundef %and14) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  %34 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %variant, align 4
  %reversed_irq_handling = getelementptr inbounds %struct.variant_data, ptr %35, i32 0, i32 23
  %36 = ptrtoint ptr %reversed_irq_handling to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load43 = load i8, ptr %reversed_irq_handling, align 4
  %37 = and i8 %bf.load43, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool46.not = icmp eq i8 %37, 0
  br i1 %tobool46.not, label %if.else48, label %if.then47

if.then47:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  tail call fastcc void @mmci_data_irq(ptr noundef %dev_id, ptr noundef %39, i32 noundef %and14)
  %40 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cmd, align 4
  tail call fastcc void @mmci_cmd_irq(ptr noundef %dev_id, ptr noundef %41, i32 noundef %and14)
  br label %if.end51

if.else48:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd, align 4
  tail call fastcc void @mmci_cmd_irq(ptr noundef %dev_id, ptr noundef %43, i32 noundef %and14)
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  tail call fastcc void @mmci_data_irq(ptr noundef %dev_id, ptr noundef %45, i32 noundef %and14)
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.then47
  %46 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant, align 4
  %busy_detect_flag = getelementptr inbounds %struct.variant_data, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %busy_detect_flag to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %busy_detect_flag, align 4
  %neg57 = xor i32 %49, -1
  %status.1 = and i32 %and14, %neg57
  %tobool61.not = icmp eq i32 %status.1, 0
  br i1 %tobool61.not, label %do.end62, label %if.end51.do.body_crit_edge

if.end51.do.body_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end62:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %50 = ptrtoint ptr %irq_action to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_action, align 4
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_irq_thread(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @reset_control_assert(ptr noundef nonnull %1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #10
  %3 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rst, align 4
  %call3 = tail call i32 @reset_control_deassert(ptr noundef %4) #10
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %lock = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 10
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %clk_reg = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 16
  %5 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_reg, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %base = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  tail call void @arm_heavy_mb() #10
  %pwr_reg = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 14
  %10 = ptrtoint ptr %pwr_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwr_reg, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %variant = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 25
  %15 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant, align 4
  %start_err = getelementptr inbounds %struct.variant_data, ptr %16, i32 0, i32 25
  %17 = ptrtoint ptr %start_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_err, align 4
  %or = or i32 %18, 255
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %19) #10, !srcloc !219
  %irq_action = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 33
  %22 = ptrtoint ptr %irq_action to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %irq_action, align 4
  %mrq = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 2
  %23 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mrq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !219
  %data.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 5
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %mmci_request_end.exit, label %do.body4.i, !prof !224

do.body4.i:                                       ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

mmci_request_end.exit:                            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %mrq, align 4
  %cmd.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 3
  %30 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cmd.i, align 4
  %mmc.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 6
  %31 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %32, ptr noundef %24) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #10
  %33 = ptrtoint ptr %irq_action to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq_action, align 4
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_pio_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_miter1 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 34
  %variant2 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 25
  %0 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant2, align 4
  %base3 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base3, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_pio_irq.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_pio_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 6
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_pio_irq.__UNIQUE_ID_ddebug309, ptr noundef %9, ptr noundef nonnull @.str.84, i32 noundef %5) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and130 = and i32 %5, 2113536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool10.not131 = icmp eq i32 %and130, 0
  br i1 %tobool10.not131, label %do.end.do.end39_crit_edge, label %if.end12.lr.ph

do.end.do.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.end12.lr.ph:                                   ; preds = %do.end
  %addr = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 34, i32 1
  %length = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 34, i32 2
  %size.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 35
  %get_rx_fifocnt.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 36
  %consumed = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 34, i32 3
  br label %if.end12

if.end12:                                         ; preds = %cleanup.if.end12_crit_edge, %if.end12.lr.ph
  %status.0132 = phi i32 [ %5, %if.end12.lr.ph ], [ %39, %cleanup.if.end12_crit_edge ]
  %call13 = call zeroext i1 @sg_miter_next(ptr noundef %sg_miter1) #10
  br i1 %call13, label %if.end15, label %if.end12.do.end39_crit_edge

if.end12.do.end39_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.end15:                                         ; preds = %if.end12
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length, align 4
  %and16 = and i32 %status.0132, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base3, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 52
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !221
  %17 = call i32 @llvm.bswap.i32(i32 %16) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 128
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %if.then18
  %host_remain.0.i = phi i32 [ %19, %if.then18 ], [ %sub23.i, %cleanup.i.do.body.i_crit_edge ]
  %status.0.i = phi i32 [ %17, %if.then18 ], [ %26, %cleanup.i.do.body.i_crit_edge ]
  %ptr.0.i = phi ptr [ %11, %if.then18 ], [ %add.ptr22.i, %cleanup.i.do.body.i_crit_edge ]
  %remain.addr.0.i = phi i32 [ %13, %if.then18 ], [ %sub.i, %cleanup.i.do.body.i_crit_edge ]
  %20 = ptrtoint ptr %get_rx_fifocnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_rx_fifocnt.i, align 4
  %call4.i = call i32 %21(ptr noundef %dev_id, i32 noundef %status.0.i, i32 noundef %host_remain.0.i) #10
  %22 = call i32 @llvm.umin.i32(i32 %call4.i, i32 %remain.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp5.i = icmp slt i32 %22, 1
  br i1 %cmp5.i, label %do.body.i.mmci_pio_read.exit_crit_edge, label %if.end7.i

do.body.i.mmci_pio_read.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_pio_read.exit

if.end7.i:                                        ; preds = %do.body.i
  %and.i = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else18.i, label %if.then10.i, !prof !224

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %cmp11.i = icmp ult i32 %22, 4
  br i1 %cmp11.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #10
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %buf.i, align 4
  call void @__raw_readsl(ptr noundef %add.ptr15.i, ptr noundef nonnull %buf.i, i32 noundef 1) #10
  %24 = call ptr @memcpy(ptr %ptr.0.i, ptr %buf.i, i32 %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #10
  br label %if.end21.i

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr77.i = lshr i32 %22, 2
  call void @__raw_readsl(ptr noundef %add.ptr15.i, ptr noundef %ptr.0.i, i32 noundef %shr77.i) #10
  %and16.i = and i32 %22, -4
  br label %if.end21.i

if.else18.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr2076.i = lshr i32 %22, 2
  call void @__raw_readsl(ptr noundef %add.ptr15.i, ptr noundef %ptr.0.i, i32 noundef %shr2076.i) #10
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else18.i, %if.else.i, %if.then12.i
  %count.1.i = phi i32 [ %22, %if.then12.i ], [ %and16.i, %if.else.i ], [ %22, %if.else18.i ]
  %add.ptr22.i = getelementptr i8, ptr %ptr.0.i, i32 %count.1.i
  %sub.i = sub i32 %remain.addr.0.i, %count.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp24.i = icmp eq i32 %sub.i, 0
  br i1 %cmp24.i, label %if.end21.i.mmci_pio_read.exit_crit_edge, label %cleanup.i

if.end21.i.mmci_pio_read.exit_crit_edge:          ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_pio_read.exit

cleanup.i:                                        ; preds = %if.end21.i
  %sub23.i = sub i32 %host_remain.0.i, %count.1.i
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !221
  %26 = call i32 @llvm.bswap.i32(i32 %25) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  %and33.i = and i32 %26, 2097152
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %cleanup.i.mmci_pio_read.exit_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

cleanup.i.mmci_pio_read.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_pio_read.exit

mmci_pio_read.exit:                               ; preds = %cleanup.i.mmci_pio_read.exit_crit_edge, %if.end21.i.mmci_pio_read.exit_crit_edge, %do.body.i.mmci_pio_read.exit_crit_edge
  %ptr.175.i = phi ptr [ %add.ptr22.i, %cleanup.i.mmci_pio_read.exit_crit_edge ], [ %add.ptr22.i, %if.end21.i.mmci_pio_read.exit_crit_edge ], [ %ptr.0.i, %do.body.i.mmci_pio_read.exit_crit_edge ]
  %sub.ptr.lhs.cast.i = ptrtoint ptr %ptr.175.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %if.end20

if.end20:                                         ; preds = %mmci_pio_read.exit, %if.end15.if.end20_crit_edge
  %len.0 = phi i32 [ %sub.ptr.sub.i, %mmci_pio_read.exit ], [ 0, %if.end15.if.end20_crit_edge ]
  %and21 = and i32 %status.0132, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  %27 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %variant2, align 4
  %29 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base3, align 4
  %add.ptr9.i = getelementptr i8, ptr %30, i32 52
  %fifosize.i = getelementptr inbounds %struct.variant_data, ptr %28, i32 0, i32 10
  %fifohalfsize.i = getelementptr inbounds %struct.variant_data, ptr %28, i32 0, i32 11
  %add.ptr.i92 = getelementptr i8, ptr %30, i32 128
  br label %do.body.i98

do.body.i98:                                      ; preds = %cleanup.i99.do.body.i98_crit_edge, %if.then23
  %ptr.0.i93 = phi ptr [ %11, %if.then23 ], [ %add.ptr7.i, %cleanup.i99.do.body.i98_crit_edge ]
  %status.addr.0.i = phi i32 [ %status.0132, %if.then23 ], [ %34, %cleanup.i99.do.body.i98_crit_edge ]
  %remain.addr.0.i94 = phi i32 [ %13, %if.then23 ], [ %sub.i97, %cleanup.i99.do.body.i98_crit_edge ]
  %and.i95 = and i32 %status.addr.0.i, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.not.i96 = icmp eq i32 %and.i95, 0
  %cond.in.i = select i1 %tobool.not.i96, ptr %fifohalfsize.i, ptr %fifosize.i
  %31 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %32 = call i32 @llvm.umin.i32(i32 %remain.addr.0.i94, i32 %cond.i) #10
  %add.i = add i32 %32, 3
  %shr.i = lshr i32 %add.i, 2
  call void @__raw_writesl(ptr noundef %add.ptr.i92, ptr noundef %ptr.0.i93, i32 noundef %shr.i) #10
  %add.ptr7.i = getelementptr i8, ptr %ptr.0.i93, i32 %32
  %sub.i97 = sub i32 %remain.addr.0.i94, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i97)
  %cmp8.i = icmp eq i32 %sub.i97, 0
  br i1 %cmp8.i, label %do.body.i98.mmci_pio_write.exit_crit_edge, label %cleanup.i99

do.body.i98.mmci_pio_write.exit_crit_edge:        ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_pio_write.exit

cleanup.i99:                                      ; preds = %do.body.i98
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #10, !srcloc !221
  %34 = call i32 @llvm.bswap.i32(i32 %33) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %and13.i = and i32 %34, 16384
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %cleanup.i99.mmci_pio_write.exit_crit_edge, label %cleanup.i99.do.body.i98_crit_edge

cleanup.i99.do.body.i98_crit_edge:                ; preds = %cleanup.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i98

cleanup.i99.mmci_pio_write.exit_crit_edge:        ; preds = %cleanup.i99
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_pio_write.exit

mmci_pio_write.exit:                              ; preds = %cleanup.i99.mmci_pio_write.exit_crit_edge, %do.body.i98.mmci_pio_write.exit_crit_edge
  %sub.ptr.lhs.cast.i100 = ptrtoint ptr %add.ptr7.i to i32
  %sub.ptr.rhs.cast.i101 = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i102 = sub i32 %sub.ptr.lhs.cast.i100, %sub.ptr.rhs.cast.i101
  br label %if.end25

if.end25:                                         ; preds = %mmci_pio_write.exit, %if.end20.if.end25_crit_edge
  %len.1 = phi i32 [ %sub.ptr.sub.i102, %mmci_pio_write.exit ], [ %len.0, %if.end20.if.end25_crit_edge ]
  %35 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %len.1, ptr %consumed, align 4
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.i, align 4
  %sub = sub i32 %37, %len.1
  store i32 %sub, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %len.1)
  %tobool27.not = icmp eq i32 %13, %len.1
  br i1 %tobool27.not, label %cleanup, label %if.end25.do.end39_crit_edge

if.end25.do.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

cleanup:                                          ; preds = %if.end25
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  %and = and i32 %39, 2113536
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %cleanup.do.end39_crit_edge, label %cleanup.if.end12_crit_edge

cleanup.if.end12_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

cleanup.do.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

do.end39:                                         ; preds = %cleanup.do.end39_crit_edge, %if.end25.do.end39_crit_edge, %if.end12.do.end39_crit_edge, %do.end.do.end39_crit_edge
  %status.0.lcssa = phi i32 [ %5, %do.end.do.end39_crit_edge ], [ %39, %cleanup.do.end39_crit_edge ], [ %status.0132, %if.end12.do.end39_crit_edge ], [ %status.0132, %if.end25.do.end39_crit_edge ]
  call void @sg_miter_stop(ptr noundef %sg_miter1) #10
  %and40 = and i32 %status.0.lcssa, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.end39.if.end44_crit_edge, label %land.lhs.true

do.end39.if.end44_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.lhs.true:                                    ; preds = %do.end39
  %size42 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 35
  %40 = ptrtoint ptr %size42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size42, align 4
  %fifohalfsize = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 11
  %42 = ptrtoint ptr %fifohalfsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fifohalfsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp = icmp ult i32 %41, %43
  br i1 %cmp, label %if.then43, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then43:                                        ; preds = %land.lhs.true
  %44 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base3, align 4
  %46 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %variant2, align 4
  %singleirq.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 8
  %48 = ptrtoint ptr %singleirq.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %singleirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i104 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i104, label %if.then43.if.end.i_crit_edge, label %if.then.i

if.then43.if.end.i_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i105 = getelementptr i8, ptr %45, i32 60
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #10, !srcloc !221
  %50 = call i32 @llvm.bswap.i32(i32 %49) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %irq_pio_mask.i = getelementptr inbounds %struct.variant_data, ptr %47, i32 0, i32 24
  %51 = ptrtoint ptr %irq_pio_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq_pio_mask.i, align 4
  %neg.i = xor i32 %52, -1
  %and.i106 = and i32 %50, %neg.i
  %or.i = or i32 %and.i106, 2097152
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  call void @arm_heavy_mb() #10
  %53 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %53) #10, !srcloc !219
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then43.if.end.i_crit_edge
  %mmcimask1.i = getelementptr inbounds %struct.variant_data, ptr %47, i32 0, i32 23
  %54 = ptrtoint ptr %mmcimask1.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load5.i = load i8, ptr %mmcimask1.i, align 4
  %55 = and i8 %bf.load5.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool7.not.i = icmp eq i8 %55, 0
  br i1 %tobool7.not.i, label %if.end.i.mmci_set_mask1.exit_crit_edge, label %do.body9.i

if.end.i.mmci_set_mask1.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_set_mask1.exit

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  call void @arm_heavy_mb() #10
  %add.ptr12.i = getelementptr i8, ptr %45, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 8192) #10, !srcloc !219
  br label %mmci_set_mask1.exit

mmci_set_mask1.exit:                              ; preds = %do.body9.i, %if.end.i.mmci_set_mask1.exit_crit_edge
  %mask1_reg.i = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 20
  %56 = ptrtoint ptr %mask1_reg.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2097152, ptr %mask1_reg.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %mmci_set_mask1.exit, %land.lhs.true.if.end44_crit_edge, %do.end39.if.end44_crit_edge
  %size45 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 35
  %57 = ptrtoint ptr %size45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp46 = icmp eq i32 %58, 0
  br i1 %cmp46, label %if.then47, label %if.end44.if.end58_crit_edge

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then47:                                        ; preds = %if.end44
  %59 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base3, align 4
  %61 = ptrtoint ptr %variant2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %variant2, align 4
  %singleirq.i109 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 8
  %63 = ptrtoint ptr %singleirq.i109 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load.i110 = load i8, ptr %singleirq.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i110)
  %tobool.not.i111 = icmp sgt i8 %bf.load.i110, -1
  br i1 %tobool.not.i111, label %if.then47.if.end.i120_crit_edge, label %if.then.i116

if.then47.if.end.i120_crit_edge:                  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i120

if.then.i116:                                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i112 = getelementptr i8, ptr %60, i32 60
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112) #10, !srcloc !221
  %65 = call i32 @llvm.bswap.i32(i32 %64) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %irq_pio_mask.i113 = getelementptr inbounds %struct.variant_data, ptr %62, i32 0, i32 24
  %66 = ptrtoint ptr %irq_pio_mask.i113 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq_pio_mask.i113, align 4
  %neg.i114 = xor i32 %67, -1
  %and.i115 = and i32 %65, %neg.i114
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  call void @arm_heavy_mb() #10
  %68 = call i32 @llvm.bswap.i32(i32 %and.i115) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %68) #10, !srcloc !219
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.then.i116, %if.then47.if.end.i120_crit_edge
  %mmcimask1.i117 = getelementptr inbounds %struct.variant_data, ptr %62, i32 0, i32 23
  %69 = ptrtoint ptr %mmcimask1.i117 to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load5.i118 = load i8, ptr %mmcimask1.i117, align 4
  %70 = and i8 %bf.load5.i118, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool7.not.i119 = icmp eq i8 %70, 0
  br i1 %tobool7.not.i119, label %if.end.i120.mmci_set_mask1.exit124_crit_edge, label %do.body9.i122

if.end.i120.mmci_set_mask1.exit124_crit_edge:     ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_set_mask1.exit124

do.body9.i122:                                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  call void @arm_heavy_mb() #10
  %add.ptr12.i121 = getelementptr i8, ptr %60, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i121, i32 0) #10, !srcloc !219
  br label %mmci_set_mask1.exit124

mmci_set_mask1.exit124:                           ; preds = %do.body9.i122, %if.end.i120.mmci_set_mask1.exit124_crit_edge
  %mask1_reg.i123 = getelementptr inbounds %struct.mmci_host, ptr %dev_id, i32 0, i32 20
  %71 = ptrtoint ptr %mask1_reg.i123 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %mask1_reg.i123, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !260
  call void @arm_heavy_mb() #10
  %add.ptr53 = getelementptr i8, ptr %3, i32 60
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #10, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !261
  %73 = or i32 %72, 65536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %73) #10, !srcloc !219
  br label %if.end58

if.end58:                                         ; preds = %mmci_set_mask1.exit124, %if.end44.if.end58_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_post_request(ptr noundef %mmc, ptr nocapture noundef readonly %mrq, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.mmci_unprep_data.exit_crit_edge, label %land.lhs.true.i

if.end.mmci_unprep_data.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_unprep_data.exit

land.lhs.true.i:                                  ; preds = %if.end
  %unprep_data.i = getelementptr inbounds %struct.mmci_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %unprep_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unprep_data.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.mmci_unprep_data.exit_crit_edge, label %if.then.i

land.lhs.true.i.mmci_unprep_data.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_unprep_data.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %7(ptr noundef %private.i, ptr noundef nonnull %1, i32 noundef %err) #10
  br label %mmci_unprep_data.exit

mmci_unprep_data.exit:                            ; preds = %if.then.i, %land.lhs.true.i.mmci_unprep_data.exit_crit_edge, %if.end.mmci_unprep_data.exit_crit_edge
  %8 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %mmci_unprep_data.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_pre_request(ptr noundef %mmc, ptr nocapture noundef readonly %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %host_cookie = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %host_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %host_cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end.i_crit_edge, label %do.end, !prof !224

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1109, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end, %if.end.if.end.i_crit_edge
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blksz.i, align 4
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #10, !range !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %variant1.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %8 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant1.i, align 4
  %datactrl_any_blocksz.i = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %datactrl_any_blocksz.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %datactrl_any_blocksz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %mmci_validate_data.exit.thread42, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

mmci_validate_data.exit.thread42:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.46, i32 noundef %5) #13
  br label %cleanup

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end5.i.cleanup_crit_edge, label %land.lhs.true7.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true7.i:                                 ; preds = %if.end5.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %land.lhs.true7.i.lor.lhs.false.i_crit_edge, label %mmci_validate_data.exit

land.lhs.true7.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

mmci_validate_data.exit:                          ; preds = %land.lhs.true7.i
  %call13.i = tail call i32 %18(ptr noundef %private.i, ptr noundef nonnull %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool25.not = icmp eq i32 %call13.i, 0
  br i1 %tobool25.not, label %if.end27, label %mmci_validate_data.exit.cleanup_crit_edge

mmci_validate_data.exit.cleanup_crit_edge:        ; preds = %mmci_validate_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %mmci_validate_data.exit
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load ptr, ptr %ops.i, align 4
  %tobool.not.i36 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i36, label %if.end27.cleanup_crit_edge, label %if.end27.lor.lhs.false.i_crit_edge

if.end27.lor.lhs.false.i_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end27.lor.lhs.false.i_crit_edge, %land.lhs.true7.i.lor.lhs.false.i_crit_edge
  %20 = phi ptr [ %.pr, %if.end27.lor.lhs.false.i_crit_edge ], [ %16, %land.lhs.true7.i.lor.lhs.false.i_crit_edge ]
  %prep_data.i = getelementptr inbounds %struct.mmci_host_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prep_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prep_data.i, align 4
  %tobool2.not.i37 = icmp eq ptr %22, null
  br i1 %tobool2.not.i37, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i38

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i38:                                       ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %22(ptr noundef %private.i, ptr noundef nonnull %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end.i38.cleanup_crit_edge

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  %next_cookie.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 3
  %23 = ptrtoint ptr %next_cookie.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_cookie.i, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr %next_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp.i = icmp slt i32 %inc.i, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %inc.i
  %25 = ptrtoint ptr %host_cookie to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.i, ptr %host_cookie, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i38.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %mmci_validate_data.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %mmci_validate_data.exit.thread42, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_request(ptr noundef %mmc, ptr noundef %mrq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %mrq1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !224

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1700, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %variant1.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %4 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.mmci_validate_data.exit_crit_edge, label %if.end.i

if.end.mmci_validate_data.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_validate_data.exit

if.end.i:                                         ; preds = %if.end
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksz.i, align 4
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #10, !range !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %datactrl_any_blocksz.i = getelementptr inbounds %struct.variant_data, ptr %5, i32 0, i32 16
  %10 = ptrtoint ptr %datactrl_any_blocksz.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %datactrl_any_blocksz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %do.end.i, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.46, i32 noundef %7) #13
  br label %mmci_validate_data.exit

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %15 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i, align 4
  %tobool6.not.i = icmp eq ptr %16, null
  br i1 %tobool6.not.i, label %if.end5.i.mmci_validate_data.exit_crit_edge, label %land.lhs.true7.i

if.end5.i.mmci_validate_data.exit_crit_edge:      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_validate_data.exit

land.lhs.true7.i:                                 ; preds = %if.end5.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool9.not.i = icmp eq ptr %18, null
  br i1 %tobool9.not.i, label %land.lhs.true7.i.mmci_validate_data.exit_crit_edge, label %if.then10.i

land.lhs.true7.i.mmci_validate_data.exit_crit_edge: ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_validate_data.exit

if.then10.i:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #12
  %call13.i = tail call i32 %18(ptr noundef %private.i, ptr noundef nonnull %3) #10
  br label %mmci_validate_data.exit

mmci_validate_data.exit:                          ; preds = %if.then10.i, %land.lhs.true7.i.mmci_validate_data.exit_crit_edge, %if.end5.i.mmci_validate_data.exit_crit_edge, %do.end.i, %if.end.mmci_validate_data.exit_crit_edge
  %retval.0.i = phi i32 [ %call13.i, %if.then10.i ], [ -22, %do.end.i ], [ 0, %if.end.mmci_validate_data.exit_crit_edge ], [ 0, %land.lhs.true7.i.mmci_validate_data.exit_crit_edge ], [ 0, %if.end5.i.mmci_validate_data.exit_crit_edge ]
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %error, align 4
  %22 = load ptr, ptr %cmd, align 4
  %error22 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %do.body27, label %if.then24

if.then24:                                        ; preds = %mmci_validate_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #10
  br label %cleanup

do.body27:                                        ; preds = %mmci_validate_data.exit
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %25 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mrq, ptr %mrq1, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %do.body27.if.end51_crit_edge, label %if.then39

do.body27.if.end51_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then39:                                        ; preds = %do.body27
  %host_cookie.i = getelementptr inbounds %struct.mmc_data, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %host_cookie.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %host_cookie.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i84 = icmp eq i32 %29, 0
  br i1 %tobool.not.i84, label %if.then39.if.end.i87_crit_edge, label %land.rhs.i

if.then39.if.end.i87_crit_edge:                   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i87

land.rhs.i:                                       ; preds = %if.then39
  %next_cookie.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 3
  %30 = ptrtoint ptr %next_cookie.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %next_cookie.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not.i = icmp eq i32 %29, %31
  br i1 %cmp.not.i, label %land.rhs.i.if.end.i87_crit_edge, label %do.end.i85, !prof !224

land.rhs.i.if.end.i87_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i87

do.end.i85:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 534, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i87

if.end.i87:                                       ; preds = %do.end.i85, %land.rhs.i.if.end.i87_crit_edge, %if.then39.if.end.i87_crit_edge
  %ops.i86 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %32 = ptrtoint ptr %ops.i86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i86, align 4
  %tobool21.not.i = icmp eq ptr %33, null
  br i1 %tobool21.not.i, label %if.end.i87.if.end41_crit_edge, label %land.lhs.true.i88

if.end.i87.if.end41_crit_edge:                    ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true.i88:                                ; preds = %if.end.i87
  %get_next_data.i = getelementptr inbounds %struct.mmci_host_ops, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %get_next_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_next_data.i, align 4
  %tobool23.not.i = icmp eq ptr %35, null
  br i1 %tobool23.not.i, label %land.lhs.true.i88.if.end41_crit_edge, label %if.then24.i

land.lhs.true.i88.if.end41_crit_edge:             ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then24.i:                                      ; preds = %land.lhs.true.i88
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %35(ptr noundef %private.i, ptr noundef nonnull %27) #10
  br label %if.end41

if.end41:                                         ; preds = %if.then24.i, %land.lhs.true.i88.if.end41_crit_edge, %if.end.i87.if.end41_crit_edge
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load ptr, ptr %data, align 4
  %tobool43.not = icmp eq ptr %.pr, null
  br i1 %tobool43.not, label %if.end41.if.end51_crit_edge, label %land.lhs.true

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end41
  %37 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %variant1.i, align 4
  %datactrl_first = getelementptr inbounds %struct.variant_data, ptr %38, i32 0, i32 16
  %39 = ptrtoint ptr %datactrl_first to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load = load i8, ptr %datactrl_first, align 4
  %40 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool45.not = icmp eq i8 %40, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %land.lhs.true.if.then49_crit_edge

land.lhs.true.if.then49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags47 = getelementptr inbounds %struct.mmc_data, ptr %.pr, i32 0, i32 6
  %41 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags47, align 4
  %and = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %lor.lhs.false.if.end51_crit_edge, label %lor.lhs.false.if.then49_crit_edge

lor.lhs.false.if.then49_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then49

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %lor.lhs.false.if.then49_crit_edge, %land.lhs.true.if.then49_crit_edge
  tail call fastcc void @mmci_start_data(ptr noundef %private.i, ptr noundef nonnull %.pr)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %lor.lhs.false.if.end51_crit_edge, %if.end41.if.end51_crit_edge, %do.body27.if.end51_crit_edge
  %43 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mrq, align 4
  %tobool52.not = icmp eq ptr %44, null
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mmci_start_command(ptr noundef %private.i, ptr noundef nonnull %44)
  br label %if.end56

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmd, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %private.i, ptr noundef %46)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmci_set_ios(ptr noundef %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %variant1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  %plat = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 4
  %ios_handler = getelementptr inbounds %struct.mmci_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ios_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ios_handler, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 128
  %call4 = tail call i32 %5(ptr noundef %7, ptr noundef %ios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.52) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %10 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %power_mode, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb25
    i8 2, label %sw.bb34
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %13 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.if.end12_crit_edge, label %if.then8

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %14, i16 noundef zeroext 0) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %sw.bb.if.end12_crit_edge
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %15 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vqmmc, align 4
  %cmp.i254 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.end12.sw.epilog_crit_edge, label %land.lhs.true15

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true15:                                  ; preds = %if.end12
  %vqmmc_enabled = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 7
  %17 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %vqmmc_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool17.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool17.not, label %land.lhs.true15.sw.epilog_crit_edge, label %if.then18

land.lhs.true15.sw.epilog_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 @regulator_disable(ptr noundef %16) #10
  %18 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load23 = load i8, ptr %vqmmc_enabled, align 4
  %bf.clear = and i8 %bf.load23, 127
  store i8 %bf.clear, ptr %vqmmc_enabled, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  %supply26 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %19 = ptrtoint ptr %supply26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %supply26, align 16
  %cmp.i255 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i255, label %sw.bb25.if.end33_crit_edge, label %if.then29

sw.bb25.if.end33_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then29:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #12
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %21 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdd, align 4
  %call32 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %20, i16 noundef zeroext %22) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %sw.bb25.if.end33_crit_edge
  %pwrreg_powerup = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %pwrreg_powerup to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pwrreg_powerup, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  %vqmmc36 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %25 = ptrtoint ptr %vqmmc36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vqmmc36, align 4
  %cmp.i256 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i256, label %sw.bb34.sw.epilog_crit_edge, label %land.lhs.true38

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true38:                                  ; preds = %sw.bb34
  %vqmmc_enabled39 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 7
  %27 = ptrtoint ptr %vqmmc_enabled39 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load40 = load i8, ptr %vqmmc_enabled39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %tobool42.not = icmp sgt i8 %bf.load40, -1
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true38.sw.epilog_crit_edge

land.lhs.true38.sw.epilog_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then43:                                        ; preds = %land.lhs.true38
  %call46 = tail call i32 @regulator_enable(ptr noundef %26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp = icmp slt i32 %call46, 0
  br i1 %cmp, label %do.end51, label %if.else

do.end51:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.55) #13
  br label %sw.epilog

if.else:                                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %vqmmc_enabled39 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load54 = load i8, ptr %vqmmc_enabled39, align 4
  %bf.set56 = or i8 %bf.load54, -128
  store i8 %bf.set56, ptr %vqmmc_enabled39, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %do.end51, %land.lhs.true38.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %if.end33, %if.then18, %land.lhs.true15.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %pwr.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %24, %if.end33 ], [ 0, %if.end12.sw.epilog_crit_edge ], [ 0, %if.then18 ], [ 0, %land.lhs.true15.sw.epilog_crit_edge ], [ 3, %do.end51 ], [ 3, %if.else ], [ 3, %land.lhs.true38.sw.epilog_crit_edge ], [ 3, %sw.bb34.sw.epilog_crit_edge ]
  %signal_direction = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %signal_direction to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load60 = load i8, ptr %signal_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load60)
  %tobool63.not = icmp sgt i8 %bf.load60, -1
  br i1 %tobool63.not, label %sw.epilog.if.end84_crit_edge, label %land.lhs.true64

sw.epilog.if.end84_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

land.lhs.true64:                                  ; preds = %sw.epilog
  %32 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp67.not = icmp eq i8 %33, 0
  br i1 %cmp67.not, label %land.lhs.true64.if.end84_crit_edge, label %if.then69

land.lhs.true64.if.end84_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then69:                                        ; preds = %land.lhs.true64
  %pwr_reg_add = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %pwr_reg_add to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pwr_reg_add, align 4
  %or70 = or i32 %35, %pwr.0
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %36 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bus_width, align 1
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %37, label %if.then69.if.end84_crit_edge [
    i8 2, label %if.then74
    i8 0, label %if.then80
  ]

if.then69.if.end84_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %or70, -257
  br label %if.end84

if.then80:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %and81 = and i32 %or70, -293
  br label %if.end84

if.end84:                                         ; preds = %if.then80, %if.then74, %if.then69.if.end84_crit_edge, %land.lhs.true64.if.end84_crit_edge, %sw.epilog.if.end84_crit_edge
  %pwr.1 = phi i32 [ %and, %if.then74 ], [ %and81, %if.then80 ], [ %pwr.0, %land.lhs.true64.if.end84_crit_edge ], [ %pwr.0, %sw.epilog.if.end84_crit_edge ], [ %or70, %if.then69.if.end84_crit_edge ]
  %opendrain = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 26
  %39 = ptrtoint ptr %opendrain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %opendrain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool85.not = icmp eq i32 %40, 0
  %bus_mode95 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %41 = ptrtoint ptr %bus_mode95 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bus_mode95, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp97 = icmp eq i8 %42, 1
  br i1 %tobool85.not, label %if.else94, label %if.then86

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %or92 = select i1 %cmp97, i32 %40, i32 0
  %spec.select = or i32 %or92, %pwr.1
  br label %if.end105

if.else94:                                        ; preds = %if.end84
  br i1 %cmp97, label %if.then99, label %if.else101

if.then99:                                        ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  %pinctrl = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 3
  %43 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pinctrl, align 4
  %pins_opendrain = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4
  %45 = ptrtoint ptr %pins_opendrain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pins_opendrain, align 4
  %call100 = tail call i32 @pinctrl_select_state(ptr noundef %44, ptr noundef %46) #10
  br label %if.end105

if.else101:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmc, align 128
  %call103 = tail call i32 @pinctrl_select_default_state(ptr noundef %48) #10
  br label %if.end105

if.end105:                                        ; preds = %if.else101, %if.then99, %if.then86
  %pwr.2 = phi i32 [ %pwr.1, %if.then99 ], [ %pwr.1, %if.else101 ], [ %spec.select, %if.then86 ]
  %49 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool106.not = icmp eq i32 %50, 0
  br i1 %tobool106.not, label %land.lhs.true107, label %if.end105.if.end115_crit_edge

if.end105.if.end115_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end115

land.lhs.true107:                                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %signal_direction to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load108 = load i8, ptr %signal_direction, align 4
  %52 = and i8 %bf.load108, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool112.not = icmp eq i8 %52, 0
  %and114 = and i32 %pwr.2, -4
  %spec.select253 = select i1 %tobool112.not, i32 %pwr.2, i32 %and114
  br label %if.end115

if.end115:                                        ; preds = %land.lhs.true107, %if.end105.if.end115_crit_edge
  %pwr.3 = phi i32 [ %pwr.2, %if.end105.if.end115_crit_edge ], [ %spec.select253, %land.lhs.true107 ]
  %53 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %variant1, align 4
  %explicit_mclk_control = getelementptr inbounds %struct.variant_data, ptr %54, i32 0, i32 23
  %55 = ptrtoint ptr %explicit_mclk_control to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load117 = load i8, ptr %explicit_mclk_control, align 4
  %56 = and i8 %bf.load117, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool121.not = icmp eq i8 %56, 0
  br i1 %tobool121.not, label %if.end115.if.end141_crit_edge, label %land.lhs.true122

if.end115.if.end141_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

land.lhs.true122:                                 ; preds = %if.end115
  %clock_cache = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %57 = ptrtoint ptr %clock_cache to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %clock_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %58)
  %cmp124.not = icmp eq i32 %50, %58
  br i1 %cmp124.not, label %land.lhs.true122.if.end141_crit_edge, label %if.then126

land.lhs.true122.if.end141_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141

if.then126:                                       ; preds = %land.lhs.true122
  %clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk, align 4
  %call128 = tail call i32 @clk_set_rate(ptr noundef %60, i32 noundef %50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp129 = icmp slt i32 %call128, 0
  br i1 %cmp129, label %do.end134, label %if.else137

do.end134:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  %mmc135 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %61 = ptrtoint ptr %mmc135 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mmc135, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.58, i32 noundef %call128) #13
  br label %if.end141

if.else137:                                       ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %clk, align 4
  %call139 = tail call i32 @clk_get_rate(ptr noundef %66) #10
  %mclk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %67 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call139, ptr %mclk, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.else137, %do.end134, %land.lhs.true122.if.end141_crit_edge, %if.end115.if.end141_crit_edge
  %68 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ios, align 4
  %clock_cache143 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %clock_cache143 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %clock_cache143, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1
  %call149 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %ops = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops, align 4
  %tobool154.not = icmp eq ptr %72, null
  br i1 %tobool154.not, label %if.end141.if.else162_crit_edge, label %land.lhs.true155

if.end141.if.else162_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else162

land.lhs.true155:                                 ; preds = %if.end141
  %set_clkreg = getelementptr inbounds %struct.mmci_host_ops, ptr %72, i32 0, i32 10
  %73 = ptrtoint ptr %set_clkreg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %set_clkreg, align 4
  %tobool157.not = icmp eq ptr %74, null
  br i1 %tobool157.not, label %land.lhs.true155.if.else162_crit_edge, label %if.then158

land.lhs.true155.if.else162_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else162

if.then158:                                       ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ios, align 4
  tail call void %74(ptr noundef %private.i, i32 noundef %76) #10
  br label %if.end164

if.else162:                                       ; preds = %land.lhs.true155.if.else162_crit_edge, %if.end141.if.else162_crit_edge
  %77 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ios, align 4
  %79 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %variant1, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %cclk.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %83 = ptrtoint ptr %cclk.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %cclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i = icmp eq i32 %78, 0
  br i1 %tobool.not.i, label %if.else162.if.end47.i_crit_edge, label %if.then.i

if.else162.if.end47.i_crit_edge:                  ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.then.i:                                        ; preds = %if.else162
  %explicit_mclk_control.i = getelementptr inbounds %struct.variant_data, ptr %80, i32 0, i32 23
  %84 = ptrtoint ptr %explicit_mclk_control.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %explicit_mclk_control.i, align 4
  %85 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool2.not.i = icmp eq i8 %85, 0
  %mclk5.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %86 = ptrtoint ptr %mclk5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mclk5.i, align 4
  br i1 %tobool2.not.i, label %if.else.i, label %if.then.i.if.end44.i_crit_edge

if.then.i.if.end44.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %78)
  %cmp.not.i = icmp ugt i32 %87, %78
  %st_clkdiv15.i = getelementptr inbounds %struct.variant_data, ptr %80, i32 0, i32 16
  %88 = ptrtoint ptr %st_clkdiv15.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load16.i = load i8, ptr %st_clkdiv15.i, align 4
  %89 = and i8 %bf.load16.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool19.not.i = icmp eq i8 %89, 0
  br i1 %cmp.not.i, label %if.else14.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select.i = select i1 %tobool19.not.i, i32 1024, i32 9216
  br label %if.end44.i

if.else14.i:                                      ; preds = %if.else.i
  br i1 %tobool19.not.i, label %if.else30.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %78, -1
  %sub.i = add i32 %add.i, %87
  %div.i = udiv i32 %sub.i, %78
  %sub22.i = add i32 %div.i, -2
  %90 = tail call i32 @llvm.umin.i32(i32 %sub22.i, i32 255) #10
  %add27.i = add nuw nsw i32 %90, 2
  %div28.i = udiv i32 %87, %add27.i
  br label %if.end44.i

if.else30.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl i32 %78, 1
  %div32.i = udiv i32 %87, %mul.i
  %sub33.i = add i32 %div32.i, -1
  %91 = tail call i32 @llvm.umin.i32(i32 %sub33.i, i32 255) #10
  %add38.i = shl nuw nsw i32 %91, 1
  %mul39.i = add nuw nsw i32 %add38.i, 2
  %div40.i = udiv i32 %87, %mul39.i
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else30.i, %if.then20.i, %if.then6.i, %if.then.i.if.end44.i_crit_edge
  %.sink.i = phi i32 [ %87, %if.then6.i ], [ %div40.i, %if.else30.i ], [ %div28.i, %if.then20.i ], [ %87, %if.then.i.if.end44.i_crit_edge ]
  %clk.1.i = phi i32 [ %spec.select.i, %if.then6.i ], [ %91, %if.else30.i ], [ %90, %if.then20.i ], [ %82, %if.then.i.if.end44.i_crit_edge ]
  %92 = ptrtoint ptr %cclk.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %.sink.i, ptr %cclk.i, align 4
  %clkreg_enable.i = getelementptr inbounds %struct.variant_data, ptr %80, i32 0, i32 1
  %93 = ptrtoint ptr %clkreg_enable.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %clkreg_enable.i, align 4
  %or45.i = or i32 %clk.1.i, %94
  %or46.i = or i32 %or45.i, 256
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.end44.i, %if.else162.if.end47.i_crit_edge
  %clk.2.i = phi i32 [ %or46.i, %if.end44.i ], [ %82, %if.else162.if.end47.i_crit_edge ]
  %95 = ptrtoint ptr %cclk.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cclk.i, align 4
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %97 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmc.i, align 4
  %actual_clock.i = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 58
  %99 = ptrtoint ptr %actual_clock.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %96, ptr %actual_clock.i, align 8
  %100 = load ptr, ptr %mmc.i, align 4
  %bus_width.i = getelementptr inbounds %struct.mmc_host, ptr %100, i32 0, i32 28, i32 6
  %101 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bus_width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %102)
  %cmp50.i = icmp eq i8 %102, 2
  %or53.i = or i32 %clk.2.i, 2048
  %spec.select118.i = select i1 %cmp50.i, i32 %or53.i, i32 %clk.2.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %102)
  %cmp59.i = icmp eq i8 %102, 3
  br i1 %cmp59.i, label %if.then61.i, label %if.end47.i.if.end63.i_crit_edge

if.end47.i.if.end63.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %clkreg_8bit_bus_enable.i = getelementptr inbounds %struct.variant_data, ptr %80, i32 0, i32 2
  %103 = ptrtoint ptr %clkreg_8bit_bus_enable.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %clkreg_8bit_bus_enable.i, align 4
  %or62.i = or i32 %104, %spec.select118.i
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end47.i.if.end63.i_crit_edge
  %clk.4.i = phi i32 [ %or62.i, %if.then61.i ], [ %spec.select118.i, %if.end47.i.if.end63.i_crit_edge ]
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %100, i32 0, i32 28, i32 7
  %105 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %timing.i, align 4
  %.off.i = add i8 %106, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then75.i, label %if.end63.i.if.end77.i_crit_edge

if.end63.i.if.end77.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77.i

if.then75.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  %clkreg_neg_edge_enable.i = getelementptr inbounds %struct.variant_data, ptr %80, i32 0, i32 3
  %107 = ptrtoint ptr %clkreg_neg_edge_enable.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %clkreg_neg_edge_enable.i, align 4
  %or76.i = or i32 %108, %clk.4.i
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then75.i, %if.end63.i.if.end77.i_crit_edge
  %clk.5.i = phi i32 [ %or76.i, %if.then75.i ], [ %clk.4.i, %if.end63.i.if.end77.i_crit_edge ]
  %clk_reg.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 2
  %109 = ptrtoint ptr %clk_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %clk_reg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %clk.5.i)
  %cmp.not.i.i = icmp eq i32 %110, %clk.5.i
  br i1 %cmp.not.i.i, label %if.end77.i.if.end164_crit_edge, label %if.then.i.i

if.end77.i.if.end164_crit_edge:                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then.i.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #12
  %111 = ptrtoint ptr %clk_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %clk.5.i, ptr %clk_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %112 = tail call i32 @llvm.bswap.i32(i32 %clk.5.i) #10
  %base.i.i = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %113 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %114, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %112) #10, !srcloc !219
  br label %if.end164

if.end164:                                        ; preds = %if.then.i.i, %if.end77.i.if.end164_crit_edge, %if.then158
  %115 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %variant1, align 4
  %busy_detect.i = getelementptr inbounds %struct.variant_data, ptr %116, i32 0, i32 19
  %117 = ptrtoint ptr %busy_detect.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load.i257 = load i8, ptr %busy_detect.i, align 4
  %118 = and i8 %bf.load.i257, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i258 = icmp eq i8 %118, 0
  br i1 %tobool.not.i258, label %if.end164.mmci_set_max_busy_timeout.exit_crit_edge, label %if.end.i

if.end164.mmci_set_max_busy_timeout.exit_crit_edge: ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_set_max_busy_timeout.exit

if.end.i:                                         ; preds = %if.end164
  %119 = and i8 %bf.load.i257, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool5.not.i = icmp eq i8 %119, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %actual_clock.i259 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 58
  %120 = ptrtoint ptr %actual_clock.i259 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %actual_clock.i259, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool6.not.i = icmp eq i32 %121, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %div.i260 = udiv i32 %121, 1000
  %div9.i = udiv i32 -1, %div.i260
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %max_busy_timeout.0.i = phi i32 [ %div9.i, %if.then7.i ], [ 0, %land.lhs.true.i.if.end10.i_crit_edge ], [ 0, %if.end.i.if.end10.i_crit_edge ]
  %max_busy_timeout11.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 26
  %122 = ptrtoint ptr %max_busy_timeout11.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %max_busy_timeout.0.i, ptr %max_busy_timeout11.i, align 4
  br label %mmci_set_max_busy_timeout.exit

mmci_set_max_busy_timeout.exit:                   ; preds = %if.end10.i, %if.end164.mmci_set_max_busy_timeout.exit_crit_edge
  %123 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ops, align 4
  %tobool166.not = icmp eq ptr %124, null
  br i1 %tobool166.not, label %mmci_set_max_busy_timeout.exit.if.else173_crit_edge, label %land.lhs.true167

mmci_set_max_busy_timeout.exit.if.else173_crit_edge: ; preds = %mmci_set_max_busy_timeout.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else173

land.lhs.true167:                                 ; preds = %mmci_set_max_busy_timeout.exit
  %set_pwrreg = getelementptr inbounds %struct.mmci_host_ops, ptr %124, i32 0, i32 11
  %125 = ptrtoint ptr %set_pwrreg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %set_pwrreg, align 4
  %tobool169.not = icmp eq ptr %126, null
  br i1 %tobool169.not, label %land.lhs.true167.if.else173_crit_edge, label %if.then170

land.lhs.true167.if.else173_crit_edge:            ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else173

if.then170:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %126(ptr noundef %private.i, i32 noundef %pwr.3) #10
  br label %if.end174

if.else173:                                       ; preds = %land.lhs.true167.if.else173_crit_edge, %mmci_set_max_busy_timeout.exit.if.else173_crit_edge
  %pwr_reg.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 8
  %127 = ptrtoint ptr %pwr_reg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pwr_reg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %pwr.3)
  %cmp.not.i261 = icmp eq i32 %128, %pwr.3
  br i1 %cmp.not.i261, label %if.else173.if.end174_crit_edge, label %if.then.i262

if.else173.if.end174_crit_edge:                   ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end174

if.then.i262:                                     ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %pwr_reg.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %pwr.3, ptr %pwr_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  tail call void @arm_heavy_mb() #10
  %130 = tail call i32 @llvm.bswap.i32(i32 %pwr.3) #10
  %base.i = getelementptr inbounds %struct.mmci_host, ptr %private.i, i32 0, i32 1
  %131 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #10, !srcloc !219
  br label %if.end174

if.end174:                                        ; preds = %if.then.i262, %if.else173.if.end174_crit_edge, %if.then170
  %cclk.i264 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 3
  %133 = ptrtoint ptr %cclk.i264 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cclk.i264, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %134)
  %cmp.i265 = icmp ult i32 %134, 25000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %..i = select i1 %cmp.i265, i32 6442440, i32 214748
  tail call void %135(i32 noundef %..i) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call149) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_get_cd(ptr noundef %mmc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %plat1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %plat1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat1, align 4
  %call2 = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call2)
  %cmp = icmp eq i32 %call2, -38
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %status3 = getelementptr inbounds %struct.mmci_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %status3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status3, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %mmc6 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc6, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %call7 = tail call i32 %3(ptr noundef %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ %call7, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmci_sig_volt_switch(ptr noundef %mmc, ptr noundef %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %call1 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true3

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

land.lhs.true3:                                   ; preds = %land.lhs.true
  %post_sig_volt_switch = getelementptr inbounds %struct.mmci_host_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %post_sig_volt_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %post_sig_volt_switch, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %land.lhs.true3.if.end13_crit_edge, label %if.end11

land.lhs.true3.if.end13_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.end11:                                         ; preds = %land.lhs.true3
  %call8 = tail call i32 %3(ptr noundef %private.i, ptr noundef %ios) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end11.if.end13_crit_edge

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.60) #13
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end11.if.end13_crit_edge, %land.lhs.true3.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ret.026 = phi i32 [ %call8, %do.end ], [ %call8, %if.end11.if.end13_crit_edge ], [ 0, %land.lhs.true3.if.end13_crit_edge ], [ 0, %land.lhs.true.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  ret i32 %ret.026
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmci_start_data(ptr noundef %host, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %datactrl.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_start_data.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_start_data, %if.then)) #10
          to label %if.end198 [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_start_data.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %7, i32 noundef %9, i32 noundef %11) #10
  br label %if.end198

if.end198:                                        ; preds = %if.then, %entry
  %data4 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %12 = ptrtoint ptr %data4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %data, ptr %data4, align 4
  %blksz5 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %blksz5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %blksz5, align 4
  %blocks6 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %blocks6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocks6, align 4
  %mul = mul i32 %16, %14
  %size = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 35
  %17 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul, ptr %size, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %18 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bytes_xfered, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %conv = zext i32 %20 to i64
  %cclk = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 13
  %21 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cclk, align 4
  %conv7 = zext i32 %22 to i64
  %mul8 = mul nuw i64 %conv7, %conv
  %23 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul8, i32 0) #14, !srcloc !262
  %asmresult.i = extractvalue { i64, i32 } %23, 0
  %asmresult4.i = extractvalue { i64, i32 } %23, 1
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul8, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !263
  %asmresult10.i = extractvalue { i64, i32 } %24, 0
  %extract425 = lshr i64 %asmresult10.i, 29
  %extract.t426 = trunc i64 %extract425 to i32
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout_clks, align 4
  %add201 = add i32 %26, %extract.t426
  %base202 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %27 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base202, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !264
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %add201)
  %add.ptr = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %29) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !265
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %add.ptr210 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr210, i32 %32) #10, !srcloc !219
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %get_datactrl_cfg = getelementptr inbounds %struct.mmci_host_ops, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %get_datactrl_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %get_datactrl_cfg, align 4
  %call211 = tail call i32 %36(ptr noundef %host) #10
  %37 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data4, align 4
  %flags213 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %flags213 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags213, align 4
  %and214 = lshr i32 %40, 8
  %41 = and i32 %and214, 2
  %or217 = or i32 %41, %call211
  %mmc218 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %42 = ptrtoint ptr %mmc218 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmc218, align 4
  %card = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 37
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card, align 4
  %tobool219.not = icmp eq ptr %45, null
  br i1 %tobool219.not, label %if.end198.if.end251_crit_edge, label %land.lhs.true220

if.end198.if.end251_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

land.lhs.true220:                                 ; preds = %if.end198
  %type = getelementptr inbounds %struct.mmc_card, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp223 = icmp eq i32 %47, 2
  br i1 %cmp223, label %if.then225, label %land.lhs.true220.if.end251_crit_edge

land.lhs.true220.if.end251_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.then225:                                       ; preds = %land.lhs.true220
  %datactrl_mask_sdio = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 14
  %48 = ptrtoint ptr %datactrl_mask_sdio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %datactrl_mask_sdio, align 4
  %or226 = or i32 %49, %or217
  %st_sdio = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 16
  %50 = ptrtoint ptr %st_sdio to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %st_sdio, align 4
  %51 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool228.not = icmp eq i8 %51, 0
  br i1 %tobool228.not, label %if.then225.if.else246_crit_edge, label %land.lhs.true229

if.then225.if.else246_crit_edge:                  ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else246

land.lhs.true229:                                 ; preds = %if.then225
  %flags230 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %52 = ptrtoint ptr %flags230 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags230, align 4
  %and231 = and i32 %53, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %land.lhs.true229.if.else246_crit_edge, label %land.lhs.true233

land.lhs.true229.if.else246_crit_edge:            ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else246

land.lhs.true233:                                 ; preds = %land.lhs.true229
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp235 = icmp ult i32 %55, 8
  br i1 %cmp235, label %land.lhs.true233.if.then243_crit_edge, label %lor.lhs.false

land.lhs.true233.if.then243_crit_edge:            ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then243

lor.lhs.false:                                    ; preds = %land.lhs.true233
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp238 = icmp eq i32 %55, 8
  br i1 %cmp238, label %land.lhs.true240, label %lor.lhs.false.if.else246_crit_edge

lor.lhs.false.if.else246_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else246

land.lhs.true240:                                 ; preds = %lor.lhs.false
  %mclk = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 11
  %56 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %57)
  %cmp241 = icmp ugt i32 %57, 50000000
  br i1 %cmp241, label %land.lhs.true240.if.then243_crit_edge, label %land.lhs.true240.if.else246_crit_edge

land.lhs.true240.if.else246_crit_edge:            ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else246

land.lhs.true240.if.then243_crit_edge:            ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then243

if.then243:                                       ; preds = %land.lhs.true240.if.then243_crit_edge, %land.lhs.true233.if.then243_crit_edge
  %clk_reg = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 16
  %58 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %clk_reg, align 4
  %clkreg_enable = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %clkreg_enable to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %clkreg_enable, align 4
  %neg244 = xor i32 %61, -1
  %and245 = and i32 %59, %neg244
  br label %if.end250

if.else246:                                       ; preds = %land.lhs.true240.if.else246_crit_edge, %lor.lhs.false.if.else246_crit_edge, %land.lhs.true229.if.else246_crit_edge, %if.then225.if.else246_crit_edge
  %clk_reg247 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 16
  %62 = ptrtoint ptr %clk_reg247 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %clk_reg247, align 4
  %clkreg_enable248 = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %clkreg_enable248 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clkreg_enable248, align 4
  %or249 = or i32 %65, %63
  br label %if.end250

if.end250:                                        ; preds = %if.else246, %if.then243
  %clk.0 = phi i32 [ %and245, %if.then243 ], [ %or249, %if.else246 ]
  %clk_reg.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 16
  %66 = ptrtoint ptr %clk_reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %clk_reg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %clk.0)
  %cmp.not.i = icmp eq i32 %67, %clk.0
  br i1 %cmp.not.i, label %if.end250.if.end251_crit_edge, label %if.then.i

if.end250.if.end251_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end251

if.then.i:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %clk_reg.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %clk.0, ptr %clk_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %clk.0) #10
  %70 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base202, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %69) #10, !srcloc !219
  br label %if.end251

if.end251:                                        ; preds = %if.then.i, %if.end250.if.end251_crit_edge, %land.lhs.true220.if.end251_crit_edge, %if.end198.if.end251_crit_edge
  %datactrl.0 = phi i32 [ %or217, %land.lhs.true220.if.end251_crit_edge ], [ %or217, %if.end198.if.end251_crit_edge ], [ %or226, %if.end250.if.end251_crit_edge ], [ %or226, %if.then.i ]
  %72 = ptrtoint ptr %mmc218 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmc218, align 4
  %timing = getelementptr inbounds %struct.mmc_host, ptr %73, i32 0, i32 28, i32 7
  %74 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %timing, align 4
  %.off = add i8 %75, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then263, label %if.end251.if.end265_crit_edge

if.end251.if.end265_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

if.then263:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #12
  %datactrl_mask_ddrmode = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 13
  %76 = ptrtoint ptr %datactrl_mask_ddrmode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %datactrl_mask_ddrmode, align 4
  %or264 = or i32 %77, %datactrl.0
  br label %if.end265

if.end265:                                        ; preds = %if.then263, %if.end251.if.end265_crit_edge
  %datactrl.1 = phi i32 [ %or264, %if.then263 ], [ %datactrl.0, %if.end251.if.end265_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datactrl.addr.i)
  %78 = ptrtoint ptr %datactrl.addr.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %datactrl.1, ptr %datactrl.addr.i, align 4
  %use_dma.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %79 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end265.if.end269_crit_edge, label %if.end.i

if.end265.if.end269_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.end.i:                                         ; preds = %if.end265
  %80 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data4, align 4
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end269_crit_edge, label %lor.lhs.false.i.i

if.end.i.if.end269_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %prep_data.i.i = getelementptr inbounds %struct.mmci_host_ops, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prep_data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prep_data.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %85, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.end4.i_crit_edge, label %mmci_prep_data.exit.i

lor.lhs.false.i.i.if.end4.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

mmci_prep_data.exit.i:                            ; preds = %lor.lhs.false.i.i
  %call.i.i = tail call i32 %85(ptr noundef %host, ptr noundef %81, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %mmci_prep_data.exit.i.if.end4.i_crit_edge, label %mmci_prep_data.exit.i.if.end269_crit_edge

mmci_prep_data.exit.i.if.end269_crit_edge:        ; preds = %mmci_prep_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

mmci_prep_data.exit.i.if.end4.i_crit_edge:        ; preds = %mmci_prep_data.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %mmci_prep_data.exit.i.if.end4.i_crit_edge, %lor.lhs.false.i.i.if.end4.i_crit_edge
  %86 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr.i = load ptr, ptr %ops, align 4
  %tobool5.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool5.not.i, label %if.end4.i.if.end269_crit_edge, label %lor.lhs.false.i

if.end4.i.if.end269_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %dma_start.i = getelementptr inbounds %struct.mmci_host_ops, ptr %.pr.i, i32 0, i32 7
  %87 = ptrtoint ptr %dma_start.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_start.i, align 4
  %tobool7.not.i = icmp eq ptr %88, null
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.end269_crit_edge, label %if.end9.i

lor.lhs.false.i.if.end269_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.end9.i:                                        ; preds = %lor.lhs.false.i
  %call12.i = call i32 %88(ptr noundef %host, ptr noundef nonnull %datactrl.addr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end9.i.if.end269_crit_edge

if.end9.i.if.end269_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.end15.i:                                       ; preds = %if.end9.i
  %89 = ptrtoint ptr %datactrl.addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %datactrl.addr.i, align 4
  %datactrl_reg.i.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 18
  %91 = ptrtoint ptr %datactrl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %datactrl_reg.i.i, align 4
  %93 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %variant1, align 4
  %busy_dpsm_flag.i.i = getelementptr inbounds %struct.variant_data, ptr %94, i32 0, i32 20
  %95 = ptrtoint ptr %busy_dpsm_flag.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %busy_dpsm_flag.i.i, align 4
  %and.i.i = and i32 %96, %92
  %or.i.i = or i32 %and.i.i, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %92, %or.i.i
  br i1 %cmp.not.i.i, label %if.end15.i.mmci_dma_start.exit_crit_edge, label %if.then.i.i

if.end15.i.mmci_dma_start.exit_crit_edge:         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_start.exit

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %datactrl_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i.i, ptr %datactrl_reg.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  call void @arm_heavy_mb() #10
  %98 = call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %99 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base202, align 4
  %add.ptr.i.i = getelementptr i8, ptr %100, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %98) #10, !srcloc !219
  br label %mmci_dma_start.exit

mmci_dma_start.exit:                              ; preds = %if.then.i.i, %if.end15.i.mmci_dma_start.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !266
  call void @arm_heavy_mb() #10
  %101 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base202, align 4
  %add.ptr.i428 = getelementptr i8, ptr %102, i32 60
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428) #10, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !267
  %104 = or i32 %103, 65536
  %105 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base202, align 4
  %add.ptr19.i = getelementptr i8, ptr %106, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %104) #10, !srcloc !219
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datactrl.addr.i)
  br label %cleanup

if.end269:                                        ; preds = %if.end9.i.if.end269_crit_edge, %lor.lhs.false.i.if.end269_crit_edge, %if.end4.i.if.end269_crit_edge, %mmci_prep_data.exit.i.if.end269_crit_edge, %if.end.i.if.end269_crit_edge, %if.end265.if.end269_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datactrl.addr.i)
  %flags1.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %107 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %108, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i430 = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i430, i32 5, i32 3
  %sg_miter.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 34
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %109 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 10
  %111 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %sg_len.i, align 4
  call void @sg_miter_start(ptr noundef %sg_miter.i, ptr noundef %110, i32 noundef %112, i32 noundef %..i) #10
  %113 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %flags1.i, align 4
  %and271 = and i32 %114, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and271)
  %tobool272.not = icmp eq i32 %and271, 0
  br i1 %tobool272.not, label %if.end269.if.end281_crit_edge, label %if.then273

if.end269.if.end281_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

if.then273:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  %115 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %size, align 4
  %fifohalfsize = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 11
  %117 = ptrtoint ptr %fifohalfsize to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %fifohalfsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp275 = icmp ult i32 %116, %118
  %spec.select = select i1 %cmp275, i32 2129920, i32 32768
  br label %if.end281

if.end281:                                        ; preds = %if.then273, %if.end269.if.end281_crit_edge
  %irqmask.0 = phi i32 [ %spec.select, %if.then273 ], [ 16384, %if.end269.if.end281_crit_edge ]
  %datactrl_reg.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 18
  %119 = ptrtoint ptr %datactrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %datactrl_reg.i, align 4
  %121 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %variant1, align 4
  %busy_dpsm_flag.i = getelementptr inbounds %struct.variant_data, ptr %122, i32 0, i32 20
  %123 = ptrtoint ptr %busy_dpsm_flag.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %busy_dpsm_flag.i, align 4
  %and.i431 = and i32 %124, %120
  %or.i = or i32 %and.i431, %datactrl.1
  call void @__sanitizer_cov_trace_cmp4(i32 %120, i32 %or.i)
  %cmp.not.i432 = icmp eq i32 %120, %or.i
  br i1 %cmp.not.i432, label %if.end281.mmci_write_datactrlreg.exit_crit_edge, label %if.then.i435

if.end281.mmci_write_datactrlreg.exit_crit_edge:  ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_write_datactrlreg.exit

if.then.i435:                                     ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %datactrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or.i, ptr %datactrl_reg.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  call void @arm_heavy_mb() #10
  %126 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  %127 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base202, align 4
  %add.ptr.i434 = getelementptr i8, ptr %128, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i434, i32 %126) #10, !srcloc !219
  br label %mmci_write_datactrlreg.exit

mmci_write_datactrlreg.exit:                      ; preds = %if.then.i435, %if.end281.mmci_write_datactrlreg.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !268
  call void @arm_heavy_mb() #10
  %add.ptr285 = getelementptr i8, ptr %28, i32 60
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr285) #10, !srcloc !221
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !269
  %130 = and i32 %129, -65537
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr285, i32 %130) #10, !srcloc !219
  %131 = ptrtoint ptr %base202 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base202, align 4
  %133 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %variant1, align 4
  %singleirq.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 8
  %135 = ptrtoint ptr %singleirq.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load.i437 = load i8, ptr %singleirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i437)
  %tobool.not.i438 = icmp sgt i8 %bf.load.i437, -1
  br i1 %tobool.not.i438, label %mmci_write_datactrlreg.exit.if.end.i444_crit_edge, label %if.then.i442

mmci_write_datactrlreg.exit.if.end.i444_crit_edge: ; preds = %mmci_write_datactrlreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i444

if.then.i442:                                     ; preds = %mmci_write_datactrlreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i439 = getelementptr i8, ptr %132, i32 60
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i439) #10, !srcloc !221
  %137 = call i32 @llvm.bswap.i32(i32 %136) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %irq_pio_mask.i = getelementptr inbounds %struct.variant_data, ptr %134, i32 0, i32 24
  %138 = ptrtoint ptr %irq_pio_mask.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %irq_pio_mask.i, align 4
  %neg.i = xor i32 %139, -1
  %and.i440 = and i32 %137, %neg.i
  %or.i441 = or i32 %and.i440, %irqmask.0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  call void @arm_heavy_mb() #10
  %140 = call i32 @llvm.bswap.i32(i32 %or.i441) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i439, i32 %140) #10, !srcloc !219
  br label %if.end.i444

if.end.i444:                                      ; preds = %if.then.i442, %mmci_write_datactrlreg.exit.if.end.i444_crit_edge
  %mmcimask1.i = getelementptr inbounds %struct.variant_data, ptr %134, i32 0, i32 23
  %141 = ptrtoint ptr %mmcimask1.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %bf.load5.i = load i8, ptr %mmcimask1.i, align 4
  %142 = and i8 %bf.load5.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool7.not.i443 = icmp eq i8 %142, 0
  br i1 %tobool7.not.i443, label %if.end.i444.mmci_set_mask1.exit_crit_edge, label %do.body9.i

if.end.i444.mmci_set_mask1.exit_crit_edge:        ; preds = %if.end.i444
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_set_mask1.exit

do.body9.i:                                       ; preds = %if.end.i444
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  call void @arm_heavy_mb() #10
  %143 = call i32 @llvm.bswap.i32(i32 %irqmask.0) #10
  %add.ptr12.i = getelementptr i8, ptr %132, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %143) #10, !srcloc !219
  br label %mmci_set_mask1.exit

mmci_set_mask1.exit:                              ; preds = %do.body9.i, %if.end.i444.mmci_set_mask1.exit_crit_edge
  %mask1_reg.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 20
  %144 = ptrtoint ptr %mask1_reg.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %irqmask.0, ptr %mask1_reg.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %mmci_set_mask1.exit, %mmci_dma_start.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmci_start_command(ptr noundef %host, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_start_command.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_start_command, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_start_command.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.51, i32 noundef %7, i32 noundef %9, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !270
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %cmdreg_cpsm_enable = getelementptr inbounds %struct.variant_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %cmdreg_cpsm_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmdreg_cpsm_enable, align 4
  %and = and i32 %17, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.end.if.end13_crit_edge, label %do.body9

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !271
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #10, !srcloc !219
  %cclk.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 13
  %18 = ptrtoint ptr %cclk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %19)
  %cmp.i = icmp ult i32 %19, 25000000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %..i = select i1 %cmp.i, i32 6442440, i32 214748
  tail call void %20(i32 noundef %..i) #10
  br label %if.end13

if.end13:                                         ; preds = %do.body9, %do.end.if.end13_crit_edge
  %21 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %variant, align 4
  %cmdreg_stop = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %cmdreg_stop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmdreg_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool15.not = icmp eq i32 %24, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %26)
  %cmp = icmp eq i32 %26, 12
  %spec.select = select i1 %cmp, i32 %24, i32 0
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true, %if.end13.if.end20_crit_edge
  %c.addr.0 = phi i32 [ 0, %if.end13.if.end20_crit_edge ], [ %spec.select, %land.lhs.true ]
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd, align 4
  %cmdreg_cpsm_enable23 = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 4
  %29 = ptrtoint ptr %cmdreg_cpsm_enable23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cmdreg_cpsm_enable23, align 4
  %or24 = or i32 %28, %c.addr.0
  %or25 = or i32 %or24, %30
  %flags26 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %31 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags26, align 4
  %and27 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end20.if.end47_crit_edge, label %if.then29

if.end20.if.end47_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then29:                                        ; preds = %if.end20
  %and31 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %cmdreg_lrsp_crc = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 5
  br label %if.end47.sink.split

if.else:                                          ; preds = %if.then29
  %and37 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else42, label %if.then39

if.then39:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cmdreg_srsp_crc = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 6
  br label %if.end47.sink.split

if.else42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %cmdreg_srsp = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 7
  br label %if.end47.sink.split

if.end47.sink.split:                              ; preds = %if.else42, %if.then39, %if.then33
  %cmdreg_lrsp_crc.sink = phi ptr [ %cmdreg_lrsp_crc, %if.then33 ], [ %cmdreg_srsp, %if.else42 ], [ %cmdreg_srsp_crc, %if.then39 ]
  %33 = ptrtoint ptr %cmdreg_lrsp_crc.sink to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmdreg_lrsp_crc.sink, align 4
  %or35 = or i32 %34, %or25
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.end20.if.end47_crit_edge
  %c.addr.1 = phi i32 [ %or25, %if.end20.if.end47_crit_edge ], [ %or35, %if.end47.sink.split ]
  %busy_timeout = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 19
  %35 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %busy_timeout, align 4
  %36 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool49.not = icmp eq i8 %36, 0
  %and52 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %or.cond = select i1 %tobool49.not, i1 true, i1 %tobool53.not
  br i1 %or.cond, label %if.end47.if.end275_crit_edge, label %if.then54

if.end47.if.end275_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end275

if.then54:                                        ; preds = %if.end47
  %busy_timeout55 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 6
  %37 = ptrtoint ptr %busy_timeout55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %busy_timeout55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool56.not = icmp eq i32 %38, 0
  br i1 %tobool56.not, label %if.then57, label %if.then54.if.end59_crit_edge

if.then54.if.end59_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %busy_timeout55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 10000, ptr %busy_timeout55, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then54.if.end59_crit_edge
  %40 = ptrtoint ptr %busy_timeout55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %busy_timeout55, align 4
  %mmc61 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %42 = ptrtoint ptr %mmc61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmc61, align 4
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 26
  %44 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_busy_timeout, align 4
  %46 = call i32 @llvm.umin.i32(i32 %41, i32 %45)
  %conv67 = zext i32 %46 to i64
  %cclk = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 13
  %47 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cclk, align 4
  %conv68 = zext i32 %48 to i64
  %mul = mul nuw i64 %conv68, %conv67
  %49 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i32 0) #14, !srcloc !262
  %asmresult.i = extractvalue { i64, i32 } %49, 0
  %asmresult4.i = extractvalue { i64, i32 } %49, 1
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul, i64 %asmresult.i, i32 %asmresult4.i) #14, !srcloc !263
  %asmresult10.i = extractvalue { i64, i32 } %50, 0
  %extract2 = lshr i64 %asmresult10.i, 9
  %extract.t3 = trunc i64 %extract2 to i32
  %51 = tail call i32 @llvm.bswap.i32(i32 %extract.t3)
  %52 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base1, align 4
  %add.ptr274 = getelementptr i8, ptr %53, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr274, i32 %51) #10, !srcloc !219
  br label %if.end275

if.end275:                                        ; preds = %if.end59, %if.end47.if.end275_crit_edge
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %54 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops, align 4
  %pre_sig_volt_switch = getelementptr inbounds %struct.mmci_host_ops, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %pre_sig_volt_switch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pre_sig_volt_switch, align 4
  %tobool276.not = icmp eq ptr %57, null
  br i1 %tobool276.not, label %if.end275.if.end284_crit_edge, label %land.lhs.true277

if.end275.if.end284_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end284

land.lhs.true277:                                 ; preds = %if.end275
  %58 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %59)
  %cmp279 = icmp eq i32 %59, 11
  br i1 %cmp279, label %if.then281, label %land.lhs.true277.if.end284_crit_edge

land.lhs.true277.if.end284_crit_edge:             ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end284

if.then281:                                       ; preds = %land.lhs.true277
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %57(ptr noundef %host) #10
  br label %if.end284

if.end284:                                        ; preds = %if.then281, %land.lhs.true277.if.end284_crit_edge, %if.end275.if.end284_crit_edge
  %60 = ptrtoint ptr %flags26 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags26, align 4
  %and286 = and i32 %61, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and286)
  %cmp287 = icmp eq i32 %and286, 32
  br i1 %cmp287, label %if.then289, label %if.end284.if.end292_crit_edge

if.end284.if.end292_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end292

if.then289:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %variant, align 4
  %data_cmd_enable = getelementptr inbounds %struct.variant_data, ptr %63, i32 0, i32 12
  %64 = ptrtoint ptr %data_cmd_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_cmd_enable, align 4
  %or291 = or i32 %65, %c.addr.1
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %if.end284.if.end292_crit_edge
  %c.addr.2 = phi i32 [ %or291, %if.then289 ], [ %c.addr.1, %if.end284.if.end292_crit_edge ]
  %cmd293 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 3
  %66 = ptrtoint ptr %cmd293 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cmd, ptr %cmd293, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !272
  tail call void @arm_heavy_mb() #10
  %arg297 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %67 = ptrtoint ptr %arg297 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arg297, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  %add.ptr298 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr298, i32 %69) #10, !srcloc !219
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !273
  tail call void @arm_heavy_mb() #10
  %70 = tail call i32 @llvm.bswap.i32(i32 %c.addr.2)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %70) #10, !srcloc !219
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmci_data_irq(ptr noundef %host, ptr noundef %data, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %start_err = getelementptr inbounds %struct.variant_data, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %start_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_err, align 4
  %or3 = or i32 %3, 58
  %and = and i32 %or3, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end57_crit_edge, label %if.then5

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then5:                                         ; preds = %if.end
  %use_dma.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %4 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then5.mmci_dma_error.exit_crit_edge, label %if.end.i

if.then5.mmci_dma_error.exit_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

if.end.i:                                         ; preds = %if.then5
  %ops.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %if.end.i.mmci_dma_error.exit_crit_edge, label %land.lhs.true.i

if.end.i.mmci_dma_error.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %dma_error.i = getelementptr inbounds %struct.mmci_host_ops, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %dma_error.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_error.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.mmci_dma_error.exit_crit_edge, label %if.then4.i

land.lhs.true.i.mmci_dma_error.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %8(ptr noundef %host) #10
  br label %mmci_dma_error.exit

mmci_dma_error.exit:                              ; preds = %if.then4.i, %land.lhs.true.i.mmci_dma_error.exit_crit_edge, %if.end.i.mmci_dma_error.exit_crit_edge, %if.then5.mmci_dma_error.exit_crit_edge
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 4
  %datacnt_useless = getelementptr inbounds %struct.variant_data, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %datacnt_useless to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %datacnt_useless, align 4
  %12 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %if.then8, label %mmci_dma_error.exit.do.body_crit_edge

mmci_dma_error.exit.do.body_crit_edge:            ; preds = %mmci_dma_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then8:                                         ; preds = %mmci_dma_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  %base = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !274
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %19 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blocks, align 4
  %mul = mul i32 %20, %18
  %sub = sub i32 %mul, %16
  br label %do.body

do.body:                                          ; preds = %if.then8, %mmci_dma_error.exit.do.body_crit_edge
  %success.0 = phi i32 [ %sub, %if.then8 ], [ 0, %mmci_dma_error.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmci_data_irq.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmci_data_irq, %if.then16)) #10
          to label %do.end [label %if.then16], !srcloc !225

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %mmc = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %21 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmci_data_irq.__UNIQUE_ID_ddebug306, ptr noundef %24, ptr noundef nonnull @.str.81, i32 noundef %and, i32 noundef %success.0) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %and18 = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else22, label %if.then20

if.then20:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub21 = add i32 %success.0, -1
  br label %if.end53.sink.split

if.else22:                                        ; preds = %do.end
  %and23 = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else27, label %if.else22.if.end53.sink.split_crit_edge

if.else22.if.end53.sink.split_crit_edge:          ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.sink.split

if.else27:                                        ; preds = %if.else22
  %and28 = and i32 %and, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else32, label %if.else27.if.end53.sink.split_crit_edge

if.else27.if.end53.sink.split_crit_edge:          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.sink.split

if.else32:                                        ; preds = %if.else27
  %and33 = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else37, label %if.else32.if.end53.sink.split_crit_edge

if.else32.if.end53.sink.split_crit_edge:          ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53.sink.split

if.else37:                                        ; preds = %if.else32
  %and38 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else37.if.end53_crit_edge, label %if.then40

if.else37.if.end53_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

if.then40:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %variant, align 4
  %fifosize = getelementptr inbounds %struct.variant_data, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %fifosize to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fifosize, align 4
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %success.0, i32 %28)
  br label %if.end53.sink.split

if.end53.sink.split:                              ; preds = %if.then40, %if.else32.if.end53.sink.split_crit_edge, %if.else27.if.end53.sink.split_crit_edge, %if.else22.if.end53.sink.split_crit_edge, %if.then20
  %.sink = phi i32 [ -5, %if.then40 ], [ -84, %if.then20 ], [ -110, %if.else22.if.end53.sink.split_crit_edge ], [ -70, %if.else27.if.end53.sink.split_crit_edge ], [ -5, %if.else32.if.end53.sink.split_crit_edge ]
  %success.2.ph = phi i32 [ %29, %if.then40 ], [ %sub21, %if.then20 ], [ %success.0, %if.else22.if.end53.sink.split_crit_edge ], [ %success.0, %if.else27.if.end53.sink.split_crit_edge ], [ %success.0, %if.else32.if.end53.sink.split_crit_edge ]
  %error26 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %30 = ptrtoint ptr %error26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %error26, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end53.sink.split, %if.else37.if.end53_crit_edge
  %success.2 = phi i32 [ %success.0, %if.else37.if.end53_crit_edge ], [ %success.2.ph, %if.end53.sink.split ]
  %blksz54 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %31 = ptrtoint ptr %blksz54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blksz54, align 4
  %neg = sub i32 0, %32
  %and56 = and i32 %success.2, %neg
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %33 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and56, ptr %bytes_xfered, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end53, %if.end.if.end57_crit_edge
  %and58 = and i32 %status, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end66_crit_edge, label %do.end63

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %mmc64 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %34 = ptrtoint ptr %mmc64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmc64, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.82) #13
  br label %if.end66

if.end66:                                         ; preds = %do.end63, %if.end57.if.end66_crit_edge
  %and67 = and i32 %status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %lor.lhs.false, label %if.end66.if.then71_crit_edge

if.end66.if.then71_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.end66
  %error69 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %38 = ptrtoint ptr %error69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %error69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool70.not = icmp eq i32 %39, 0
  br i1 %tobool70.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then71_crit_edge

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then71

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then71:                                        ; preds = %lor.lhs.false.if.then71_crit_edge, %if.end66.if.then71_crit_edge
  %use_dma.i150 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %40 = ptrtoint ptr %use_dma.i150 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i151 = load i8, ptr %use_dma.i150, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i151)
  %tobool.not.i152 = icmp sgt i8 %bf.load.i151, -1
  br i1 %tobool.not.i152, label %if.then71.mmci_dma_finalize.exit_crit_edge, label %if.end.i155

if.then71.mmci_dma_finalize.exit_crit_edge:       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_finalize.exit

if.end.i155:                                      ; preds = %if.then71
  %ops.i153 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %41 = ptrtoint ptr %ops.i153 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i153, align 4
  %tobool1.not.i154 = icmp eq ptr %42, null
  br i1 %tobool1.not.i154, label %if.end.i155.mmci_dma_finalize.exit_crit_edge, label %land.lhs.true.i157

if.end.i155.mmci_dma_finalize.exit_crit_edge:     ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_finalize.exit

land.lhs.true.i157:                               ; preds = %if.end.i155
  %dma_finalize.i = getelementptr inbounds %struct.mmci_host_ops, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %dma_finalize.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_finalize.i, align 4
  %tobool3.not.i156 = icmp eq ptr %44, null
  br i1 %tobool3.not.i156, label %land.lhs.true.i157.mmci_dma_finalize.exit_crit_edge, label %if.then4.i158

land.lhs.true.i157.mmci_dma_finalize.exit_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_finalize.exit

if.then4.i158:                                    ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %44(ptr noundef %host, ptr noundef nonnull %data) #10
  br label %mmci_dma_finalize.exit

mmci_dma_finalize.exit:                           ; preds = %if.then4.i158, %land.lhs.true.i157.mmci_dma_finalize.exit_crit_edge, %if.end.i155.mmci_dma_finalize.exit_crit_edge, %if.then71.mmci_dma_finalize.exit_crit_edge
  tail call fastcc void @mmci_stop_data(ptr noundef %host)
  %error72 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %45 = ptrtoint ptr %error72 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool73.not = icmp eq i32 %46, 0
  br i1 %tobool73.not, label %if.then74, label %mmci_dma_finalize.exit.if.end79_crit_edge

mmci_dma_finalize.exit.if.end79_crit_edge:        ; preds = %mmci_dma_finalize.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then74:                                        ; preds = %mmci_dma_finalize.exit
  call void @__sanitizer_cov_trace_pc() #12
  %blksz75 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 2
  %47 = ptrtoint ptr %blksz75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blksz75, align 4
  %blocks76 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 3
  %49 = ptrtoint ptr %blocks76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %blocks76, align 4
  %mul77 = mul i32 %50, %48
  %bytes_xfered78 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %51 = ptrtoint ptr %bytes_xfered78 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul77, ptr %bytes_xfered78, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %mmci_dma_finalize.exit.if.end79_crit_edge
  %stop = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 8
  %52 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stop, align 4
  %tobool80.not = icmp eq ptr %53, null
  br i1 %tobool80.not, label %if.then81, label %if.else89

if.then81:                                        ; preds = %if.end79
  %54 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %variant, align 4
  %cmdreg_stop = getelementptr inbounds %struct.variant_data, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %cmdreg_stop to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmdreg_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool83.not = icmp eq i32 %57, 0
  %brmerge = select i1 %tobool83.not, i1 true, i1 %tobool73.not
  br i1 %brmerge, label %if.else87, label %if.then86

if.then86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %stop_abort.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 4
  %error.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 4, i32 5
  %58 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %error.i, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %host, ptr noundef %stop_abort.i) #10
  br label %cleanup

if.else87:                                        ; preds = %if.then81
  %mrq = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 9
  %59 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mrq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !219
  %data.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data.i, align 4
  %tobool.not.i159 = icmp eq ptr %64, null
  br i1 %tobool.not.i159, label %mmci_request_end.exit, label %do.body4.i, !prof !224

do.body4.i:                                       ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

mmci_request_end.exit:                            ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #12
  %mrq9.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 2
  %65 = ptrtoint ptr %mrq9.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %mrq9.i, align 4
  %cmd.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 3
  %66 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %cmd.i, align 4
  %mmc.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %67 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %68, ptr noundef %60) #10
  br label %cleanup

if.else89:                                        ; preds = %if.end79
  %mrq90 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 2
  %69 = ptrtoint ptr %mrq90 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mrq90, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %tobool91.not = icmp eq ptr %72, null
  %tobool73.not.not = xor i1 %tobool73.not, true
  %brmerge170 = select i1 %tobool91.not, i1 true, i1 %tobool73.not.not
  br i1 %brmerge170, label %if.else97, label %if.then95

if.then95:                                        ; preds = %if.else89
  %mrq96 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 9
  %73 = ptrtoint ptr %mrq96 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mrq96, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %base.i160 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %75 = ptrtoint ptr %base.i160 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i160, align 4
  %add.ptr.i161 = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 0) #10, !srcloc !219
  %data.i162 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %77 = ptrtoint ptr %data.i162 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i162, align 4
  %tobool.not.i163 = icmp eq ptr %78, null
  br i1 %tobool.not.i163, label %mmci_request_end.exit168, label %do.body4.i164, !prof !224

do.body4.i164:                                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

mmci_request_end.exit168:                         ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %mrq90 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %mrq90, align 4
  %cmd.i166 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 3
  %80 = ptrtoint ptr %cmd.i166 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %cmd.i166, align 4
  %mmc.i167 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %81 = ptrtoint ptr %mmc.i167 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmc.i167, align 4
  tail call void @mmc_request_done(ptr noundef %82, ptr noundef %74) #10
  br label %cleanup

if.else97:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mmci_start_command(ptr noundef %host, ptr noundef nonnull %53)
  br label %cleanup

cleanup:                                          ; preds = %if.else97, %mmci_request_end.exit168, %mmci_request_end.exit, %if.then86, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmci_cmd_irq(ptr noundef %host, ptr noundef %cmd, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %tobool.not = icmp eq ptr %cmd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mrq = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 2
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp = icmp eq ptr %5, %cmd
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %busy_timeout = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 19
  %10 = ptrtoint ptr %busy_timeout to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %busy_timeout, align 4
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  %12 = or i32 %and, 5
  %err_msk.0 = select i1 %tobool6.not, i32 5, i32 %12
  %busy_status = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 19
  %13 = ptrtoint ptr %busy_status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %busy_status, align 4
  %or11 = or i32 %14, %status
  %or13 = or i32 %err_msk.0, 192
  %and14 = and i32 %or13, %or11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %15 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  %or.cond187 = select i1 %tobool3.not, i1 true, i1 %tobool26.not
  br i1 %or.cond187, label %if.end17.if.end30_crit_edge, label %if.then27

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end17
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %busy_complete = getelementptr inbounds %struct.mmci_host_ops, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %busy_complete to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %busy_complete, align 4
  %call = tail call zeroext i1 %19(ptr noundef %host, i32 noundef %status, i32 noundef %err_msk.0) #10
  br i1 %call, label %if.then27.if.end30_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %if.then27.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %cmd31 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 3
  %20 = ptrtoint ptr %cmd31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cmd31, align 4
  %and32 = and i32 %status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -110, ptr %error, align 4
  br label %if.end88

if.else:                                          ; preds = %if.end30
  %and35 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.else.if.else43_crit_edge, label %land.lhs.true37

if.else.if.else43_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else43

land.lhs.true37:                                  ; preds = %if.else
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and39 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %land.lhs.true37.if.else43_crit_edge, label %if.then41

land.lhs.true37.if.else43_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else43

if.then41:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #12
  %error42 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %error42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -84, ptr %error42, align 4
  br label %if.end88

if.else43:                                        ; preds = %land.lhs.true37.if.else43_crit_edge, %if.else.if.else43_crit_edge
  %25 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %variant, align 4
  %busy_timeout45 = getelementptr inbounds %struct.variant_data, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %busy_timeout45 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load46 = load i8, ptr %busy_timeout45, align 4
  %28 = and i8 %bf.load46, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool50.not = icmp eq i8 %28, 0
  %brmerge = select i1 %tobool50.not, i1 true, i1 %tobool3.not
  %and55 = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %or.cond = or i1 %tobool56.not, %brmerge
  br i1 %or.cond, label %if.else59, label %if.then57

if.then57:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  %error58 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %29 = ptrtoint ptr %error58 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -110, ptr %error58, align 4
  %irq_action = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 33
  %30 = ptrtoint ptr %irq_action to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %irq_action, align 4
  br label %if.end88

if.else59:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !275
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %33 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %resp, align 4
  %add.ptr64 = getelementptr i8, ptr %1, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #10, !srcloc !221
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !276
  %arrayidx69 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx69, align 4
  %add.ptr72 = getelementptr i8, ptr %1, i32 28
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #10, !srcloc !221
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !277
  %arrayidx77 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx77, align 4
  %add.ptr80 = getelementptr i8, ptr %1, i32 32
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #10, !srcloc !221
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !278
  %arrayidx85 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx85, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.else59, %if.then57, %if.then41, %if.then34
  br i1 %cmp, label %lor.lhs.false, label %land.lhs.true90

land.lhs.true90:                                  ; preds = %if.end88
  %data = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %tobool91.not = icmp eq ptr %44, null
  br i1 %tobool91.not, label %land.lhs.true90.if.then94_crit_edge, label %lor.lhs.false.thread

land.lhs.true90.if.then94_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

lor.lhs.false:                                    ; preds = %if.end88
  %error92 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %45 = ptrtoint ptr %error92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %error92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool93.not = icmp eq i32 %46, 0
  br i1 %tobool93.not, label %if.then114, label %lor.lhs.false.if.then94_crit_edge

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

lor.lhs.false.thread:                             ; preds = %land.lhs.true90
  %error92185 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %47 = ptrtoint ptr %error92185 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error92185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool93.not186 = icmp eq i32 %48, 0
  br i1 %tobool93.not186, label %if.else117, label %lor.lhs.false.thread.if.then94_crit_edge

lor.lhs.false.thread.if.then94_crit_edge:         ; preds = %lor.lhs.false.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

if.then94:                                        ; preds = %lor.lhs.false.thread.if.then94_crit_edge, %lor.lhs.false.if.then94_crit_edge, %land.lhs.true90.if.then94_crit_edge
  %data95 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %49 = ptrtoint ptr %data95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data95, align 4
  %tobool96.not = icmp eq ptr %50, null
  br i1 %tobool96.not, label %if.then94.if.end105_crit_edge, label %if.then97

if.then94.if.end105_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then97:                                        ; preds = %if.then94
  %use_dma.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 37
  %51 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load.i = load i8, ptr %use_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then97.mmci_dma_error.exit_crit_edge, label %if.end.i

if.then97.mmci_dma_error.exit_crit_edge:          ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

if.end.i:                                         ; preds = %if.then97
  %ops.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %52 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i, align 4
  %tobool1.not.i = icmp eq ptr %53, null
  br i1 %tobool1.not.i, label %if.end.i.mmci_dma_error.exit_crit_edge, label %land.lhs.true.i

if.end.i.mmci_dma_error.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %dma_error.i = getelementptr inbounds %struct.mmci_host_ops, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %dma_error.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_error.i, align 4
  %tobool3.not.i = icmp eq ptr %55, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.mmci_dma_error.exit_crit_edge, label %if.then4.i

land.lhs.true.i.mmci_dma_error.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_dma_error.exit

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %55(ptr noundef %host) #10
  br label %mmci_dma_error.exit

mmci_dma_error.exit:                              ; preds = %if.then4.i, %land.lhs.true.i.mmci_dma_error.exit_crit_edge, %if.end.i.mmci_dma_error.exit_crit_edge, %if.then97.mmci_dma_error.exit_crit_edge
  tail call fastcc void @mmci_stop_data(ptr noundef %host)
  %56 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %variant, align 4
  %cmdreg_stop = getelementptr inbounds %struct.variant_data, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %cmdreg_stop to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cmdreg_stop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool99.not = icmp eq i32 %59, 0
  br i1 %tobool99.not, label %mmci_dma_error.exit.if.end105_crit_edge, label %land.lhs.true100

mmci_dma_error.exit.if.end105_crit_edge:          ; preds = %mmci_dma_error.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

land.lhs.true100:                                 ; preds = %mmci_dma_error.exit
  %error101 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %60 = ptrtoint ptr %error101 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %error101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool102.not = icmp eq i32 %61, 0
  br i1 %tobool102.not, label %land.lhs.true100.if.end105_crit_edge, label %if.then103

land.lhs.true100.if.end105_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then103:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #12
  %stop_abort.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 4
  %error.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 4, i32 5
  %62 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %error.i, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %host, ptr noundef %stop_abort.i) #10
  br label %cleanup

if.end105:                                        ; preds = %land.lhs.true100.if.end105_crit_edge, %mmci_dma_error.exit.if.end105_crit_edge, %if.then94.if.end105_crit_edge
  %irq_action106 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 33
  %63 = ptrtoint ptr %irq_action106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq_action106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp107.not = icmp eq i32 %64, 2
  br i1 %cmp107.not, label %if.end105.cleanup_crit_edge, label %if.then109

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then109:                                       ; preds = %if.end105
  %65 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mrq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base1, align 4
  %add.ptr.i = getelementptr i8, ptr %68, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !219
  %69 = ptrtoint ptr %data95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data95, align 4
  %tobool.not.i184 = icmp eq ptr %70, null
  br i1 %tobool.not.i184, label %mmci_request_end.exit, label %do.body4.i, !prof !224

do.body4.i:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/mmci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 600, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

mmci_request_end.exit:                            ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %mrq, align 4
  %72 = ptrtoint ptr %cmd31 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %cmd31, align 4
  %mmc.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 6
  %73 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_request_done(ptr noundef %74, ptr noundef %66) #10
  br label %cleanup

if.then114:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mrq, align 4
  %cmd116 = getelementptr inbounds %struct.mmc_request, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %cmd116 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cmd116, align 4
  tail call fastcc void @mmci_start_command(ptr noundef %host, ptr noundef %78)
  br label %cleanup

if.else117:                                       ; preds = %lor.lhs.false.thread
  %79 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %variant, align 4
  %datactrl_first = getelementptr inbounds %struct.variant_data, ptr %80, i32 0, i32 16
  %81 = ptrtoint ptr %datactrl_first to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load119 = load i8, ptr %datactrl_first, align 4
  %82 = and i8 %bf.load119, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool122.not = icmp eq i8 %82, 0
  br i1 %tobool122.not, label %land.lhs.true123, label %if.else117.cleanup_crit_edge

if.else117.cleanup_crit_edge:                     ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true123:                                 ; preds = %if.else117
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data, align 4
  %flags125 = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %flags125 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags125, align 4
  %and126 = and i32 %86, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.then128, label %land.lhs.true123.cleanup_crit_edge

land.lhs.true123.cleanup_crit_edge:               ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then128:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mmci_start_data(ptr noundef %host, ptr noundef %84)
  br label %cleanup

cleanup:                                          ; preds = %if.then128, %land.lhs.true123.cleanup_crit_edge, %if.else117.cleanup_crit_edge, %if.then114, %mmci_request_end.exit, %if.end105.cleanup_crit_edge, %if.then103, %if.then27.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmci_stop_data(ptr nocapture noundef %host) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %datactrl_reg.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 18
  %0 = ptrtoint ptr %datactrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datactrl_reg.i, align 4
  %variant.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %2 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant.i, align 4
  %busy_dpsm_flag.i = getelementptr inbounds %struct.variant_data, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %busy_dpsm_flag.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %busy_dpsm_flag.i, align 4
  %and.i = and i32 %5, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %1, %and.i
  br i1 %cmp.not.i, label %entry.mmci_write_datactrlreg.exit_crit_edge, label %if.then.i

entry.mmci_write_datactrlreg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_write_datactrlreg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %datactrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and.i, ptr %datactrl_reg.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %base.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #10, !srcloc !219
  br label %mmci_write_datactrlreg.exit

mmci_write_datactrlreg.exit:                      ; preds = %if.then.i, %entry.mmci_write_datactrlreg.exit_crit_edge
  %base1.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %10 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base1.i, align 4
  %12 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant.i, align 4
  %singleirq.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 8
  %14 = ptrtoint ptr %singleirq.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %singleirq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %mmci_write_datactrlreg.exit.if.end.i_crit_edge, label %if.then.i5

mmci_write_datactrlreg.exit.if.end.i_crit_edge:   ; preds = %mmci_write_datactrlreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i5:                                       ; preds = %mmci_write_datactrlreg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i3 = getelementptr i8, ptr %11, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #10, !srcloc !221
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %irq_pio_mask.i = getelementptr inbounds %struct.variant_data, ptr %13, i32 0, i32 24
  %17 = ptrtoint ptr %irq_pio_mask.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_pio_mask.i, align 4
  %neg.i = xor i32 %18, -1
  %and.i4 = and i32 %16, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #10, !srcloc !219
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i5, %mmci_write_datactrlreg.exit.if.end.i_crit_edge
  %mmcimask1.i = getelementptr inbounds %struct.variant_data, ptr %13, i32 0, i32 23
  %20 = ptrtoint ptr %mmcimask1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load5.i = load i8, ptr %mmcimask1.i, align 4
  %21 = and i8 %bf.load5.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %if.end.i.mmci_set_mask1.exit_crit_edge, label %do.body9.i

if.end.i.mmci_set_mask1.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mmci_set_mask1.exit

do.body9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  tail call void @arm_heavy_mb() #10
  %add.ptr12.i = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #10, !srcloc !219
  br label %mmci_set_mask1.exit

mmci_set_mask1.exit:                              ; preds = %do.body9.i, %if.end.i.mmci_set_mask1.exit_crit_edge
  %mask1_reg.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 20
  %22 = ptrtoint ptr %mask1_reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mask1_reg.i, align 4
  %data = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mmci_variant_init(ptr nocapture noundef writeonly %host) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mmci_variant_ops, ptr %ops, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmci_get_dctrl_cfg(ptr nocapture noundef readonly %host) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksz.i, align 4
  %4 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true) #10, !range !223
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero.i = icmp eq i32 %3, 0
  %.op.i = shl nuw nsw i32 %4, 4
  %.op.i.op = or i32 %.op.i, 1
  %or = select i1 %iszero.i, i32 -15, i32 %.op.i.op
  ret i32 %or
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ux500_variant_init(ptr nocapture noundef writeonly %host) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mmci_variant_ops, ptr %ops, align 4
  store ptr @ux500_busy_complete, ptr getelementptr inbounds (%struct.mmci_host_ops, ptr @mmci_variant_ops, i32 0, i32 12), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ux500_busy_complete(ptr nocapture noundef %host, i32 noundef %status, i32 noundef %err_msk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %busy_status = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 19
  %2 = ptrtoint ptr %busy_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busy_status, align 4
  %and = and i32 %err_msk, %status
  %4 = or i32 %3, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %land.lhs.true3, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !221
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !279
  %variant = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %busy_detect_flag = getelementptr inbounds %struct.variant_data, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %busy_detect_flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %busy_detect_flag, align 4
  %and5 = and i32 %11, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.endthread-pre-split, label %do.body

do.body:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !280
  tail call void @arm_heavy_mb() #10
  %add.ptr9 = getelementptr i8, ptr %1, i32 60
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !221
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !281
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %variant, align 4
  %busy_detect_mask = getelementptr inbounds %struct.variant_data, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %busy_detect_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %busy_detect_mask, align 4
  %or = or i32 %17, %13
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %18) #10, !srcloc !219
  %and15 = and i32 %status, 192
  br label %cleanup.sink.split

if.endthread-pre-split:                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %busy_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %busy_status, align 4
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %entry.if.end_crit_edge
  %20 = phi i32 [ %.pr, %if.endthread-pre-split ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %if.end.cleanup_crit_edge, label %land.lhs.true19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end
  %variant20 = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 25
  %21 = ptrtoint ptr %variant20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %variant20, align 4
  %busy_detect_flag21 = getelementptr inbounds %struct.variant_data, ptr %22, i32 0, i32 21
  %23 = ptrtoint ptr %busy_detect_flag21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %busy_detect_flag21, align 4
  %and22 = and i32 %24, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %variant20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %variant20, align 4
  %busy_detect_mask39 = getelementptr inbounds %struct.variant_data, ptr %26, i32 0, i32 22
  %27 = ptrtoint ptr %busy_detect_mask39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %busy_detect_mask39, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %add.ptr40 = getelementptr i8, ptr %1, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %29) #10
  br i1 %tobool23.not, label %do.body35, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body35:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !282
  tail call void @arm_heavy_mb() #10
  %add.ptr46 = getelementptr i8, ptr %1, i32 60
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #10, !srcloc !221
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !283
  %32 = ptrtoint ptr %variant20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %variant20, align 4
  %busy_detect_mask51 = getelementptr inbounds %struct.variant_data, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %busy_detect_mask51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %busy_detect_mask51, align 4
  %neg = xor i32 %35, -1
  %and52 = and i32 %31, %neg
  %36 = tail call i32 @llvm.bswap.i32(i32 %and52)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %36) #10, !srcloc !219
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body35, %do.body
  %.sink = phi i32 [ 0, %do.body35 ], [ %and15, %do.body ]
  %retval.0.ph = phi i1 [ true, %do.body35 ], [ false, %do.body ]
  %37 = ptrtoint ptr %busy_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %busy_status, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true19.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true19.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ux500v2_variant_init(ptr nocapture noundef writeonly %host) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 24
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mmci_variant_ops, ptr %ops, align 4
  store ptr @ux500_busy_complete, ptr getelementptr inbounds (%struct.mmci_host_ops, ptr @mmci_variant_ops, i32 0, i32 12), align 4
  store ptr @ux500v2_get_dctrl_cfg, ptr getelementptr inbounds (%struct.mmci_host_ops, ptr @mmci_variant_ops, i32 0, i32 3), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ux500v2_get_dctrl_cfg(ptr nocapture noundef readonly %host) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.mmci_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blksz, align 4
  %shl = shl i32 %3, 16
  %or = or i32 %shl, 1
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdmmc_variant_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qcom_variant_init(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !207}
!llvm.module.flags = !{!209, !210, !211, !212, !213, !214, !215, !216}
!llvm.ident = !{!217}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mmci.c", i32 748, i32 58}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/mmci.c", i32 755, i32 58}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/mmci.c", i32 758, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mmci_dmae_setup._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @mmci_dmae_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/mmci.c", i32 774, i32 12}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/mmci.c", i32 781, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mmci_dmae_setup._entry.8, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @mmci_dmae_setup._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/mmci.c", i32 847, i32 2}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mmci_dmae_error._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @mmci_dmae_error._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/mmci.c", i32 893, i32 3}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mmci_dmae_finalize._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mmci_dmae_finalize._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_armmmci__321_2464_mmci_driver_init6, !31, !"__initcall__kmod_armmmci__321_2464_mmci_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/mmci.c", i32 2464, i32 1}
!32 = !{ptr @__exitcall_mmci_driver_exit, !31, !"__exitcall_mmci_driver_exit", i1 false, i1 false}
!33 = !{ptr @__param_fmax, !34, !"__param_fmax", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/mmci.c", i32 2466, i32 1}
!35 = !{ptr @__UNIQUE_ID_fmaxtype322, !34, !"__UNIQUE_ID_fmaxtype322", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_description323, !37, !"__UNIQUE_ID_description323", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/mmci.c", i32 2468, i32 1}
!38 = !{ptr @__UNIQUE_ID_file324, !39, !"__UNIQUE_ID_file324", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/mmci.c", i32 2469, i32 1}
!40 = !{ptr @__UNIQUE_ID_license325, !39, !"__UNIQUE_ID_license325", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mmc/host/mmci.c", i32 2456, i32 11}
!43 = !{ptr @mmci_driver, !44, !"mmci_driver", i1 false, i1 false}
!44 = !{!"../drivers/mmc/host/mmci.c", i32 2454, i32 27}
!45 = !{ptr @mmci_dev_pm_ops, !46, !"mmci_dev_pm_ops", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/mmci.c", i32 2370, i32 32}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/mmci.c", i32 2006, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mmci_probe._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mmci_probe._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/mmci.c", i32 2036, i32 4}
!54 = !{ptr @mmci_probe._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mmci_probe._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/host/mmci.c", i32 2042, i32 12}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/mmci.c", i32 2044, i32 4}
!60 = !{ptr @mmci_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mmci_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/mmci.c", i32 2052, i32 2}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mmci_probe.__UNIQUE_ID_ddebug311, !63, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/mmci.c", i32 2053, i32 2}
!68 = !{ptr @mmci_probe.__UNIQUE_ID_ddebug312, !67, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/mmc/host/mmci.c", i32 2083, i32 3}
!71 = !{ptr @mmci_probe.__UNIQUE_ID_ddebug313, !70, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/mmci.c", i32 2126, i32 2}
!74 = !{ptr @mmci_probe.__UNIQUE_ID_ddebug320, !73, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/mmci.c", i32 2135, i32 3}
!77 = !{ptr @mmci_probe._entry.32, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mmci_probe._entry_ptr.34, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/mmci.c", i32 2145, i32 3}
!81 = !{ptr @mmci_probe._entry.35, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mmci_probe._entry_ptr.37, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mmci_probe.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/mmci.c", i32 2206, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/mmci.c", i32 2223, i32 35}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/host/mmci.c", i32 2227, i32 35}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/host/mmci.c", i32 2234, i32 6}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/mmci.c", i32 2242, i32 18}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/mmci.c", i32 2251, i32 2}
!96 = !{ptr @mmci_probe._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @mmci_probe._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @mmci_ops, !99, !"mmci_ops", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/mmci.c", i32 1890, i32 28}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/mmci.c", i32 496, i32 3}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mmci_validate_data._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mmci_validate_data._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/mmci.c", i32 1136, i32 2}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mmci_start_data.__UNIQUE_ID_ddebug304, !106, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/mmci.c", i32 1219, i32 2}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mmci_start_command.__UNIQUE_ID_ddebug305, !110, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mmc/host/mmci.c", i32 1751, i32 4}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @mmci_set_ios._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @mmci_set_ios._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/mmci.c", i32 1780, i32 5}
!120 = !{ptr @mmci_set_ios._entry.54, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mmci_set_ios._entry_ptr.56, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/mmci.c", i32 1831, i32 4}
!124 = !{ptr @mmci_set_ios._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mmci_set_ios._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/mmci.c", i32 1885, i32 3}
!128 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mmci_sig_volt_switch._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mmci_sig_volt_switch._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/mmci.c", i32 1967, i32 26}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/mmci.c", i32 1969, i32 26}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/mmci.c", i32 1971, i32 26}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/mmci.c", i32 1973, i32 26}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/mmci.c", i32 1975, i32 26}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mmc/host/mmci.c", i32 1977, i32 26}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mmc/host/mmci.c", i32 1979, i32 26}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/mmci.c", i32 1981, i32 26}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/mmci.c", i32 1983, i32 26}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/mmci.c", i32 1986, i32 26}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/mmci.c", i32 1988, i32 26}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/mmci.c", i32 1915, i32 28}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/mmci.c", i32 1919, i32 27}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mmc/host/mmci.c", i32 1923, i32 29}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/mmci.c", i32 1945, i32 3}
!161 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mmci_probe_level_translator._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @mmci_probe_level_translator._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.78, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mmc/host/mmci.c", i32 1641, i32 3}
!166 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mmci_irq.__UNIQUE_ID_ddebug310, !165, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!168 = !{ptr @.str.80, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mmc/host/mmci.c", i32 1310, i32 3}
!170 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @mmci_data_irq.__UNIQUE_ID_ddebug306, !169, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!172 = !{ptr @.str.82, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mmc/host/mmci.c", i32 1333, i32 3}
!174 = !{ptr @mmci_data_irq._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @mmci_data_irq._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/host/mmci.c", i32 1547, i32 2}
!178 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @mmci_pio_irq.__UNIQUE_ID_ddebug309, !177, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!180 = !{ptr @mmci_ids, !181, !"mmci_ids", i1 false, i1 false}
!181 = !{!"../drivers/mmc/host/mmci.c", i32 2376, i32 29}
!182 = !{ptr @variant_arm, !183, !"variant_arm", i1 false, i1 false}
!183 = !{!"../drivers/mmc/host/mmci.c", i32 54, i32 28}
!184 = !{ptr @mmci_variant_ops, !185, !"mmci_variant_ops", i1 false, i1 false}
!185 = !{!"../drivers/mmc/host/mmci.c", i32 1066, i32 29}
!186 = !{ptr @variant_arm_extended_fifo, !187, !"variant_arm_extended_fifo", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/mmci.c", i32 73, i32 28}
!188 = !{ptr @variant_arm_extended_fifo_hwfc, !189, !"variant_arm_extended_fifo_hwfc", i1 false, i1 false}
!189 = !{!"../drivers/mmc/host/mmci.c", i32 91, i32 28}
!190 = !{ptr @variant_u300, !191, !"variant_u300", i1 false, i1 false}
!191 = !{!"../drivers/mmc/host/mmci.c", i32 110, i32 28}
!192 = !{ptr @variant_nomadik, !193, !"variant_nomadik", i1 false, i1 false}
!193 = !{!"../drivers/mmc/host/mmci.c", i32 135, i32 28}
!194 = !{ptr @variant_ux500, !195, !"variant_ux500", i1 false, i1 false}
!195 = !{!"../drivers/mmc/host/mmci.c", i32 161, i32 28}
!196 = !{ptr @variant_ux500v2, !197, !"variant_ux500v2", i1 false, i1 false}
!197 = !{!"../drivers/mmc/host/mmci.c", i32 195, i32 28}
!198 = !{ptr @variant_stm32, !199, !"variant_stm32", i1 false, i1 false}
!199 = !{!"../drivers/mmc/host/mmci.c", i32 230, i32 28}
!200 = !{ptr @variant_stm32_sdmmc, !201, !"variant_stm32_sdmmc", i1 false, i1 false}
!201 = !{!"../drivers/mmc/host/mmci.c", i32 254, i32 28}
!202 = !{ptr @variant_stm32_sdmmcv2, !203, !"variant_stm32_sdmmcv2", i1 false, i1 false}
!203 = !{!"../drivers/mmc/host/mmci.c", i32 280, i32 28}
!204 = !{ptr @variant_qcom, !205, !"variant_qcom", i1 false, i1 false}
!205 = !{!"../drivers/mmc/host/mmci.c", i32 307, i32 28}
!206 = !{ptr @__param_str_fmax, !34, !"__param_str_fmax", i1 false, i1 false}
!207 = !{ptr @fmax, !208, !"fmax", i1 false, i1 false}
!208 = !{!"../drivers/mmc/host/mmci.c", i32 52, i32 21}
!209 = !{i32 1, !"wchar_size", i32 2}
!210 = !{i32 1, !"min_enum_size", i32 4}
!211 = !{i32 8, !"branch-target-enforcement", i32 0}
!212 = !{i32 8, !"sign-return-address", i32 0}
!213 = !{i32 8, !"sign-return-address-all", i32 0}
!214 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!215 = !{i32 7, !"uwtable", i32 1}
!216 = !{i32 7, !"frame-pointer", i32 2}
!217 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!218 = !{i64 2155531764}
!219 = !{i64 4831904}
!220 = !{i64 2155532161}
!221 = !{i64 4832322}
!222 = !{i64 2155554467}
!223 = !{i32 0, i32 33}
!224 = !{!"branch_weights", i32 2000, i32 1}
!225 = !{i64 2149014608, i64 2149014613, i64 2149014626, i64 2149014670, i64 2149014704, i64 2149014725}
!226 = !{i64 2155639278}
!227 = !{i64 2155639667}
!228 = !{i64 2155640060}
!229 = !{i64 2155640870}
!230 = !{i64 2155644023}
!231 = !{i64 2155644412}
!232 = !{i64 2155644801}
!233 = !{i64 2155645190}
!234 = !{i64 2155645933}
!235 = !{i64 2155646322}
!236 = !{i64 2155646711}
!237 = !{i64 2155647100}
!238 = !{i64 2155647855}
!239 = !{i64 2155648297}
!240 = !{i64 2155648749}
!241 = !{i64 2155649533}
!242 = !{i64 2155590436}
!243 = !{i64 2155530987}
!244 = !{i64 2155532563}
!245 = !{i64 2155599036}
!246 = !{i64 2155599532}
!247 = !{i64 2155603952}
!248 = !{i64 2155604389}
!249 = !{i64 2155605173}
!250 = !{i64 2155539469}
!251 = !{i64 2155539979, i64 2155540467, i64 2155540016, i64 2155540072, i64 2155540106, i64 2155540130, i64 2155540171, i64 2155540192, i64 2155540220, i64 2155540254}
!252 = !{i64 2155593846}
!253 = !{i64 2155590952}
!254 = !{i64 2155591520}
!255 = !{i64 2155593364}
!256 = !{i64 2155596654}
!257 = !{i64 2155541723}
!258 = !{i64 2155541940}
!259 = !{i64 2155542332}
!260 = !{i64 2155597620}
!261 = !{i64 2155598517}
!262 = !{i64 762111, i64 762138, i64 762160, i64 762188}
!263 = !{i64 762519, i64 762546, i64 762579, i64 762600, i64 762627, i64 762653}
!264 = !{i64 2155566331}
!265 = !{i64 2155566735}
!266 = !{i64 2155538306}
!267 = !{i64 2155539227}
!268 = !{i64 2155568283}
!269 = !{i64 2155569184}
!270 = !{i64 2155576254}
!271 = !{i64 2155576467}
!272 = !{i64 2155582297}
!273 = !{i64 2155582695}
!274 = !{i64 2155583391}
!275 = !{i64 2155588442}
!276 = !{i64 2155588914}
!277 = !{i64 2155589386}
!278 = !{i64 2155589858}
!279 = !{i64 2155543262}
!280 = !{i64 2155544231}
!281 = !{i64 2155545192}
!282 = !{i64 2155547229}
!283 = !{i64 2155548192}
