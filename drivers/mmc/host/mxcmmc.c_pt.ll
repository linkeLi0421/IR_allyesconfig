; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/mxcmmc.c_pt.bc'
source_filename = "../drivers/mmc/host/mxcmmc.c"
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
%struct.atomic_t = type { i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.mxcmci_host = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i16, i32, ptr, ptr, i32, %struct.work_struct, %struct.spinlock, i32, i32, %struct.dma_slave_config, %struct.imx_dma_data, %struct.timer_list, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.imx_dma_data = type { i32, i32, i32, i32 }
%struct.imxmmc_platform_data = type { ptr, ptr, ptr, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
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

@__initcall__kmod_mxcmmc__311_1226_mxcmci_driver_init6 = internal global ptr @mxcmci_driver_init, section ".initcall6.init", align 4
@mxcmci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxcmci_probe, ptr @mxcmci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @mxcmci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxcmci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxcmci_driver_exit = internal global ptr @mxcmci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description312 = internal constant [57 x i8] c"mxcmmc.description=i.MX Multimedia Card Interface Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [40 x i8] c"mxcmmc.author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [36 x i8] c"mxcmmc.file=drivers/mmc/host/mxcmmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [19 x i8] c"mxcmmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias316 = internal constant [30 x i8] c"mxcmmc.alias=platform:mxc-mmc\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxc-mmc\00", [24 x i8] zeroinitializer }, align 32
@mxcmci_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx31-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,mpc5121-sdhc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mxcmci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mxcmci_suspend, ptr @mxcmci_resume, ptr @mxcmci_suspend, ptr @mxcmci_resume, ptr @mxcmci_suspend, ptr @mxcmci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxcmci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016i.MX/MPC512x SDHC driver\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxcmci_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/mxcmmc.c\00", [38 x i8] zeroinitializer }, align 32
@mxcmci_probe._entry_ptr = internal global ptr @mxcmci_probe._entry, section ".printk_index", align 4
@mxcmci_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @mxcmci_request, ptr null, ptr @mxcmci_set_ios, ptr @mxcmci_get_ro, ptr null, ptr @mxcmci_enable_sdio_irq, ptr null, ptr @mxcmci_init_card, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mxcmci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cd-gpios\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"per\00", [28 x i8] zeroinitializer }, align 32
@mxcmci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1087, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wrong rev.no. 0x%08x. aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxcmci_probe._entry_ptr.12 = internal global ptr @mxcmci_probe._entry.8, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@mxcmci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1126, ptr @.str.16, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dma not available. Using PIO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mxcmci_probe._entry_ptr.17 = internal global ptr @mxcmci_probe._entry.14, section ".printk_index", align 4
@mxcmci_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&host->datawork)\00", [61 x i8] zeroinitializer }, align 32
@mxcmci_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&host->watchdog)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mxcmci_start_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 382, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unhandled response type 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxcmci_start_cmd\00", [47 x i8] zeroinitializer }, align 32
@mxcmci_start_cmd._entry_ptr = internal global ptr @mxcmci_start_cmd._entry, section ".printk_index", align 4
@mxcmci_dma_callback.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mxcmmc\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxcmci_dma_callback\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: 0x%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@mxcmci_finish_data.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxcmci_finish_data\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request failed. status: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@mxcmci_finish_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 445, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: -EILSEQ\0A\00", [19 x i8] zeroinitializer }, align 32
@mxcmci_finish_data._entry_ptr = internal global ptr @mxcmci_finish_data._entry, section ".printk_index", align 4
@mxcmci_finish_data._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.27, ptr @.str.3, i32 451, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: No CRC -ETIMEDOUT\0A\00", [41 x i8] zeroinitializer }, align 32
@mxcmci_finish_data._entry_ptr.32 = internal global ptr @mxcmci_finish_data._entry.30, section ".printk_index", align 4
@mxcmci_finish_data._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 455, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@mxcmci_finish_data._entry_ptr.34 = internal global ptr @mxcmci_finish_data._entry.33, section ".printk_index", align 4
@mxcmci_finish_data._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.3, i32 460, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: read -ETIMEDOUT\0A\00", [43 x i8] zeroinitializer }, align 32
@mxcmci_finish_data._entry_ptr.37 = internal global ptr @mxcmci_finish_data._entry.35, section ".printk_index", align 4
@mxcmci_finish_data._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.3, i32 463, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: -EIO\0A\00", [22 x i8] zeroinitializer }, align 32
@mxcmci_finish_data._entry_ptr.40 = internal global ptr @mxcmci_finish_data._entry.38, section ".printk_index", align 4
@mxcmci_read_response.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxcmci_read_response\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CMD TIMEOUT\0A\00", [19 x i8] zeroinitializer }, align 32
@mxcmci_read_response.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.41, ptr @.str.3, ptr @.str.43, i8 0, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cmd crc error\0A\00", [17 x i8] zeroinitializer }, align 32
@mxcmci_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 842, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"failed to config DMA channel. Falling back to PIO\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxcmci_set_ios\00", [17 x i8] zeroinitializer }, align 32
@mxcmci_set_ios._entry_ptr = internal global ptr @mxcmci_set_ios._entry, section ".printk_index", align 4
@mxcmci_set_clk_rate.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxcmci_set_clk_rate\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"scaler: %d divider: %d in: %d out: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mxcmci_softreset.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxcmci_softreset\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxcmci_softreset\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-sdma\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dma\00", [24 x i8] zeroinitializer }, align 32
@mxcmci_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.52, ptr @.str.3, ptr @.str.26, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mxcmci_irq\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mxcmci_detect_irq.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxcmci_detect_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mxcmci_watchdog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 954, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: read time out (status = 0x%08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxcmci_watchdog\00", [16 x i8] zeroinitializer }, align 32
@mxcmci_watchdog._entry_ptr = internal global ptr @mxcmci_watchdog._entry, section ".printk_index", align 4
@mxcmci_watchdog._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 958, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: write time out (status = 0x%08x)\0A\00", [58 x i8] zeroinitializer }, align 32
@mxcmci_watchdog._entry_ptr.59 = internal global ptr @mxcmci_watchdog._entry.57, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"mxcmci_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1215, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1219, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"mxcmci_of_match\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 160, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"mxcmci_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1213, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 990, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [11 x i8] c"mxcmci_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 972, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1036, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1041, i32 49 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1061, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1067, i32 43 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1086, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1100, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1126, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1128, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1144, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 381, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 353, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 442, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 445, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 450, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 454, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 459, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 463, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 487, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 490, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 841, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 803, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 244, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 64, i32 50 }
@___asan_gen_.224 = private unnamed_addr constant [41 x i8] c"../include/linux/platform_data/dma-imx.h\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 65, i32 44 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 710, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 876, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 952, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [29 x i8] c"../drivers/mmc/host/mxcmmc.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 956, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_alias316, ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_mxcmci_driver_exit, ptr @__initcall__kmod_mxcmmc__311_1226_mxcmci_driver_init6, ptr @mxcmci_driver_exit, ptr @mxcmci_finish_data._entry, ptr @mxcmci_finish_data._entry.30, ptr @mxcmci_finish_data._entry.33, ptr @mxcmci_finish_data._entry.35, ptr @mxcmci_finish_data._entry.38, ptr @mxcmci_finish_data._entry_ptr, ptr @mxcmci_finish_data._entry_ptr.32, ptr @mxcmci_finish_data._entry_ptr.34, ptr @mxcmci_finish_data._entry_ptr.37, ptr @mxcmci_finish_data._entry_ptr.40, ptr @mxcmci_probe._entry, ptr @mxcmci_probe._entry.14, ptr @mxcmci_probe._entry.8, ptr @mxcmci_probe._entry_ptr, ptr @mxcmci_probe._entry_ptr.12, ptr @mxcmci_probe._entry_ptr.17, ptr @mxcmci_set_ios._entry, ptr @mxcmci_set_ios._entry_ptr, ptr @mxcmci_start_cmd._entry, ptr @mxcmci_start_cmd._entry_ptr, ptr @mxcmci_watchdog._entry, ptr @mxcmci_watchdog._entry.57, ptr @mxcmci_watchdog._entry_ptr, ptr @mxcmci_watchdog._entry_ptr.59, ptr @mxcmci_driver, ptr @.str, ptr @mxcmci_of_match, ptr @mxcmci_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mxcmci_ops, ptr @mxcmci_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @mxcmci_probe.__key.18, ptr @.str.19, ptr @mxcmci_probe.__key.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_start_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_finish_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_finish_data._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_finish_data._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_finish_data._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_finish_data._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_watchdog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxcmci_watchdog._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxcmci_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxcmci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #10
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !138
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @mmc_alloc_host(i32 noundef 296, ptr noundef %dev) #10
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 70
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #10
  %base = getelementptr inbounds %struct.mxcmci_host, ptr %private.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %call9 to i32
  br label %out_free

if.end15:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call1, align 4
  %phys_base = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1
  %7 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys_base, align 4
  %call16 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_free_crit_edge

if.end15.out_free_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end19:                                         ; preds = %if.end15
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 3
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mxcmci_ops, ptr %ops, align 4
  %tobool20.not = icmp eq ptr %2, null
  %caps22 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 16
  br i1 %tobool20.not, label %if.else, label %if.end19.if.end23_crit_edge

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %caps22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %caps22, align 32
  %or = or i32 %10, 8
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end19.if.end23_crit_edge
  %or.sink = phi i32 [ %or, %if.else ], [ 9, %if.end19.if.end23_crit_edge ]
  %11 = ptrtoint ptr %caps22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.sink, ptr %caps22, align 32
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 24
  %12 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048, ptr %max_blk_size, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 25
  %13 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65535, ptr %max_blk_count, align 128
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 23
  %14 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 134215680, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 20
  %15 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 134215680, ptr %max_seg_size, align 16
  %call28 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %16 = ptrtoint ptr %call28 to i32
  %devtype = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1
  %17 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %devtype, align 4
  %cmp.i327.not = icmp eq ptr %call28, inttoptr (i32 2 to ptr)
  br i1 %cmp.i327.not, label %if.end23.if.end32_crit_edge, label %if.then31

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 21
  %18 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 64, ptr %max_segs, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end23.if.end32_crit_edge
  %19 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4, ptr %private.i, align 4
  %pdata34 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7
  %20 = ptrtoint ptr %pdata34 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %2, ptr %pdata34, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @mxcmci_probe.__key, i16 noundef signext 3) #10
  br i1 %tobool20.not, label %if.else43, label %if.then40

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %dat3_card_detect41 = getelementptr inbounds %struct.imxmmc_platform_data, ptr %2, i32 0, i32 5
  %21 = ptrtoint ptr %dat3_card_detect41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dat3_card_detect41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool42 = icmp ne i32 %22, 0
  br label %if.end50

if.else43:                                        ; preds = %if.end32
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 16
  %23 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps.i, align 32
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool45.not.not = icmp eq i32 %25, 0
  br i1 %tobool45.not.not, label %land.lhs.true, label %if.else43.if.end50_crit_edge

if.else43.if.end50_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true:                                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef null) #10
  %tobool.i.not = icmp eq ptr %call.i, null
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true, %if.else43.if.end50_crit_edge, %if.then40
  %dat3_card_detect.0.off0 = phi i1 [ %tobool42, %if.then40 ], [ false, %if.else43.if.end50_crit_edge ], [ %tobool.i.not, %land.lhs.true ]
  %call51 = tail call i32 @mmc_regulator_get_supply(ptr noundef nonnull %call4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.out_free_crit_edge

if.end50.out_free_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end54:                                         ; preds = %if.end50
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 8
  %28 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ocr_avail, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool55.not = icmp eq i32 %29, 0
  br i1 %tobool55.not, label %if.then56, label %if.end54.if.end67_crit_edge

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then56:                                        ; preds = %if.end54
  br i1 %tobool20.not, label %if.then56.if.else64_crit_edge, label %land.lhs.true58

if.then56.if.else64_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else64

land.lhs.true58:                                  ; preds = %if.then56
  %ocr_avail59 = getelementptr inbounds %struct.imxmmc_platform_data, ptr %2, i32 0, i32 3
  %30 = ptrtoint ptr %ocr_avail59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ocr_avail59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool60.not = icmp eq i32 %31, 0
  br i1 %tobool60.not, label %land.lhs.true58.if.else64_crit_edge, label %land.lhs.true58.if.end67.sink.split_crit_edge

land.lhs.true58.if.end67.sink.split_crit_edge:    ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.sink.split

land.lhs.true58.if.else64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else64

if.else64:                                        ; preds = %land.lhs.true58.if.else64_crit_edge, %if.then56.if.else64_crit_edge
  br label %if.end67.sink.split

if.end67.sink.split:                              ; preds = %if.else64, %land.lhs.true58.if.end67.sink.split_crit_edge
  %.sink339 = phi i32 [ 3145728, %if.else64 ], [ %31, %land.lhs.true58.if.end67.sink.split_crit_edge ]
  %32 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink339, ptr %ocr_avail, align 64
  br label %if.end67

if.end67:                                         ; preds = %if.end67.sink.split, %if.end54.if.end67_crit_edge
  %.sink = select i1 %dat3_card_detect.0.off0, i32 49152, i32 0
  %33 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %33, align 4
  %call74 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  %clk_ipg = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call74, ptr %clk_ipg, align 4
  %cmp.i328 = icmp ugt ptr %call74, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then77, label %if.end80

if.then77:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %call74 to i32
  br label %out_free

if.end80:                                         ; preds = %if.end67
  %call82 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %clk_per = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %37 = ptrtoint ptr %clk_per to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call82, ptr %clk_per, align 4
  %cmp.i329 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i329, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %call82 to i32
  br label %out_free

if.end88:                                         ; preds = %if.end80
  %call90 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.out_free_crit_edge

if.end88.out_free_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.end93:                                         ; preds = %if.end88
  %39 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk_ipg, align 4
  %call95 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end93.out_clk_per_put_crit_edge

if.end93.out_clk_per_put_crit_edge:               ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_clk_per_put

if.end98:                                         ; preds = %if.end93
  tail call fastcc void @mxcmci_softreset(ptr noundef %private.i)
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 32
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !139
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %rev_no = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1, i32 1
  %45 = ptrtoint ptr %rev_no to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %rev_no, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %43)
  %cmp101.not = icmp eq i16 %43, 4
  br i1 %cmp101.not, label %if.end110, label %if.then103

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %44 to i32
  %46 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.9, i32 noundef %conv) #13
  br label %out_clk_put

if.end110:                                        ; preds = %if.end98
  %50 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_per, align 4
  %call112 = tail call i32 @clk_get_rate(ptr noundef %51) #10
  %shr = lshr i32 %call112, 16
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 5
  %52 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr, ptr %f_min, align 4
  %53 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk_per, align 4
  %call114 = tail call i32 @clk_get_rate(ptr noundef %54) #10
  %shr115 = lshr i32 %call114, 1
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 0, i32 6
  %55 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shr115, ptr %f_max, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr.i331 = getelementptr i8, ptr %57, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i331, i16 -19411) #10, !srcloc !142
  %58 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %33, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr.i333 = getelementptr i8, ptr %62, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i333, i32 %60) #10, !srcloc !144
  %63 = ptrtoint ptr %pdata34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdata34, align 4
  %tobool118.not = icmp eq ptr %64, null
  br i1 %tobool118.not, label %if.then119, label %if.else133

if.then119:                                       ; preds = %if.end110
  %call121 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  %dma = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call121, ptr %dma, align 4
  %cmp.i334 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then124, label %if.then119.if.end144_crit_edge

if.then119.if.end144_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then124:                                       ; preds = %if.then119
  %cmp127 = icmp eq ptr %call121, inttoptr (i32 -517 to ptr)
  br i1 %cmp127, label %if.then124.out_clk_put_crit_edge, label %if.end130

if.then124.out_clk_put_crit_edge:                 ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_clk_put

if.end130:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %dma, align 4
  br label %if.end144

if.else133:                                       ; preds = %if.end110
  %call134 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 2048, i32 noundef 0) #10
  %tobool135.not = icmp eq ptr %call134, null
  br i1 %tobool135.not, label %if.else133.if.end144_crit_edge, label %if.then136

if.else133.if.end144_crit_edge:                   ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then136:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %call134 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %call134, align 4
  %dmareq = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 9
  %69 = ptrtoint ptr %dmareq to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %dmareq, align 4
  %dma_data = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 9, i32 3
  %peripheral_type = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 9, i32 4
  %70 = ptrtoint ptr %peripheral_type to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 3, ptr %peripheral_type, align 4
  %priority = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 9, i32 5
  %71 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %priority, align 4
  %72 = ptrtoint ptr %dma_data to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %68, ptr %dma_data, align 4
  %73 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #10
  %call141 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @filter, ptr noundef %private.i, ptr noundef null) #10
  %dma142 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %dma142 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call141, ptr %dma142, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then136, %if.else133.if.end144_crit_edge, %if.end130, %if.then119.if.end144_crit_edge
  %dma145 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %dma145 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma145, align 4
  %tobool146.not = icmp eq ptr %76, null
  br i1 %tobool146.not, label %do.end155, label %if.then147

if.then147:                                       ; preds = %if.end144
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %dev149 = getelementptr inbounds %struct.dma_device, ptr %78, i32 0, i32 15
  %79 = ptrtoint ptr %dev149 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev149, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 22
  %81 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %82, null
  br i1 %tobool.not.i, label %if.then147.if.end.i_crit_edge, label %land.lhs.true.i

if.then147.if.end.i_crit_edge:                    ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then147
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool2.not.i = icmp eq i32 %84, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge

land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_get_max_seg_size.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then147.if.end.i_crit_edge
  br label %dma_get_max_seg_size.exit

dma_get_max_seg_size.exit:                        ; preds = %if.end.i, %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge
  %retval.0.i = phi i32 [ 65536, %if.end.i ], [ %84, %land.lhs.true.i.dma_get_max_seg_size.exit_crit_edge ]
  %85 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i, ptr %max_seg_size, align 16
  br label %do.body159

do.end155:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 128
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.15) #13
  br label %do.body159

do.body159:                                       ; preds = %do.end155, %dma_get_max_seg_size.exit
  %datawork = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 1
  call void @__init_work(ptr noundef %datawork, i32 noundef 0) #10
  %90 = ptrtoint ptr %datawork to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -64, ptr %datawork, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.19, ptr noundef nonnull @mxcmci_probe.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry163 = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %entry163 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %entry163, ptr %entry163, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %entry163, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %93 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @mxcmci_datawork, ptr %func, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %94 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i335 = icmp eq ptr %95, null
  br i1 %tobool.not.i335, label %if.end.i336, label %do.body159.dev_name.exit_crit_edge

do.body159.dev_name.exit_crit_edge:               ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i336:                                      ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #12
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i336, %do.body159.dev_name.exit_crit_edge
  %retval.0.i337 = phi ptr [ %97, %if.end.i336 ], [ %95, %do.body159.dev_name.exit_crit_edge ]
  %call.i338 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull @mxcmci_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i337, ptr noundef %private.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool171.not = icmp eq i32 %call.i338, 0
  br i1 %tobool171.not, label %if.end173, label %dev_name.exit.out_free_dma_crit_edge

dev_name.exit.out_free_dma_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_dma

if.end173:                                        ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %98 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call4, ptr %driver_data.i.i, align 4
  %99 = ptrtoint ptr %pdata34 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdata34, align 4
  %tobool175.not = icmp eq ptr %100, null
  br i1 %tobool175.not, label %if.end173.do.body189_crit_edge, label %land.lhs.true176

if.end173.do.body189_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body189

land.lhs.true176:                                 ; preds = %if.end173
  %init = getelementptr inbounds %struct.imxmmc_platform_data, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init, align 4
  %tobool178.not = icmp eq ptr %102, null
  br i1 %tobool178.not, label %land.lhs.true176.do.body189_crit_edge, label %if.then179

land.lhs.true176.do.body189_crit_edge:            ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body189

if.then179:                                       ; preds = %land.lhs.true176
  %103 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %private.i, align 4
  %call184 = call i32 %102(ptr noundef %dev, ptr noundef nonnull @mxcmci_detect_irq, ptr noundef %104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then179.do.body189_crit_edge, label %if.then179.out_free_dma_crit_edge

if.then179.out_free_dma_crit_edge:                ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free_dma

if.then179.do.body189_crit_edge:                  ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body189

do.body189:                                       ; preds = %if.then179.do.body189_crit_edge, %land.lhs.true176.do.body189_crit_edge, %if.end173.do.body189_crit_edge
  %watchdog = getelementptr inbounds %struct.mmc_host, ptr %call4, i32 1, i32 1, i32 9, i32 5, i32 1
  call void @init_timer_key(ptr noundef %watchdog, ptr noundef nonnull @mxcmci_watchdog, i32 noundef 0, ptr noundef nonnull @.str.21, ptr noundef nonnull @mxcmci_probe.__key.20) #10
  %call192 = call i32 @mmc_add_host(ptr noundef nonnull %call4) #10
  br label %cleanup

out_free_dma:                                     ; preds = %if.then179.out_free_dma_crit_edge, %dev_name.exit.out_free_dma_crit_edge
  %ret.0 = phi i32 [ %call.i338, %dev_name.exit.out_free_dma_crit_edge ], [ %call184, %if.then179.out_free_dma_crit_edge ]
  %105 = ptrtoint ptr %dma145 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma145, align 4
  %tobool194.not = icmp eq ptr %106, null
  br i1 %tobool194.not, label %out_free_dma.out_clk_put_crit_edge, label %if.then195

out_free_dma.out_clk_put_crit_edge:               ; preds = %out_free_dma
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_clk_put

if.then195:                                       ; preds = %out_free_dma
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_release_channel(ptr noundef nonnull %106) #10
  br label %out_clk_put

out_clk_put:                                      ; preds = %if.then195, %out_free_dma.out_clk_put_crit_edge, %if.then124.out_clk_put_crit_edge, %if.then103
  %ret.1 = phi i32 [ -19, %if.then103 ], [ %ret.0, %if.then195 ], [ %ret.0, %out_free_dma.out_clk_put_crit_edge ], [ -517, %if.then124.out_clk_put_crit_edge ]
  %107 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clk_ipg, align 4
  call void @clk_disable(ptr noundef %108) #10
  call void @clk_unprepare(ptr noundef %108) #10
  br label %out_clk_per_put

out_clk_per_put:                                  ; preds = %out_clk_put, %if.end93.out_clk_per_put_crit_edge
  %ret.2 = phi i32 [ %call95, %if.end93.out_clk_per_put_crit_edge ], [ %ret.1, %out_clk_put ]
  %109 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk_per, align 4
  call void @clk_disable(ptr noundef %110) #10
  call void @clk_unprepare(ptr noundef %110) #10
  br label %out_free

out_free:                                         ; preds = %out_clk_per_put, %if.end88.out_free_crit_edge, %if.then85, %if.then77, %if.end50.out_free_crit_edge, %if.end15.out_free_crit_edge, %if.then12
  %ret.3 = phi i32 [ %4, %if.then12 ], [ %call16, %if.end15.out_free_crit_edge ], [ %call51, %if.end50.out_free_crit_edge ], [ %36, %if.then77 ], [ %38, %if.then85 ], [ %call90, %if.end88.out_free_crit_edge ], [ %ret.2, %out_clk_per_put ]
  call void @mmc_free_host(ptr noundef nonnull %call4) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.body189, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_free ], [ 0, %do.body189 ], [ %call2, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mmc_remove_host(ptr noundef %1) #10
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %exit = getelementptr inbounds %struct.imxmmc_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %exit, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void %5(ptr noundef %dev, ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dma = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_release_channel(ptr noundef nonnull %7) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %clk_per = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %9) #10
  tail call void @clk_unprepare(ptr noundef %9) #10
  %clk_ipg = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %11) #10
  tail call void @clk_unprepare(ptr noundef %11) #10
  tail call void @mmc_free_host(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxcmci_softreset(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_softreset.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_softreset, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_softreset.__UNIQUE_ID_ddebug303, ptr noundef %3, ptr noundef nonnull @.str.49) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 2048) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 2560) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %19, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 512) #10, !srcloc !142
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -256) #10, !srcloc !142
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @filter(ptr nocapture noundef %chan, ptr noundef %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(9) @.str.50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %imx_dma_is_general_purpose.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

imx_dma_is_general_purpose.exit:                  ; preds = %entry
  %call5.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(8) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i.not = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i.not, label %imx_dma_is_general_purpose.exit.if.end_crit_edge, label %imx_dma_is_general_purpose.exit.cleanup_crit_edge

imx_dma_is_general_purpose.exit.cleanup_crit_edge: ; preds = %imx_dma_is_general_purpose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

imx_dma_is_general_purpose.exit.if.end_crit_edge: ; preds = %imx_dma_is_general_purpose.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %imx_dma_is_general_purpose.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %dma_data = getelementptr inbounds %struct.mxcmci_host, ptr %param, i32 0, i32 26
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dma_data, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %imx_dma_is_general_purpose.exit.cleanup_crit_edge
  %tobool.not4 = phi i1 [ false, %imx_dma_is_general_purpose.exit.cleanup_crit_edge ], [ true, %if.end ]
  ret i1 %tobool.not4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_datawork(ptr noundef %work) #2 align 64 {
entry:
  %tmp.i72.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  %req.i = getelementptr i8, ptr %work, i32 -40
  %0 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req.i, align 4
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %data2.i = getelementptr i8, ptr %work, i32 -32
  %4 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %data2.i, align 4
  %datasize.i = getelementptr i8, ptr %work, i32 -28
  %5 = ptrtoint ptr %datasize.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %datasize.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sg_len12.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %sg_len12.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_len12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13168.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp13168.not.i, label %if.then.i.mxcmci_transfer_data.exit_crit_edge, label %for.body.lr.ph.i

if.then.i.mxcmci_transfer_data.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %sg3.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %10 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg3.i, align 4
  %base.i.i.i.i = getelementptr i8, ptr %work, i32 -80
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0167.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %sg.0166.i = phi ptr [ %11, %for.body.lr.ph.i ], [ %call9.i, %if.end.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %sg.0166.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg.0166.i, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !146

do.body2.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

sg_virt.exit.i:                                   ; preds = %for.body.i
  %and.i.i.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %14) #10
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0166.i, i32 0, i32 1
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %16
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0166.i, i32 0, i32 2
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp61.i.i = icmp sgt i32 %18, 3
  br i1 %cmp61.i.i, label %sg_virt.exit.i.while.body.i.i_crit_edge, label %sg_virt.exit.i.while.end.i.i_crit_edge

sg_virt.exit.i.while.end.i.i_crit_edge:           ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

sg_virt.exit.i.while.body.i.i_crit_edge:          ; preds = %sg_virt.exit.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %sg_virt.exit.i.while.body.i.i_crit_edge
  %buf.063.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %sg_virt.exit.i.while.body.i.i_crit_edge ]
  %bytes.addr.062.i.i = phi i32 [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %18, %sg_virt.exit.i.while.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %19, 100
  %20 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i.i.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i.i) #10, !srcloc !148
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and23.i.i.i = and i32 %23, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i.i)
  %tobool.not24.i.i.i = icmp eq i32 %and23.i.i.i, 0
  br i1 %tobool.not24.i.i.i, label %while.body.i.i.if.end.i.i.i_crit_edge, label %while.body.i.i.mxcmci_transfer_data.exit_crit_edge

while.body.i.i.mxcmci_transfer_data.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

while.body.i.i.if.end.i.i.i_crit_edge:            ; preds = %while.body.i.i
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i.if.end.i.i.i_crit_edge, %while.body.i.i.if.end.i.i.i_crit_edge
  %24 = phi i32 [ %31, %do.end.i.i.i.if.end.i.i.i_crit_edge ], [ %23, %while.body.i.i.if.end.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add.i.i.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %if.end2.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr) #10
  %clock.i.i.i = getelementptr i8, ptr %work, i32 -4
  %26 = ptrtoint ptr %clock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clock.i.i.i, align 4
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %add.ptr, i32 noundef %27) #10
  br label %mxcmci_transfer_data.exit

if.end2.i.i.i:                                    ; preds = %if.end.i.i.i
  %and3.i.i.i = and i32 %24, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %do.end.i.i.i, label %if.end.i.i

do.end.i.i.i:                                     ; preds = %if.end2.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !151
  %28 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !148
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i.i63.i = and i32 %31, 47
  %tobool.not.i.i.i = icmp eq i32 %and.i.i63.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i.mxcmci_transfer_data.exit_crit_edge

do.end.i.i.i.mxcmci_transfer_data.exit_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

do.end.i.i.i.if.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.end.i.i:                                       ; preds = %if.end2.i.i.i
  %32 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 56
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %incdec.ptr.i.i = getelementptr i32, ptr %buf.063.i.i, i32 1
  %35 = ptrtoint ptr %buf.063.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %buf.063.i.i, align 4
  %sub.i.i = add nsw i32 %bytes.addr.062.i.i, -4
  %cmp.i.i = icmp sgt i32 %bytes.addr.062.i.i, 7
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.while.end.i.i_crit_edge

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %sg_virt.exit.i.while.end.i.i_crit_edge
  %bytes.addr.0.lcssa.i.i = phi i32 [ %18, %sg_virt.exit.i.while.end.i.i_crit_edge ], [ %sub.i.i, %if.end.i.i.while.end.i.i_crit_edge ]
  %buf.0.lcssa.i.i = phi ptr [ %add.ptr.i.i, %sg_virt.exit.i.while.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end.i.i.while.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.lcssa.i.i)
  %tobool2.not.i.i = icmp eq i32 %bytes.addr.0.lcssa.i.i, 0
  br i1 %tobool2.not.i.i, label %while.end.i.i.if.end.i_crit_edge, label %if.then3.i.i

while.end.i.i.if.end.i_crit_edge:                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then3.i.i:                                     ; preds = %while.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.i23.i.i = add i32 %36, 100
  %37 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i22.i25.i.i = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i25.i.i) #10, !srcloc !148
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and23.i26.i.i = and i32 %40, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i26.i.i)
  %tobool.not24.i27.i.i = icmp eq i32 %and23.i26.i.i, 0
  br i1 %tobool.not24.i27.i.i, label %if.then3.i.i.if.end.i30.i.i_crit_edge, label %if.then3.i.i.cleanup11.critedge.i.i_crit_edge

if.then3.i.i.cleanup11.critedge.i.i_crit_edge:    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11.critedge.i.i

if.then3.i.i.if.end.i30.i.i_crit_edge:            ; preds = %if.then3.i.i
  br label %if.end.i30.i.i

if.end.i30.i.i:                                   ; preds = %do.end.i39.i.i.if.end.i30.i.i_crit_edge, %if.then3.i.i.if.end.i30.i.i_crit_edge
  %41 = phi i32 [ %48, %do.end.i39.i.i.if.end.i30.i.i_crit_edge ], [ %40, %if.then3.i.i.if.end.i30.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub.i28.i.i = sub i32 %add.i23.i.i, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i28.i.i)
  %cmp.i29.i.i = icmp slt i32 %sub.i28.i.i, 0
  br i1 %cmp.i29.i.i, label %if.then1.i32.i.i, label %if.end2.i35.i.i

if.then1.i32.i.i:                                 ; preds = %if.end.i30.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr) #10
  %clock.i31.i.i = getelementptr i8, ptr %work, i32 -4
  %43 = ptrtoint ptr %clock.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clock.i31.i.i, align 4
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %add.ptr, i32 noundef %44) #10
  br label %cleanup11.critedge.i.i

if.end2.i35.i.i:                                  ; preds = %if.end.i30.i.i
  %and3.i33.i.i = and i32 %41, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i33.i.i)
  %tobool4.not.i34.i.i = icmp eq i32 %and3.i33.i.i, 0
  br i1 %tobool4.not.i34.i.i, label %do.end.i39.i.i, label %if.end7.i.i

do.end.i39.i.i:                                   ; preds = %if.end2.i35.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !151
  %45 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i36.i.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i.i) #10, !srcloc !148
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i37.i.i = and i32 %48, 47
  %tobool.not.i38.i.i = icmp eq i32 %and.i37.i.i, 0
  br i1 %tobool.not.i38.i.i, label %do.end.i39.i.i.if.end.i30.i.i_crit_edge, label %do.end.i39.i.i.cleanup11.critedge.i.i_crit_edge

do.end.i39.i.i.cleanup11.critedge.i.i_crit_edge:  ; preds = %do.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11.critedge.i.i

do.end.i39.i.i.if.end.i30.i.i_crit_edge:          ; preds = %do.end.i39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i30.i.i

if.end7.i.i:                                      ; preds = %if.end2.i35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i43.i.i = getelementptr i8, ptr %50, i32 56
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %52 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tmp.i.i, align 4
  %53 = call ptr @memcpy(ptr %buf.0.lcssa.i.i, ptr %tmp.i.i, i32 %bytes.addr.0.lcssa.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i)
  br label %if.end.i

cleanup11.critedge.i.i:                           ; preds = %do.end.i39.i.i.cleanup11.critedge.i.i_crit_edge, %if.then1.i32.i.i, %if.then3.i.i.cleanup11.critedge.i.i_crit_edge
  %retval.0.i40.ph.i.i = phi i32 [ 1, %if.then1.i32.i.i ], [ %48, %do.end.i39.i.i.cleanup11.critedge.i.i_crit_edge ], [ %40, %if.then3.i.i.cleanup11.critedge.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i)
  br label %mxcmci_transfer_data.exit

if.end.i:                                         ; preds = %if.end7.i.i, %while.end.i.i.if.end.i_crit_edge
  %54 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length.i, align 4
  %56 = ptrtoint ptr %datasize.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %datasize.i, align 4
  %add.i = add i32 %57, %55
  store i32 %add.i, ptr %datasize.i, align 4
  %inc.i = add nuw i32 %i.0167.i, 1
  %call9.i = tail call ptr @sg_next(ptr noundef %sg.0166.i) #10
  %58 = ptrtoint ptr %sg_len12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sg_len12.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %59
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mxcmci_transfer_data.exit_crit_edge

if.end.i.mxcmci_transfer_data.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.else.i:                                        ; preds = %entry
  br i1 %cmp13168.not.i, label %if.else.i.for.end27.i_crit_edge, label %for.body14.lr.ph.i

if.else.i.for.end27.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

for.body14.lr.ph.i:                               ; preds = %if.else.i
  %sg10.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %60 = ptrtoint ptr %sg10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sg10.i, align 4
  %base.i.i.i73.i = getelementptr i8, ptr %work, i32 -80
  br label %for.body14.i

for.body14.i:                                     ; preds = %if.end20.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %i.1170.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc25.i, %if.end20.i.for.body14.i_crit_edge ]
  %sg.1169.i = phi ptr [ %61, %for.body14.lr.ph.i ], [ %call26.i, %if.end20.i.for.body14.i_crit_edge ]
  %62 = ptrtoint ptr %sg.1169.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sg.1169.i, align 4
  %and.i.i.i64.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i64.i)
  %tobool.i.not.i.i65.i = icmp eq i32 %and.i.i.i64.i, 0
  br i1 %tobool.i.not.i.i65.i, label %sg_virt.exit71.i, label %do.body2.i.i66.i, !prof !146

do.body2.i.i66.i:                                 ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #10, !srcloc !147
  unreachable

sg_virt.exit71.i:                                 ; preds = %for.body14.i
  %and.i.i67.i = and i32 %63, -4
  %64 = inttoptr i32 %and.i.i67.i to ptr
  %call1.i68.i = tail call ptr @page_address(ptr noundef %64) #10
  %offset.i69.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1169.i, i32 0, i32 1
  %65 = ptrtoint ptr %offset.i69.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i69.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %call1.i68.i, i32 %66
  %length16.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1169.i, i32 0, i32 2
  %67 = ptrtoint ptr %length16.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp82.i.i = icmp sgt i32 %68, 3
  br i1 %cmp82.i.i, label %sg_virt.exit71.i.while.body.i79.i_crit_edge, label %sg_virt.exit71.i.while.end.i99.i_crit_edge

sg_virt.exit71.i.while.end.i99.i_crit_edge:       ; preds = %sg_virt.exit71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i99.i

sg_virt.exit71.i.while.body.i79.i_crit_edge:      ; preds = %sg_virt.exit71.i
  br label %while.body.i79.i

while.body.i79.i:                                 ; preds = %if.end.i96.i.while.body.i79.i_crit_edge, %sg_virt.exit71.i.while.body.i79.i_crit_edge
  %buf.084.i.i = phi ptr [ %incdec.ptr.i92.i, %if.end.i96.i.while.body.i79.i_crit_edge ], [ %add.ptr.i70.i, %sg_virt.exit71.i.while.body.i79.i_crit_edge ]
  %bytes.addr.083.i.i = phi i32 [ %sub.i94.i, %if.end.i96.i.while.body.i79.i_crit_edge ], [ %68, %sg_virt.exit71.i.while.body.i79.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %add.i.i75.i = add i32 %69, 100
  %70 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i22.i.i76.i = getelementptr i8, ptr %71, i32 4
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i76.i) #10, !srcloc !148
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and23.i.i77.i = and i32 %73, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i77.i)
  %tobool.not24.i.i78.i = icmp eq i32 %and23.i.i77.i, 0
  br i1 %tobool.not24.i.i78.i, label %while.body.i79.i.if.end.i.i82.i_crit_edge, label %while.body.i79.i.mxcmci_transfer_data.exit_crit_edge

while.body.i79.i.mxcmci_transfer_data.exit_crit_edge: ; preds = %while.body.i79.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

while.body.i79.i.if.end.i.i82.i_crit_edge:        ; preds = %while.body.i79.i
  br label %if.end.i.i82.i

if.end.i.i82.i:                                   ; preds = %do.end.i.i91.i.if.end.i.i82.i_crit_edge, %while.body.i79.i.if.end.i.i82.i_crit_edge
  %74 = phi i32 [ %81, %do.end.i.i91.i.if.end.i.i82.i_crit_edge ], [ %73, %while.body.i79.i.if.end.i.i82.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i80.i = sub i32 %add.i.i75.i, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i80.i)
  %cmp.i.i81.i = icmp slt i32 %sub.i.i80.i, 0
  br i1 %cmp.i.i81.i, label %if.then1.i.i84.i, label %if.end2.i.i87.i

if.then1.i.i84.i:                                 ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr) #10
  %clock.i.i83.i = getelementptr i8, ptr %work, i32 -4
  %76 = ptrtoint ptr %clock.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %clock.i.i83.i, align 4
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %add.ptr, i32 noundef %77) #10
  br label %mxcmci_transfer_data.exit

if.end2.i.i87.i:                                  ; preds = %if.end.i.i82.i
  %and3.i.i85.i = and i32 %74, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i85.i)
  %tobool4.not.i.i86.i = icmp eq i32 %and3.i.i85.i, 0
  br i1 %tobool4.not.i.i86.i, label %do.end.i.i91.i, label %if.end.i96.i

do.end.i.i91.i:                                   ; preds = %if.end2.i.i87.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !151
  %78 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i.i.i88.i = getelementptr i8, ptr %79, i32 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i88.i) #10, !srcloc !148
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i.i89.i = and i32 %81, 47
  %tobool.not.i.i90.i = icmp eq i32 %and.i.i89.i, 0
  br i1 %tobool.not.i.i90.i, label %do.end.i.i91.i.if.end.i.i82.i_crit_edge, label %do.end.i.i91.i.mxcmci_transfer_data.exit_crit_edge

do.end.i.i91.i.mxcmci_transfer_data.exit_crit_edge: ; preds = %do.end.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

do.end.i.i91.i.if.end.i.i82.i_crit_edge:          ; preds = %do.end.i.i91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i82.i

if.end.i96.i:                                     ; preds = %if.end2.i.i87.i
  %incdec.ptr.i92.i = getelementptr i32, ptr %buf.084.i.i, i32 1
  %82 = ptrtoint ptr %buf.084.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %buf.084.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %84 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i.i93.i = getelementptr i8, ptr %85, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93.i, i32 %83) #10, !srcloc !144
  %sub.i94.i = add nsw i32 %bytes.addr.083.i.i, -4
  %cmp.i95.i = icmp sgt i32 %bytes.addr.083.i.i, 7
  br i1 %cmp.i95.i, label %if.end.i96.i.while.body.i79.i_crit_edge, label %if.end.i96.i.while.end.i99.i_crit_edge

if.end.i96.i.while.end.i99.i_crit_edge:           ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i99.i

if.end.i96.i.while.body.i79.i_crit_edge:          ; preds = %if.end.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i79.i

while.end.i99.i:                                  ; preds = %if.end.i96.i.while.end.i99.i_crit_edge, %sg_virt.exit71.i.while.end.i99.i_crit_edge
  %bytes.addr.0.lcssa.i97.i = phi i32 [ %68, %sg_virt.exit71.i.while.end.i99.i_crit_edge ], [ %sub.i94.i, %if.end.i96.i.while.end.i99.i_crit_edge ]
  %buf.0.lcssa.i98.i = phi ptr [ %add.ptr.i70.i, %sg_virt.exit71.i.while.end.i99.i_crit_edge ], [ %incdec.ptr.i92.i, %if.end.i96.i.while.end.i99.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.lcssa.i97.i)
  %tobool1.not.i.i = icmp eq i32 %bytes.addr.0.lcssa.i97.i, 0
  br i1 %tobool1.not.i.i, label %while.end.i99.i.if.end8.i.i_crit_edge, label %if.then2.i.i

while.end.i99.i.if.end8.i.i_crit_edge:            ; preds = %while.end.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then2.i.i:                                     ; preds = %while.end.i99.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i72.i)
  %86 = ptrtoint ptr %tmp.i72.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %tmp.i72.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add.i23.i100.i = add i32 %87, 100
  %88 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i22.i25.i102.i = getelementptr i8, ptr %89, i32 4
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i25.i102.i) #10, !srcloc !148
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and23.i26.i103.i = and i32 %91, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i26.i103.i)
  %tobool.not24.i27.i104.i = icmp eq i32 %and23.i26.i103.i, 0
  br i1 %tobool.not24.i27.i104.i, label %if.then2.i.i.if.end.i30.i107.i_crit_edge, label %if.then2.i.i.cleanup10.critedge.i.i_crit_edge

if.then2.i.i.cleanup10.critedge.i.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10.critedge.i.i

if.then2.i.i.if.end.i30.i107.i_crit_edge:         ; preds = %if.then2.i.i
  br label %if.end.i30.i107.i

if.end.i30.i107.i:                                ; preds = %do.end.i39.i116.i.if.end.i30.i107.i_crit_edge, %if.then2.i.i.if.end.i30.i107.i_crit_edge
  %92 = phi i32 [ %99, %do.end.i39.i116.i.if.end.i30.i107.i_crit_edge ], [ %91, %if.then2.i.i.if.end.i30.i107.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub.i28.i105.i = sub i32 %add.i23.i100.i, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i28.i105.i)
  %cmp.i29.i106.i = icmp slt i32 %sub.i28.i105.i, 0
  br i1 %cmp.i29.i106.i, label %if.then1.i32.i109.i, label %if.end2.i35.i112.i

if.then1.i32.i109.i:                              ; preds = %if.end.i30.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr) #10
  %clock.i31.i108.i = getelementptr i8, ptr %work, i32 -4
  %94 = ptrtoint ptr %clock.i31.i108.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %clock.i31.i108.i, align 4
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %add.ptr, i32 noundef %95) #10
  br label %cleanup10.critedge.i.i

if.end2.i35.i112.i:                               ; preds = %if.end.i30.i107.i
  %and3.i33.i110.i = and i32 %92, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i33.i110.i)
  %tobool4.not.i34.i111.i = icmp eq i32 %and3.i33.i110.i, 0
  br i1 %tobool4.not.i34.i111.i, label %do.end.i39.i116.i, label %if.end6.i.i

do.end.i39.i116.i:                                ; preds = %if.end2.i35.i112.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !151
  %96 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i.i36.i113.i = getelementptr i8, ptr %97, i32 4
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36.i113.i) #10, !srcloc !148
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i37.i114.i = and i32 %99, 47
  %tobool.not.i38.i115.i = icmp eq i32 %and.i37.i114.i, 0
  br i1 %tobool.not.i38.i115.i, label %do.end.i39.i116.i.if.end.i30.i107.i_crit_edge, label %do.end.i39.i116.i.cleanup10.critedge.i.i_crit_edge

do.end.i39.i116.i.cleanup10.critedge.i.i_crit_edge: ; preds = %do.end.i39.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10.critedge.i.i

do.end.i39.i116.i.if.end.i30.i107.i_crit_edge:    ; preds = %do.end.i39.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i30.i107.i

if.end6.i.i:                                      ; preds = %if.end2.i35.i112.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = call ptr @memcpy(ptr %tmp.i72.i, ptr %buf.0.lcssa.i98.i, i32 %bytes.addr.0.lcssa.i97.i)
  %101 = ptrtoint ptr %tmp.i72.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %tmp.i72.i.0.tmp.i72.i.0.tmp.i72.0.tmp.i72.0.tmp.0.tmp.0.tmp.0..i.i = load i32, ptr %tmp.i72.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i43.i117.i = getelementptr i8, ptr %103, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i117.i, i32 %tmp.i72.i.0.tmp.i72.i.0.tmp.i72.0.tmp.i72.0.tmp.0.tmp.0.tmp.0..i.i) #10, !srcloc !144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i72.i)
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end6.i.i, %while.end.i99.i.if.end8.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %add.i44.i.i = add i32 %104, 100
  %105 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i22.i46.i.i = getelementptr i8, ptr %106, i32 4
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i46.i.i) #10, !srcloc !148
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and23.i47.i.i = and i32 %108, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i47.i.i)
  %tobool.not24.i48.i.i = icmp eq i32 %and23.i47.i.i, 0
  br i1 %tobool.not24.i48.i.i, label %if.end8.i.i.if.end.i51.i.i_crit_edge, label %if.end8.i.i.mxcmci_transfer_data.exit_crit_edge

if.end8.i.i.mxcmci_transfer_data.exit_crit_edge:  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

if.end8.i.i.if.end.i51.i.i_crit_edge:             ; preds = %if.end8.i.i
  br label %if.end.i51.i.i

if.end.i51.i.i:                                   ; preds = %do.end.i60.i.i.if.end.i51.i.i_crit_edge, %if.end8.i.i.if.end.i51.i.i_crit_edge
  %109 = phi i32 [ %116, %do.end.i60.i.i.if.end.i51.i.i_crit_edge ], [ %108, %if.end8.i.i.if.end.i51.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %sub.i49.i.i = sub i32 %add.i44.i.i, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i49.i.i)
  %cmp.i50.i.i = icmp slt i32 %sub.i49.i.i, 0
  br i1 %cmp.i50.i.i, label %if.then1.i53.i.i, label %if.end2.i56.i.i

if.then1.i53.i.i:                                 ; preds = %if.end.i51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr) #10
  %clock.i52.i.i = getelementptr i8, ptr %work, i32 -4
  %111 = ptrtoint ptr %clock.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %clock.i52.i.i, align 4
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %add.ptr, i32 noundef %112) #10
  br label %mxcmci_transfer_data.exit

if.end2.i56.i.i:                                  ; preds = %if.end.i51.i.i
  %and3.i54.i.i = and i32 %109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i54.i.i)
  %tobool4.not.i55.i.i = icmp eq i32 %and3.i54.i.i, 0
  br i1 %tobool4.not.i55.i.i, label %do.end.i60.i.i, label %if.end20.i

do.end.i60.i.i:                                   ; preds = %if.end2.i56.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !151
  %113 = ptrtoint ptr %base.i.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i.i73.i, align 4
  %add.ptr.i.i57.i.i = getelementptr i8, ptr %114, i32 4
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57.i.i) #10, !srcloc !148
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i58.i.i = and i32 %116, 47
  %tobool.not.i59.i.i = icmp eq i32 %and.i58.i.i, 0
  br i1 %tobool.not.i59.i.i, label %do.end.i60.i.i.if.end.i51.i.i_crit_edge, label %do.end.i60.i.i.mxcmci_transfer_data.exit_crit_edge

do.end.i60.i.i.mxcmci_transfer_data.exit_crit_edge: ; preds = %do.end.i60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

do.end.i60.i.i.if.end.i51.i.i_crit_edge:          ; preds = %do.end.i60.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i51.i.i

cleanup10.critedge.i.i:                           ; preds = %do.end.i39.i116.i.cleanup10.critedge.i.i_crit_edge, %if.then1.i32.i109.i, %if.then2.i.i.cleanup10.critedge.i.i_crit_edge
  %retval.0.i40.ph.i118.i = phi i32 [ 1, %if.then1.i32.i109.i ], [ %99, %do.end.i39.i116.i.cleanup10.critedge.i.i_crit_edge ], [ %91, %if.then2.i.i.cleanup10.critedge.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i72.i)
  br label %mxcmci_transfer_data.exit

if.end20.i:                                       ; preds = %if.end2.i56.i.i
  %117 = ptrtoint ptr %length16.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %length16.i, align 4
  %119 = ptrtoint ptr %datasize.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %datasize.i, align 4
  %add23.i = add i32 %120, %118
  store i32 %add23.i, ptr %datasize.i, align 4
  %inc25.i = add nuw i32 %i.1170.i, 1
  %call26.i = tail call ptr @sg_next(ptr noundef %sg.1169.i) #10
  %121 = ptrtoint ptr %sg_len12.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sg_len12.i, align 4
  %cmp13.i = icmp ult i32 %inc25.i, %122
  br i1 %cmp13.i, label %if.end20.i.for.body14.i_crit_edge, label %if.end20.i.for.end27.i_crit_edge

if.end20.i.for.end27.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end27.i

if.end20.i.for.body14.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14.i

for.end27.i:                                      ; preds = %if.end20.i.for.end27.i_crit_edge, %if.else.i.for.end27.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %123, 100
  %base.i.i.i = getelementptr i8, ptr %work, i32 -80
  %124 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i22.i.i = getelementptr i8, ptr %125, i32 4
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i.i) #10, !srcloc !148
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and23.i.i = and i32 %127, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool.not24.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool.not24.i.i, label %for.end27.i.if.end.i122.i_crit_edge, label %for.end27.i.mxcmci_transfer_data.exit_crit_edge

for.end27.i.mxcmci_transfer_data.exit_crit_edge:  ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

for.end27.i.if.end.i122.i_crit_edge:              ; preds = %for.end27.i
  br label %if.end.i122.i

if.end.i122.i:                                    ; preds = %do.end.i.i.if.end.i122.i_crit_edge, %for.end27.i.if.end.i122.i_crit_edge
  %128 = phi i32 [ %135, %do.end.i.i.if.end.i122.i_crit_edge ], [ %127, %for.end27.i.if.end.i122.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  %sub.i120.i = sub i32 %add.i.i, %129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i120.i)
  %cmp.i121.i = icmp slt i32 %sub.i120.i, 0
  br i1 %cmp.i121.i, label %if.then1.i.i, label %if.end2.i.i

if.then1.i.i:                                     ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr) #10
  %clock.i.i = getelementptr i8, ptr %work, i32 -4
  %130 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %clock.i.i, align 4
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %add.ptr, i32 noundef %131) #10
  br label %mxcmci_transfer_data.exit

if.end2.i.i:                                      ; preds = %if.end.i122.i
  %and3.i.i = and i32 %128, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %if.end2.i.i.mxcmci_transfer_data.exit_crit_edge

if.end2.i.i.mxcmci_transfer_data.exit_crit_edge:  ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

do.end.i.i:                                       ; preds = %if.end2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !151
  %132 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i123.i = getelementptr i8, ptr %133, i32 4
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i123.i) #10, !srcloc !148
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and.i.i = and i32 %135, 47
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.if.end.i122.i_crit_edge, label %do.end.i.i.mxcmci_transfer_data.exit_crit_edge

do.end.i.i.mxcmci_transfer_data.exit_crit_edge:   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_transfer_data.exit

do.end.i.i.if.end.i122.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i122.i

mxcmci_transfer_data.exit:                        ; preds = %do.end.i.i.mxcmci_transfer_data.exit_crit_edge, %if.end2.i.i.mxcmci_transfer_data.exit_crit_edge, %if.then1.i.i, %for.end27.i.mxcmci_transfer_data.exit_crit_edge, %cleanup10.critedge.i.i, %do.end.i60.i.i.mxcmci_transfer_data.exit_crit_edge, %if.then1.i53.i.i, %if.end8.i.i.mxcmci_transfer_data.exit_crit_edge, %do.end.i.i91.i.mxcmci_transfer_data.exit_crit_edge, %if.then1.i.i84.i, %while.body.i79.i.mxcmci_transfer_data.exit_crit_edge, %if.end.i.mxcmci_transfer_data.exit_crit_edge, %cleanup11.critedge.i.i, %do.end.i.i.i.mxcmci_transfer_data.exit_crit_edge, %if.then1.i.i.i, %while.body.i.i.mxcmci_transfer_data.exit_crit_edge, %if.then.i.mxcmci_transfer_data.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.then1.i.i.i ], [ %retval.0.i40.ph.i.i, %cleanup11.critedge.i.i ], [ 1, %if.then1.i.i84.i ], [ 1, %if.then1.i53.i.i ], [ %retval.0.i40.ph.i118.i, %cleanup10.critedge.i.i ], [ %127, %for.end27.i.mxcmci_transfer_data.exit_crit_edge ], [ 1, %if.then1.i.i ], [ 0, %if.then.i.mxcmci_transfer_data.exit_crit_edge ], [ 0, %if.end2.i.i.mxcmci_transfer_data.exit_crit_edge ], [ %135, %do.end.i.i.mxcmci_transfer_data.exit_crit_edge ], [ %81, %do.end.i.i91.i.mxcmci_transfer_data.exit_crit_edge ], [ %116, %do.end.i60.i.i.mxcmci_transfer_data.exit_crit_edge ], [ %73, %while.body.i79.i.mxcmci_transfer_data.exit_crit_edge ], [ %108, %if.end8.i.i.mxcmci_transfer_data.exit_crit_edge ], [ %31, %do.end.i.i.i.mxcmci_transfer_data.exit_crit_edge ], [ %23, %while.body.i.i.mxcmci_transfer_data.exit_crit_edge ], [ 0, %if.end.i.mxcmci_transfer_data.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr i8, ptr %work, i32 -80
  %136 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1572864) #10, !srcloc !144
  %call1 = tail call fastcc i32 @mxcmci_finish_data(ptr noundef %add.ptr, i32 noundef %retval.0.i)
  %138 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %req.i, align 4
  %stop = getelementptr inbounds %struct.mmc_request, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stop, align 4
  %tobool.not = icmp eq ptr %141, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %mxcmci_transfer_data.exit
  %call4 = tail call fastcc i32 @mxcmci_start_cmd(ptr noundef %add.ptr, ptr noundef nonnull %141, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %req.i, align 4
  %default_irq_mask.i = getelementptr i8, ptr %work, i32 -56
  %144 = ptrtoint ptr %default_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %default_irq_mask.i, align 4
  %lock.i = getelementptr i8, ptr %work, i32 44
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %use_sdio.i = getelementptr i8, ptr %work, i32 -52
  %146 = ptrtoint ptr %use_sdio.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %use_sdio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i20 = icmp eq i32 %147, 0
  %or.i = or i32 %145, 8192
  %spec.select.i = select i1 %tobool.not.i20, i32 %145, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %148 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %149 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %150, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %148) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %mxcmci_transfer_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  %default_irq_mask.i22 = getelementptr i8, ptr %work, i32 -56
  %151 = ptrtoint ptr %default_irq_mask.i22 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %default_irq_mask.i22, align 4
  %lock.i23 = getelementptr i8, ptr %work, i32 44
  %call2.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i23) #10
  %use_sdio.i25 = getelementptr i8, ptr %work, i32 -52
  %153 = ptrtoint ptr %use_sdio.i25 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %use_sdio.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i26 = icmp eq i32 %154, 0
  %or.i27 = or i32 %152, 8192
  %spec.select.i28 = select i1 %tobool.not.i26, i32 %152, i32 %or.i27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %155 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i28) #10
  %156 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %157, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 %155) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i23, i32 noundef %call2.i24) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %if.then6
  %.sink132 = phi ptr [ %139, %if.else ], [ %143, %if.then6 ]
  %158 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %req.i, align 4
  %cmd.i32 = getelementptr i8, ptr %work, i32 -36
  %159 = ptrtoint ptr %cmd.i32 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr null, ptr %cmd.i32, align 4
  %160 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %data2.i, align 4
  %161 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_request_done(ptr noundef %162, ptr noundef %.sink132) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !148
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %and = and i32 %3, -22529
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i66 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %4) #10, !srcloc !144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devid, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_irq.__UNIQUE_ID_ddebug308, ptr noundef %10, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.52, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %and4 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.end.land.end_crit_edge, label %land.rhs

do.end.land.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %use_sdio = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 8
  %11 = ptrtoint ptr %use_sdio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %use_sdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6 = icmp ne i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end.land.end_crit_edge
  %13 = phi i1 [ false, %do.end.land.end_crit_edge ], [ %tobool6, %land.rhs ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %do_dma.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 6
  %14 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %do_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  %and11 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %land.end.if.end14_crit_edge, label %if.then13

land.end.if.end14_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 1048576) #10, !srcloc !144
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.end.if.end14_crit_edge
  br i1 %13, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 4194304) #10, !srcloc !144
  %20 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %devid, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %25(ptr noundef %21, i32 noundef 0) #10
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 49
  %26 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 47
  %27 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then16.if.end18_crit_edge, label %if.then.i

if.then16.if.end18_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %28) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.then16.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  %and19 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end22_crit_edge, label %if.then21

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then21:                                        ; preds = %if.end18
  tail call fastcc void @mxcmci_read_response(ptr noundef %devid, i32 noundef %3) #10
  %cmd.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 12
  %29 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 13
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %tobool.not.i71 = icmp eq ptr %31, null
  br i1 %tobool.not.i71, label %land.lhs.true.i, label %if.end.thread.i

land.lhs.true.i:                                  ; preds = %if.then21
  %req.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 11
  %32 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %req.i, align 4
  %tobool1.not.i = icmp eq ptr %33, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.end22_crit_edge, label %if.then.i72

land.lhs.true.i.if.end22_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then.i72:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %default_irq_mask.i.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 7
  %34 = ptrtoint ptr %default_irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %default_irq_mask.i.i, align 4
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %use_sdio.i.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 8
  %36 = ptrtoint ptr %use_sdio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %use_sdio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  %or.i.i = or i32 %35, 8192
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %35, i32 %or.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %38 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #10
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %40, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %38) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i.i) #10
  %41 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %req.i, align 4
  %42 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cmd.i, align 4
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %data.i, align 4
  %44 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %devid, align 4
  tail call void @mmc_request_done(ptr noundef %45, ptr noundef nonnull %33) #10
  br label %if.end22

if.end.thread.i:                                  ; preds = %if.then21
  %46 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %do_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool3.not19.i = icmp eq i32 %47, 0
  br i1 %tobool3.not19.i, label %if.then7.i, label %if.end.thread.i.if.end22_crit_edge

if.end.thread.i.if.end22_crit_edge:               ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then7.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #12
  %datawork.i = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %datawork.i) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then7.i, %if.end.thread.i.if.end22_crit_edge, %if.then.i72, %land.lhs.true.i.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %49 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %do_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool24.not = icmp eq i32 %50, 0
  %or.cond62 = select i1 %tobool24.not, i1 true, i1 %tobool12.not
  br i1 %or.cond62, label %if.end22.if.end30_crit_edge, label %if.then28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %watchdog = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 27
  %call29 = tail call i32 @del_timer(ptr noundef %watchdog) #10
  tail call fastcc void @mxcmci_data_done(ptr noundef %devid, i32 noundef %3)
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  %default_irq_mask = getelementptr inbounds %struct.mxcmci_host, ptr %devid, i32 0, i32 7
  %51 = ptrtoint ptr %default_irq_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %default_irq_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool31.not = icmp eq i32 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %3)
  %tobool34.not = icmp ult i32 %3, 1073741824
  %or.cond63 = select i1 %tobool31.not, i1 true, i1 %tobool34.not
  br i1 %or.cond63, label %if.end30.if.end38_crit_edge, label %if.then35

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %devid, align 4
  tail call void @mmc_detect_change(ptr noundef %54, i32 noundef 20) #10
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end30.if.end38_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_detect_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_detect_irq.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_detect_irq, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_detect_irq.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mmc_detect_change(ptr noundef %data, i32 noundef 25) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_watchdog(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -244
  %req1 = getelementptr i8, ptr %t, i32 -200
  %0 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req1, align 4
  %base.i = getelementptr i8, ptr %t, i32 -240
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !148
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  %dma_dir = getelementptr i8, ptr %t, i32 -184
  %6 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %do.end5

if.then:                                          ; preds = %entry
  %dma = getelementptr i8, ptr %t, i32 -228
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.dmaengine_terminate_all.exit_crit_edge, label %if.then.i

if.then.dmaengine_terminate_all.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_terminate_all.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 %13(ptr noundef %9) #10
  br label %dmaengine_terminate_all.exit

dmaengine_terminate_all.exit:                     ; preds = %if.then.i, %if.then.dmaengine_terminate_all.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %5) #13
  br label %if.end

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %5) #13
  tail call fastcc void @mxcmci_softreset(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %do.end5, %dmaengine_terminate_all.exit
  %data = getelementptr i8, ptr %t, i32 -192
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %error = getelementptr inbounds %struct.mmc_data, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -110, ptr %error, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %25 = ptrtoint ptr %req1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %req1, align 4
  %cmd = getelementptr i8, ptr %t, i32 -196
  %26 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %cmd, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %data, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_request_done(ptr noundef %29, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_request(ptr noundef %mmc, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmdat1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %cmdat1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmdat1, align 4
  %req2 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  %2 = ptrtoint ptr %req2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req2, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !146

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 745, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %req2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %req, ptr %req2, align 4
  %5 = ptrtoint ptr %cmdat1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmdat1, align 4
  %and = and i32 %6, -129
  store i32 %and, ptr %cmdat1, align 4
  %dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma, align 4
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %if.end.if.end25_crit_edge, label %if.then24

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %do_dma = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %9 = ptrtoint ptr %do_dma to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %do_dma, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end.if.end25_crit_edge
  %data = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %tobool26.not = icmp eq ptr %11, null
  br i1 %tobool26.not, label %if.end25.if.end40_crit_edge, label %if.then27

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then27:                                        ; preds = %if.end25
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blocks.i, align 4
  %blksz1.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %blksz1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blksz1.i, align 4
  %mul.i = mul i32 %15, %13
  %data2.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %16 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %11, ptr %data2.i, align 4
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 7
  %17 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bytes_xfered.i, align 4
  %conv.i = trunc i32 %13 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #10
  %base.i.i = getelementptr inbounds %struct.mxcmci_host, ptr %private.i, i32 0, i32 1
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %18) #10, !srcloc !142
  %conv3.i = trunc i32 %15 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv3.i) #10
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i96.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i96.i, i16 %21) #10, !srcloc !142
  %datasize4.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3
  %24 = ptrtoint ptr %datasize4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.i, ptr %datasize4.i, align 4
  %do_dma.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %do_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %do_dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then27.if.end33_crit_edge, label %if.end.i

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end.i:                                         ; preds = %if.then27
  %sg5.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 12
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 10
  %27 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp102.not.i = icmp eq i32 %28, 0
  br i1 %cmp102.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %29 = ptrtoint ptr %sg5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg5.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0104.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.0103.i = phi ptr [ %call16.i, %for.inc.i.for.body.i_crit_edge ], [ %30, %for.body.preheader.i ]
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0103.i, i32 0, i32 1
  %31 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %for.body.i.if.then14.i_crit_edge

for.body.i.if.then14.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0103.i, i32 0, i32 2
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  %and8.i = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp ne i32 %and8.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %34)
  %cmp12.i = icmp ult i32 %34, 512
  %or.cond.i = or i1 %cmp12.i, %tobool9.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then14.i_crit_edge, label %for.inc.i

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %for.body.i.if.then14.i_crit_edge
  %35 = ptrtoint ptr %do_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %do_dma.i.i, align 4
  br label %if.end33

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %inc.i = add nuw i32 %i.0104.i, 1
  %call16.i = tail call ptr @sg_next(ptr noundef %sg.0103.i) #10
  %36 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_len.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %37
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and17.i = and i32 %39, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %spec.select.i = select i1 %tobool18.not.i, i32 1, i32 2
  %40 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select.i, ptr %40, align 4
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %48 = ptrtoint ptr %sg5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sg5.i, align 4
  %50 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg_len.i, align 4
  %call25.i = tail call i32 @dma_map_sg_attrs(ptr noundef %47, ptr noundef %49, i32 noundef %51, i32 noundef %spec.select.i, i32 noundef 0) #10
  %52 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25.i, i32 %53)
  %cmp27.not.i = icmp eq i32 %call25.i, %53
  br i1 %cmp27.not.i, label %if.end30.i, label %if.then31

if.end30.i:                                       ; preds = %for.end.i
  %54 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma, align 4
  %56 = ptrtoint ptr %sg5.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sg5.i, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end30.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %lor.lhs.false.i.i

if.end30.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_sg.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end30.i
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %tobool1.not.i.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_sg.exit.thread.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %59, i32 0, i32 39
  %60 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %61, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge: ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_prep_slave_sg.exit.thread.i

dmaengine_prep_slave_sg.exit.thread.i:            ; preds = %lor.lhs.false2.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, %lor.lhs.false.i.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge, %if.end30.i.dmaengine_prep_slave_sg.exit.thread.i_crit_edge
  %desc99.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %desc99.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %desc99.i, align 4
  br label %if.then37.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %61(ptr noundef nonnull %55, ptr noundef %57, i32 noundef %call25.i, i32 noundef %spec.select.i, i32 noundef 3, ptr noundef null) #10
  %desc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i.i, ptr %desc.i, align 4
  %tobool36.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool36.not.i, label %dmaengine_prep_slave_sg.exit.i.if.then37.i_crit_edge, label %do.body.i

dmaengine_prep_slave_sg.exit.i.if.then37.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37.i

if.then37.i:                                      ; preds = %dmaengine_prep_slave_sg.exit.i.if.then37.i_crit_edge, %dmaengine_prep_slave_sg.exit.thread.i
  %64 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %dev40.i = getelementptr inbounds %struct.dma_device, ptr %67, i32 0, i32 15
  %68 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev40.i, align 4
  %70 = ptrtoint ptr %sg5.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sg5.i, align 4
  %72 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sg_len.i, align 4
  %74 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %40, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef %75, i32 noundef 0) #10
  %76 = ptrtoint ptr %do_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %do_dma.i.i, align 4
  br label %if.end33

do.body.i:                                        ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  %77 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i97.i = tail call i32 %80(ptr noundef %78) #10
  %81 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dma, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %84, i32 0, i32 50
  %85 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %86(ptr noundef %82) #10
  %watchdog.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 5, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %87, 1000
  %call50.i = tail call i32 @mod_timer(ptr noundef %watchdog.i, i32 noundef %add.i) #10
  br label %if.end33

if.then31:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %88 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd, align 4
  %error32 = getelementptr inbounds %struct.mmc_command, ptr %89, i32 0, i32 5
  %90 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -22, ptr %error32, align 4
  br label %if.then44

if.end33:                                         ; preds = %do.body.i, %if.then37.i, %if.then14.i, %if.then27.if.end33_crit_edge
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags, align 4
  %and35 = and i32 %94, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select.v = select i1 %tobool36.not, i32 8, i32 24
  %spec.select = or i32 %spec.select.v, %1
  br label %if.end40

if.end40:                                         ; preds = %if.end33, %if.end25.if.end40_crit_edge
  %cmdat.0 = phi i32 [ %1, %if.end25.if.end40_crit_edge ], [ %spec.select, %if.end33 ]
  %cmd41 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %95 = ptrtoint ptr %cmd41 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cmd41, align 4
  %call42 = tail call fastcc i32 @mxcmci_start_cmd(ptr noundef %private.i, ptr noundef %96, i32 noundef %cmdat.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %phi.cmp = icmp eq i32 %call42, 0
  br i1 %phi.cmp, label %if.end40.if.end45_crit_edge, label %if.end40.if.then44_crit_edge

if.end40.if.then44_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then44:                                        ; preds = %if.end40.if.then44_crit_edge, %if.then31
  %default_irq_mask.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %97 = ptrtoint ptr %default_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %default_irq_mask.i, align 4
  %lock.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %use_sdio.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  %99 = ptrtoint ptr %use_sdio.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %use_sdio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i65 = icmp eq i32 %100, 0
  %or.i = or i32 %98, 8192
  %spec.select.i66 = select i1 %tobool.not.i65, i32 %98, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i66) #10
  %base.i.i67 = getelementptr inbounds %struct.mxcmci_host, ptr %private.i, i32 0, i32 1
  %102 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %103, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i68, i32 %101) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %104 = ptrtoint ptr %req2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %req2, align 4
  %cmd.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %cmd.i, align 4
  %data.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 2
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %data.i, align 4
  %107 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %private.i, align 4
  tail call void @mmc_request_done(ptr noundef %108, ptr noundef %req) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40.if.end45_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %. = select i1 %cmp, i32 16, i32 4
  %do_dma.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %2 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %do_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %burstlen3 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 8
  %4 = ptrtoint ptr %burstlen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %burstlen3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %5)
  %cmp4.not = icmp eq i32 %., %5
  br i1 %cmp4.not, label %land.lhs.true.if.end14_crit_edge, label %if.then6

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then6:                                         ; preds = %land.lhs.true
  %6 = ptrtoint ptr %burstlen3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %burstlen3, align 4
  %phys_base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %7 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys_base.i, align 4
  %add.i = add i32 %8, 56
  %dst_addr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 2
  %9 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %src_addr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 1
  %10 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %src_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4
  %11 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %dst_addr_width.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 3
  %12 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %src_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %., ptr %dst_maxburst.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %14 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %., ptr %src_maxburst.i, align 4
  %device_fc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 6
  %15 = ptrtoint ptr %device_fc.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %device_fc.i, align 4
  %dma.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then6.do.end_crit_edge, label %mxcmci_setup_dma.exit

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

mxcmci_setup_dma.exit:                            ; preds = %if.then6
  %dma_slave_config.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1
  %call.i.i = tail call i32 %21(ptr noundef %17, ptr noundef %dma_slave_config.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not, label %mxcmci_setup_dma.exit.if.end14_crit_edge, label %mxcmci_setup_dma.exit.do.end_crit_edge

mxcmci_setup_dma.exit.do.end_crit_edge:           ; preds = %mxcmci_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

mxcmci_setup_dma.exit.if.end14_crit_edge:         ; preds = %mxcmci_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end:                                           ; preds = %mxcmci_setup_dma.exit.do.end_crit_edge, %if.then6.do.end_crit_edge
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.44) #13
  %26 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma.i, align 4
  tail call void @dma_release_channel(ptr noundef %27) #10
  %28 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %do_dma.i, align 4
  %29 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dma.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %do.end, %mxcmci_setup_dma.exit.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %30 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp17 = icmp eq i8 %31, 2
  %cmdat = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %cmdat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmdat, align 4
  %and = and i32 %33, -513
  %masksel = select i1 %cmp17, i32 512, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %cmdat, align 4
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %power_mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %power_mode, align 4
  %power_mode23 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %36 = ptrtoint ptr %power_mode23 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %power_mode23, align 2
  %conv24 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv24)
  %cmp25.not = icmp eq i32 %35, %conv24
  br i1 %cmp25.not, label %if.end14.if.end40_crit_edge, label %if.then27

if.end14.if.end40_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then27:                                        ; preds = %if.end14
  %38 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv24, ptr %power_mode, align 4
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %39 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vdd, align 4
  %conv31 = zext i16 %40 to i32
  %41 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private.i, align 4
  %supply.i = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 54
  %43 = ptrtoint ptr %supply.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %supply.i, align 16
  %cmp.i.i = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.if.end17.i_crit_edge, label %if.then.i

if.then27.if.end17.i_crit_edge:                   ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then.i:                                        ; preds = %if.then27
  %45 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %if.then.i.if.end17.i_crit_edge [
    i8 1, label %if.then1.i
    i8 0, label %if.then.i.if.end17.sink.split.i_crit_edge
  ]

if.then.i.if.end17.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split.i

if.then.i.if.end17.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.sink.split.i

if.end17.sink.split.i:                            ; preds = %if.then1.i, %if.then.i.if.end17.sink.split.i_crit_edge
  %conv.sink.i = phi i16 [ %40, %if.then1.i ], [ 0, %if.then.i.if.end17.sink.split.i_crit_edge ]
  %call6.i = tail call i32 @mmc_regulator_set_ocr(ptr noundef %42, ptr noundef %44, i16 noundef zeroext %conv.sink.i) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17.sink.split.i, %if.then.i.if.end17.i_crit_edge, %if.then27.if.end17.i_crit_edge
  %pdata.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %46 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i = icmp eq ptr %47, null
  br i1 %tobool.not.i, label %if.end17.i.mxcmci_set_power.exit_crit_edge, label %land.lhs.true.i

if.end17.i.mxcmci_set_power.exit_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_set_power.exit

land.lhs.true.i:                                  ; preds = %if.end17.i
  %setpower.i = getelementptr inbounds %struct.imxmmc_platform_data, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %setpower.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %setpower.i, align 4
  %tobool19.not.i = icmp eq ptr %49, null
  br i1 %tobool19.not.i, label %land.lhs.true.i.mxcmci_set_power.exit_crit_edge, label %if.then20.i

land.lhs.true.i.mxcmci_set_power.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mxcmci_set_power.exit

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %private.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 128
  tail call void %49(ptr noundef %53, i32 noundef %conv31) #10
  br label %mxcmci_set_power.exit

mxcmci_set_power.exit:                            ; preds = %if.then20.i, %land.lhs.true.i.mxcmci_set_power.exit_crit_edge, %if.end17.i.mxcmci_set_power.exit_crit_edge
  %54 = ptrtoint ptr %power_mode23 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %power_mode23, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp34 = icmp eq i8 %55, 2
  br i1 %cmp34, label %if.then36, label %mxcmci_set_power.exit.if.end40_crit_edge

mxcmci_set_power.exit.if.end40_crit_edge:         ; preds = %mxcmci_set_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then36:                                        ; preds = %mxcmci_set_power.exit
  call void @__sanitizer_cov_trace_pc() #12
  %cmdat37 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %cmdat37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cmdat37, align 4
  %or38 = or i32 %57, 128
  store i32 %or38, ptr %cmdat37, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %mxcmci_set_power.exit.if.end40_crit_edge, %if.end14.if.end40_crit_edge
  %58 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool41.not = icmp eq i32 %59, 0
  br i1 %tobool41.not, label %if.else44, label %if.then42

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @mxcmci_set_clk_rate(ptr noundef %private.i, i32 noundef %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %private.i, i32 0, i32 1
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 512) #10, !srcloc !142
  br label %if.end45

if.else44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %base.i74 = getelementptr inbounds %struct.mxcmci_host, ptr %private.i, i32 0, i32 1
  %62 = ptrtoint ptr %base.i74 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i74, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 256) #10, !srcloc !142
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then42
  %64 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ios, align 4
  %clock47 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %66 = ptrtoint ptr %clock47 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %clock47, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_get_ro(ptr noundef %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 128
  %call5 = tail call i32 %3(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot.ext = zext i1 %tobool6 to i32
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call8 = tail call i32 @mmc_gpio_get_ro(ptr noundef %mmc) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %lnot.ext, %if.then ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %use_sdio = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 5
  %0 = ptrtoint ptr %use_sdio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %enable, ptr %use_sdio, align 4
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %private.i, i32 0, i32 1
  %1 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 36
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %4 = and i32 %3, -2097153
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %masksel = select i1 %tobool.not, i32 0, i32 8192
  %int_cntr.0 = or i32 %5, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %int_cntr.0) #10
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %6) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mxcmci_init_card(ptr nocapture noundef %host, ptr nocapture noundef readonly %card) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1
  %0 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 1
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps, align 32
  %and = and i32 %5, -2
  store i32 %and, ptr %caps, align 32
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  %6 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %caps2, align 32
  %or = or i32 %7, 1
  store i32 %or, ptr %caps2, align 32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxcmci_start_cmd(ptr noundef %host, ptr noundef %cmd, i32 noundef %cmdat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !146

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd, ptr %cmd1, align 4
  %flags21 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %3 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags21, align 4
  %and = and i32 %4, 31
  %5 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and, label %do.end28 [
    i32 21, label %if.end.sw.bb_crit_edge
    i32 29, label %if.end.sw.bb_crit_edge89
    i32 7, label %sw.bb22
    i32 1, label %sw.bb24
    i32 0, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.sw.bb_crit_edge89:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge89
  %or = or i32 %cmdat, 1
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or23 = or i32 %cmdat, 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or25 = or i32 %cmdat, 3
  br label %sw.epilog

do.end28:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22, i32 noundef %and) #13
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %error, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb22, %sw.bb, %if.end.sw.epilog_crit_edge
  %cmdat.addr.0 = phi i32 [ %cmdat, %if.end.sw.epilog_crit_edge ], [ %or25, %sw.bb24 ], [ %or23, %sw.bb22 ], [ %or, %sw.bb ]
  %do_dma.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 6
  %11 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %do_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool31.not = icmp eq i32 %12, 0
  br i1 %tobool31.not, label %sw.epilog.do.body40_crit_edge, label %if.then32

sw.epilog.do.body40_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

if.then32:                                        ; preds = %sw.epilog
  %dma_dir = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 15
  %13 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp33 = icmp eq i32 %14, 2
  br i1 %cmp33, label %if.then34, label %if.then32.do.body40_crit_edge

if.then32.do.body40_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %desc = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 5
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mxcmci_dma_callback, ptr %callback, align 4
  %18 = load ptr, ptr %desc, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %host, ptr %callback_param, align 4
  br label %do.body40

do.body40:                                        ; preds = %if.then34, %if.then32.do.body40_crit_edge, %sw.epilog.do.body40_crit_edge
  %int_cntr.0 = phi i32 [ 4, %if.then34 ], [ 4, %sw.epilog.do.body40_crit_edge ], [ 6, %if.then32.do.body40_crit_edge ]
  %lock = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 22
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %use_sdio = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 8
  %20 = ptrtoint ptr %use_sdio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %use_sdio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool49.not = icmp eq i32 %21, 0
  %or51 = or i32 %int_cntr.0, 8192
  %spec.select = select i1 %tobool49.not, i32 %int_cntr.0, i32 %or51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #10
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 1
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #10
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  %conv54 = trunc i32 %26 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv54) #10
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %29, i32 40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i84, i16 %27) #10, !srcloc !142
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %32) #10, !srcloc !144
  %conv55 = trunc i32 %cmdat.addr.0 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv55) #10
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %37, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i88, i16 %35) #10, !srcloc !142
  br label %cleanup

cleanup:                                          ; preds = %do.body40, %do.end28
  %retval.0 = phi i32 [ -22, %do.end28 ], [ 0, %do.body40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxcmci_dma_callback(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %watchdog = getelementptr inbounds %struct.mxcmci_host, ptr %data, i32 0, i32 27
  %call = tail call i32 @del_timer(ptr noundef %watchdog) #10
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !148
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_dma_callback.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_dma_callback, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !145

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_dma_callback.__UNIQUE_ID_ddebug304, ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @mxcmci_data_done(ptr noundef %data, i32 noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxcmci_data_done(ptr noundef %host, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %data = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %req6 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 11
  %2 = ptrtoint ptr %req6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req6, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %stop = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then13, label %if.end10.if.end15_crit_edge

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %req6, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %call16 = tail call fastcc i32 @mxcmci_finish_data(ptr noundef %host, i32 noundef %stat)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool18.not = icmp eq i32 %call16, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  tail call fastcc void @mxcmci_read_response(ptr noundef %host, i32 noundef %stat)
  %cmd = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 12
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cmd, align 4
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop, align 4
  %tobool22.not = icmp eq ptr %9, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end20
  %call25 = tail call fastcc i32 @mxcmci_start_cmd(ptr noundef %host, ptr noundef nonnull %9, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.cleanup_crit_edge, label %if.then27

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %default_irq_mask.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 7
  %10 = ptrtoint ptr %default_irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %default_irq_mask.i, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %use_sdio.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 8
  %12 = ptrtoint ptr %use_sdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %use_sdio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %or.i = or i32 %11, 8192
  %spec.select.i = select i1 %tobool.not.i, i32 %11, i32 %or.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #10
  %base.i.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 1
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %14) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  %17 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %req6, align 4
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cmd, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %data, align 4
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  tail call void @mmc_request_done(ptr noundef %21, ptr noundef nonnull %3) #10
  br label %cleanup

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %default_irq_mask.i53 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 7
  %22 = ptrtoint ptr %default_irq_mask.i53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %default_irq_mask.i53, align 4
  %call2.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %use_sdio.i56 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 8
  %24 = ptrtoint ptr %use_sdio.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %use_sdio.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i57 = icmp eq i32 %25, 0
  %or.i58 = or i32 %23, 8192
  %spec.select.i59 = select i1 %tobool.not.i57, i32 %23, i32 %or.i58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i59) #10
  %base.i.i60 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 1
  %27 = ptrtoint ptr %base.i.i60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i60, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %28, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i61, i32 %26) #10, !srcloc !144
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i55) #10
  %29 = ptrtoint ptr %req6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %req6, align 4
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cmd, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %data, align 4
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  tail call void @mmc_request_done(ptr noundef %33, ptr noundef nonnull %3) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then27, %if.then23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then8, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxcmci_finish_data(ptr nocapture noundef %host, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 13
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %do_dma.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 6
  %2 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %do_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dma = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_len, align 4
  %dma_dir = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 15
  %14 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_dir, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %stat, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else57, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_finish_data.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_finish_data, %if.then8)) #10
          to label %do.end [label %if.then8], !srcloc !145

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_finish_data.__UNIQUE_ID_ddebug305, ptr noundef %19, ptr noundef nonnull @.str.28, i32 noundef %stat) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %and10 = and i32 %stat, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %do.end15

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %host, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #13
  %error = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -84, ptr %error, align 4
  br label %if.end58

if.else:                                          ; preds = %do.end
  %and18 = and i32 %stat, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else37, label %if.then20

if.then20:                                        ; preds = %if.else
  %25 = and i32 %stat, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %25)
  %cmp = icmp eq i32 %25, 1024
  %26 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %host, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 128
  br i1 %cmp, label %do.end25, label %do.end32

do.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.27) #13
  %error28 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %error28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -110, ptr %error28, align 4
  br label %if.end58

do.end32:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #13
  %error35 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %error35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -84, ptr %error35, align 4
  br label %if.end58

if.else37:                                        ; preds = %if.else
  %and38 = and i32 %stat, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %32 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %host, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  br i1 %tobool39.not, label %do.end50, label %do.end43

do.end43:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.27) #13
  %error46 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %error46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -110, ptr %error46, align 4
  br label %if.end58

do.end50:                                         ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.27) #13
  %error53 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %error53 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -5, ptr %error53, align 4
  br label %if.end58

if.else57:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %datasize = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 14
  %38 = ptrtoint ptr %datasize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %datasize, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %40 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %bytes_xfered, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.else57, %do.end50, %do.end43, %do.end32, %do.end25, %do.end15
  %error59 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %41 = ptrtoint ptr %error59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error59, align 4
  %43 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %data1, align 4
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxcmci_read_response(ptr nocapture noundef readonly %host, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %stat, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_read_response.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_read_response, %if.then7)) #10
          to label %if.end34.sink.split [label %if.then7], !srcloc !145

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_read_response.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.42) #10
  br label %if.end34.sink.split

if.else:                                          ; preds = %if.end
  %and9 = and i32 %stat, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else.if.end34_crit_edge, label %land.lhs.true

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %if.else
  %flags = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and11 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end34_crit_edge, label %do.body14

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.body14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_read_response.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_read_response, %if.then26)) #10
          to label %if.end34.sink.split [label %if.then26], !srcloc !145

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_read_response.__UNIQUE_ID_ddebug307, ptr noundef %11, ptr noundef nonnull @.str.43) #10
  br label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.then26, %do.body14, %if.then7, %do.body
  %.sink = phi i32 [ -110, %do.body ], [ -110, %if.then7 ], [ -84, %do.body14 ], [ -84, %if.then26 ]
  %error32 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %error32 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %error32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %land.lhs.true.if.end34_crit_edge, %if.else.if.end34_crit_edge
  %flags35 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags35, align 4
  %and36 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.cleanup_crit_edge, label %if.then38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38:                                        ; preds = %if.end34
  %and40 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %base.i89 = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 1
  %15 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i89, align 4
  %add.ptr.i90 = getelementptr i8, ptr %16, i32 52
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i90) #10
  br i1 %tobool41.not, label %if.else46, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %18 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i89, align 4
  %add.ptr.i88 = getelementptr i8, ptr %19, i32 52
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i88) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %21 = zext i16 %17 to i32
  %22 = zext i16 %20 to i32
  %23 = shl nuw i32 %22, 16
  %24 = or i32 %23, %21
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %arrayidx = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 0
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i89, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %28, i32 52
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %30 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i89, align 4
  %add.ptr.i88.1 = getelementptr i8, ptr %31, i32 52
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i88.1) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %33 = zext i16 %29 to i32
  %34 = zext i16 %32 to i32
  %35 = shl nuw i32 %34, 16
  %36 = or i32 %35, %33
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %arrayidx.1 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.1, align 4
  %39 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i89, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %40, i32 52
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.2) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %42 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i89, align 4
  %add.ptr.i88.2 = getelementptr i8, ptr %43, i32 52
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i88.2) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %45 = zext i16 %41 to i32
  %46 = zext i16 %44 to i32
  %47 = shl nuw i32 %46, 16
  %48 = or i32 %47, %45
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %arrayidx.2 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx.2, align 4
  %51 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i89, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %52, i32 52
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.3) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %54 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i89, align 4
  %add.ptr.i88.3 = getelementptr i8, ptr %55, i32 52
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i88.3) #10, !srcloc !139
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %57 = zext i16 %53 to i32
  %58 = zext i16 %56 to i32
  %59 = shl nuw i32 %58, 16
  %60 = or i32 %59, %57
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %arrayidx.3 = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 3
  %62 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx.3, align 4
  br label %cleanup

if.else46:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %63 = lshr i16 %17, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %conv48 = zext i16 %63 to i32
  %64 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i89, align 4
  %add.ptr.i92 = getelementptr i8, ptr %65, i32 52
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i92) #10, !srcloc !139
  %67 = tail call i16 @llvm.bswap.i16(i16 %66) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %conv50 = zext i16 %67 to i32
  %68 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i89, align 4
  %add.ptr.i94 = getelementptr i8, ptr %69, i32 52
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i94) #10, !srcloc !139
  %71 = and i16 %70, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %shl53 = shl nuw i32 %conv48, 24
  %shl54 = shl nuw nsw i32 %conv50, 8
  %or55 = or i32 %shl54, %shl53
  %shr = zext i16 %71 to i32
  %or56 = or i32 %or55, %shr
  %resp57 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %resp57 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or56, ptr %resp57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else46, %for.cond.preheader, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxcmci_set_clk_rate(ptr nocapture noundef readonly %host, i32 noundef %clk_ios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_per = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 19
  %0 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_per, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #10
  %div.156 = udiv i32 %call, 3
  %div.25160 = lshr i32 %call, 2
  %div.364 = udiv i32 %call, 5
  %div.1 = udiv i32 %call, 3
  %div.251 = lshr i32 %call, 2
  %div.3 = udiv i32 %call, 5
  %div.572 = udiv i32 %call, 7
  %div.65276 = lshr i32 %call, 3
  %div.780 = udiv i32 %call, 9
  %div.5 = udiv i32 %call, 7
  %div.652 = lshr i32 %call, 3
  %div.7 = udiv i32 %call, 9
  %div.988 = udiv i32 %call, 11
  %div.1092 = udiv i32 %call, 12
  %div.1196 = udiv i32 %call, 13
  %div.9 = udiv i32 %call, 11
  %div.10 = udiv i32 %call, 12
  %div.11 = udiv i32 %call, 13
  %div.13104 = udiv i32 %call, 15
  %div.13 = udiv i32 %call, 15
  %div50 = lshr i32 %call, 1
  %div.468 = udiv i32 %call, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div50, i32 %clk_ios)
  %cmp3.not = icmp ule i32 %div50, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %clk_ios)
  %cmp3.not.1 = icmp ule i32 %div.1, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.251, i32 %clk_ios)
  %cmp3.not.2 = icmp ule i32 %div.251, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %clk_ios)
  %cmp3.not.3 = icmp ule i32 %div.3, %clk_ios
  %div.4 = udiv i32 %call, 6
  %div.884 = udiv i32 %call, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4, i32 %clk_ios)
  %cmp3.not.4 = icmp ule i32 %div.4, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5, i32 %clk_ios)
  %cmp3.not.5 = icmp ule i32 %div.5, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.652, i32 %clk_ios)
  %cmp3.not.6 = icmp ule i32 %div.652, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.7, i32 %clk_ios)
  %cmp3.not.7 = icmp ule i32 %div.7, %clk_ios
  %div.8 = udiv i32 %call, 10
  %div.12100 = udiv i32 %call, 14
  call void @__sanitizer_cov_trace_cmp4(i32 %div.8, i32 %clk_ios)
  %cmp3.not.8 = icmp ule i32 %div.8, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.9, i32 %clk_ios)
  %cmp3.not.9 = icmp ule i32 %div.9, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.10, i32 %clk_ios)
  %cmp3.not.10 = icmp ule i32 %div.10, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.11, i32 %clk_ios)
  %cmp3.not.11 = icmp ule i32 %div.11, %clk_ios
  %div.12 = udiv i32 %call, 14
  %div.1453108 = lshr i32 %call, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.12, i32 %clk_ios)
  %cmp3.not.12 = icmp ule i32 %div.12, %clk_ios
  call void @__sanitizer_cov_trace_cmp4(i32 %div.13, i32 %clk_ios)
  %cmp3.not.13 = icmp ule i32 %div.13, %clk_ios
  %div.1453 = lshr i32 %call, 4
  %brmerge = or i1 %cmp3.not, %cmp3.not.1
  %brmerge110 = select i1 %brmerge, i1 true, i1 %cmp3.not.2
  %brmerge111 = select i1 %brmerge110, i1 true, i1 %cmp3.not.3
  %brmerge112 = or i1 %cmp3.not.4, %cmp3.not.5
  %brmerge114 = select i1 %brmerge112, i1 true, i1 %cmp3.not.6
  %brmerge115 = select i1 %brmerge114, i1 true, i1 %cmp3.not.7
  %brmerge116 = or i1 %cmp3.not.8, %cmp3.not.9
  %brmerge118 = select i1 %brmerge116, i1 true, i1 %cmp3.not.10
  %brmerge119 = select i1 %brmerge118, i1 true, i1 %cmp3.not.11
  %brmerge120 = or i1 %cmp3.not.12, %cmp3.not.13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end8.for.cond.preheader_crit_edge, %entry
  %prescaler.041 = phi i32 [ 0, %entry ], [ %spec.select, %if.end8.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prescaler.041)
  %tobool.not = icmp eq i32 %prescaler.041, 0
  %mul = shl i32 %prescaler.041, 1
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %for.cond.preheader
  br i1 %brmerge111, label %while.end.split.loop.exit128, label %if.end.4.critedge

if.end.thread:                                    ; preds = %for.cond.preheader
  %div2 = sdiv i32 %div50, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2, i32 %clk_ios)
  %cmp3.not55 = icmp ugt i32 %div2, %clk_ios
  br i1 %cmp3.not55, label %if.end.1.thread, label %if.end.thread.while.end_crit_edge

if.end.thread.while.end_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.1.thread:                                  ; preds = %if.end.thread
  %div2.1 = sdiv i32 %div.156, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.1, i32 %clk_ios)
  %cmp3.not.159 = icmp ugt i32 %div2.1, %clk_ios
  br i1 %cmp3.not.159, label %if.end.2.thread, label %if.end.1.thread.while.end_crit_edge

if.end.1.thread.while.end_crit_edge:              ; preds = %if.end.1.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.2.thread:                                  ; preds = %if.end.1.thread
  %div2.2 = sdiv i32 %div.25160, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.2, i32 %clk_ios)
  %cmp3.not.263 = icmp ugt i32 %div2.2, %clk_ios
  br i1 %cmp3.not.263, label %if.end.3.thread, label %if.end.2.thread.while.end_crit_edge

if.end.2.thread.while.end_crit_edge:              ; preds = %if.end.2.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.3.thread:                                  ; preds = %if.end.2.thread
  %div2.3 = sdiv i32 %div.364, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.3, i32 %clk_ios)
  %cmp3.not.367 = icmp ugt i32 %div2.3, %clk_ios
  br i1 %cmp3.not.367, label %if.end.4.thread, label %if.end.3.thread.while.end_crit_edge

if.end.3.thread.while.end_crit_edge:              ; preds = %if.end.3.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.4.critedge:                                ; preds = %if.end
  br i1 %brmerge115, label %while.end.split.loop.exit125, label %if.end.8.critedge

if.end.4.thread:                                  ; preds = %if.end.3.thread
  %div2.4 = sdiv i32 %div.468, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.4, i32 %clk_ios)
  %cmp3.not.471 = icmp ugt i32 %div2.4, %clk_ios
  br i1 %cmp3.not.471, label %if.end.5.thread, label %if.end.4.thread.while.end_crit_edge

if.end.4.thread.while.end_crit_edge:              ; preds = %if.end.4.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.5.thread:                                  ; preds = %if.end.4.thread
  %div2.5 = sdiv i32 %div.572, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.5, i32 %clk_ios)
  %cmp3.not.575 = icmp ugt i32 %div2.5, %clk_ios
  br i1 %cmp3.not.575, label %if.end.6.thread, label %if.end.5.thread.while.end_crit_edge

if.end.5.thread.while.end_crit_edge:              ; preds = %if.end.5.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.6.thread:                                  ; preds = %if.end.5.thread
  %div2.6 = sdiv i32 %div.65276, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.6, i32 %clk_ios)
  %cmp3.not.679 = icmp ugt i32 %div2.6, %clk_ios
  br i1 %cmp3.not.679, label %if.end.7.thread, label %if.end.6.thread.while.end_crit_edge

if.end.6.thread.while.end_crit_edge:              ; preds = %if.end.6.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.7.thread:                                  ; preds = %if.end.6.thread
  %div2.7 = sdiv i32 %div.780, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.7, i32 %clk_ios)
  %cmp3.not.783 = icmp ugt i32 %div2.7, %clk_ios
  br i1 %cmp3.not.783, label %if.end.8.thread, label %if.end.7.thread.while.end_crit_edge

if.end.7.thread.while.end_crit_edge:              ; preds = %if.end.7.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.8.critedge:                                ; preds = %if.end.4.critedge
  br i1 %brmerge119, label %while.end.split.loop.exit122, label %if.end.12.critedge

if.end.8.thread:                                  ; preds = %if.end.7.thread
  %div2.8 = sdiv i32 %div.884, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.8, i32 %clk_ios)
  %cmp3.not.887 = icmp ugt i32 %div2.8, %clk_ios
  br i1 %cmp3.not.887, label %if.end.9.thread, label %if.end.8.thread.while.end_crit_edge

if.end.8.thread.while.end_crit_edge:              ; preds = %if.end.8.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.9.thread:                                  ; preds = %if.end.8.thread
  %div2.9 = sdiv i32 %div.988, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.9, i32 %clk_ios)
  %cmp3.not.991 = icmp ugt i32 %div2.9, %clk_ios
  br i1 %cmp3.not.991, label %if.end.10.thread, label %if.end.9.thread.while.end_crit_edge

if.end.9.thread.while.end_crit_edge:              ; preds = %if.end.9.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.10.thread:                                 ; preds = %if.end.9.thread
  %div2.10 = sdiv i32 %div.1092, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.10, i32 %clk_ios)
  %cmp3.not.1095 = icmp ugt i32 %div2.10, %clk_ios
  br i1 %cmp3.not.1095, label %if.end.11.thread, label %if.end.10.thread.while.end_crit_edge

if.end.10.thread.while.end_crit_edge:             ; preds = %if.end.10.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.11.thread:                                 ; preds = %if.end.10.thread
  %div2.11 = sdiv i32 %div.1196, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.11, i32 %clk_ios)
  %cmp3.not.1199 = icmp ugt i32 %div2.11, %clk_ios
  br i1 %cmp3.not.1199, label %if.end.12.thread, label %if.end.11.thread.while.end_crit_edge

if.end.11.thread.while.end_crit_edge:             ; preds = %if.end.11.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.12.critedge:                               ; preds = %if.end.8.critedge
  br i1 %brmerge120, label %while.end.split.loop.exit, label %if.end.12.critedge.if.end.14_crit_edge

if.end.12.critedge.if.end.14_crit_edge:           ; preds = %if.end.12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.14

if.end.12.thread:                                 ; preds = %if.end.11.thread
  %div2.12 = sdiv i32 %div.12100, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.12, i32 %clk_ios)
  %cmp3.not.12103 = icmp ugt i32 %div2.12, %clk_ios
  br i1 %cmp3.not.12103, label %if.end.13.thread, label %if.end.12.thread.while.end_crit_edge

if.end.12.thread.while.end_crit_edge:             ; preds = %if.end.12.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end.13.thread:                                 ; preds = %if.end.12.thread
  %div2.13 = sdiv i32 %div.13104, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2.13, i32 %clk_ios)
  %cmp3.not.13107 = icmp ugt i32 %div2.13, %clk_ios
  br i1 %cmp3.not.13107, label %if.then.14, label %if.end.13.thread.while.end_crit_edge

if.end.13.thread.while.end_crit_edge:             ; preds = %if.end.13.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then.14:                                       ; preds = %if.end.13.thread
  call void @__sanitizer_cov_trace_pc() #12
  %div2.14 = sdiv i32 %div.1453108, %mul
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.14, %if.end.12.critedge.if.end.14_crit_edge
  %x.0.14 = phi i32 [ %div2.14, %if.then.14 ], [ %div.1453, %if.end.12.critedge.if.end.14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %x.0.14, i32 %clk_ios)
  %cmp3.not.14 = icmp ugt i32 %x.0.14, %clk_ios
  br i1 %cmp3.not.14, label %if.end8, label %if.end.14.while.end_crit_edge

if.end.14.while.end_crit_edge:                    ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end8:                                          ; preds = %if.end.14
  %spec.select = select i1 %tobool.not, i32 1, i32 %mul
  %cmp = icmp slt i32 %spec.select, 2049
  br i1 %cmp, label %if.end8.for.cond.preheader_crit_edge, label %if.end8.while.end_crit_edge

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end8.for.cond.preheader_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.preheader

while.end.split.loop.exit:                        ; preds = %if.end.12.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %.mux121.le = select i1 %cmp3.not.12, i32 13, i32 14
  br label %while.end

while.end.split.loop.exit122:                     ; preds = %if.end.8.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %.mux117.le = select i1 %cmp3.not.8, i32 9, i32 10
  %.mux117.mux.le = select i1 %brmerge116, i32 %.mux117.le, i32 11
  %.mux117.mux.mux.le = select i1 %brmerge118, i32 %.mux117.mux.le, i32 12
  br label %while.end

while.end.split.loop.exit125:                     ; preds = %if.end.4.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %.mux113.le = select i1 %cmp3.not.4, i32 5, i32 6
  %.mux113.mux.le = select i1 %brmerge112, i32 %.mux113.le, i32 7
  %.mux113.mux.mux.le = select i1 %brmerge114, i32 %.mux113.mux.le, i32 8
  br label %while.end

while.end.split.loop.exit128:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %.mux.le = select i1 %cmp3.not, i32 1, i32 2
  %.mux.mux.le = select i1 %brmerge, i32 %.mux.le, i32 3
  %.mux.mux.mux.le = select i1 %brmerge110, i32 %.mux.mux.le, i32 4
  br label %while.end

while.end:                                        ; preds = %while.end.split.loop.exit128, %while.end.split.loop.exit125, %while.end.split.loop.exit122, %while.end.split.loop.exit, %if.end8.while.end_crit_edge, %if.end.14.while.end_crit_edge, %if.end.13.thread.while.end_crit_edge, %if.end.12.thread.while.end_crit_edge, %if.end.11.thread.while.end_crit_edge, %if.end.10.thread.while.end_crit_edge, %if.end.9.thread.while.end_crit_edge, %if.end.8.thread.while.end_crit_edge, %if.end.7.thread.while.end_crit_edge, %if.end.6.thread.while.end_crit_edge, %if.end.5.thread.while.end_crit_edge, %if.end.4.thread.while.end_crit_edge, %if.end.3.thread.while.end_crit_edge, %if.end.2.thread.while.end_crit_edge, %if.end.1.thread.while.end_crit_edge, %if.end.thread.while.end_crit_edge
  %divider.144 = phi i32 [ %.mux121.le, %while.end.split.loop.exit ], [ %.mux117.mux.mux.le, %while.end.split.loop.exit122 ], [ %.mux113.mux.mux.le, %while.end.split.loop.exit125 ], [ %.mux.mux.mux.le, %while.end.split.loop.exit128 ], [ 16, %if.end8.while.end_crit_edge ], [ 14, %if.end.13.thread.while.end_crit_edge ], [ 13, %if.end.12.thread.while.end_crit_edge ], [ 12, %if.end.11.thread.while.end_crit_edge ], [ 11, %if.end.10.thread.while.end_crit_edge ], [ 10, %if.end.9.thread.while.end_crit_edge ], [ 9, %if.end.8.thread.while.end_crit_edge ], [ 8, %if.end.7.thread.while.end_crit_edge ], [ 7, %if.end.6.thread.while.end_crit_edge ], [ 6, %if.end.5.thread.while.end_crit_edge ], [ 5, %if.end.4.thread.while.end_crit_edge ], [ 4, %if.end.3.thread.while.end_crit_edge ], [ 3, %if.end.2.thread.while.end_crit_edge ], [ 2, %if.end.1.thread.while.end_crit_edge ], [ 1, %if.end.thread.while.end_crit_edge ], [ 15, %if.end.14.while.end_crit_edge ]
  %prescaler.040 = phi i32 [ %prescaler.041, %while.end.split.loop.exit ], [ %prescaler.041, %while.end.split.loop.exit122 ], [ %prescaler.041, %while.end.split.loop.exit125 ], [ %prescaler.041, %while.end.split.loop.exit128 ], [ %mul, %if.end8.while.end_crit_edge ], [ %prescaler.041, %if.end.13.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.12.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.11.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.10.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.9.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.8.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.7.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.6.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.5.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.4.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.3.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.2.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.1.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.thread.while.end_crit_edge ], [ %prescaler.041, %if.end.14.while.end_crit_edge ]
  %shl12 = shl i32 %prescaler.040, 4
  %or = or i32 %divider.144, %shl12
  %conv = trunc i32 %or to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv) #10
  %base.i = getelementptr inbounds %struct.mxcmci_host, ptr %host, i32 0, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %2) #10, !srcloc !142
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxcmci_set_clk_rate.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxcmci_set_clk_rate, %if.then17)) #10
          to label %do.end [label %if.then17], !srcloc !145

if.then17:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxcmci_set_clk_rate.__UNIQUE_ID_ddebug309, ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef %prescaler.040, i32 noundef %divider.144, i32 noundef %call, i32 noundef %clk_ios) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_per = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %clk_ipg = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxcmci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk_per = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_per, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_ipg = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %clk_ipg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ipg, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.end.i19:                                       ; preds = %if.end
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.then3.i20

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i20, %if.end.if.then5_crit_edge
  %retval.0.i21.ph = phi i32 [ %call1.i17, %if.then3.i20 ], [ %call.i15, %if.end.if.then5_crit_edge ]
  %6 = ptrtoint ptr %clk_per to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_per, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.then5 ], [ %3, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i21.ph, %if.then5 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i19.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !112, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_mxcmmc__311_1226_mxcmci_driver_init6, !1, !"__initcall__kmod_mxcmmc__311_1226_mxcmci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1226, i32 1}
!2 = !{ptr @__exitcall_mxcmci_driver_exit, !1, !"__exitcall_mxcmci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description312, !4, !"__UNIQUE_ID_description312", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1228, i32 1}
!5 = !{ptr @__UNIQUE_ID_author313, !6, !"__UNIQUE_ID_author313", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1229, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1230, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias316, !11, !"__UNIQUE_ID_alias316", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1231, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1219, i32 12}
!14 = !{ptr @mxcmci_driver, !15, !"mxcmci_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1215, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/mxcmmc.c", i32 990, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxcmci_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxcmci_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mxcmci_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1036, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1041, i32 49}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1061, i32 43}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1067, i32 43}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1086, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mxcmci_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @mxcmci_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1100, i32 44}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1126, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mxcmci_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mxcmci_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mxcmci_probe.__key.18, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1128, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mxcmci_probe.__key.20, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1144, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mxcmci_ops, !51, !"mxcmci_ops", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/mxcmmc.c", i32 972, i32 34}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/mxcmmc.c", i32 381, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mxcmci_start_cmd._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mxcmci_start_cmd._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/mxcmmc.c", i32 353, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mxcmci_dma_callback.__UNIQUE_ID_ddebug304, !58, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/host/mxcmmc.c", i32 442, i32 3}
!64 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mxcmci_finish_data.__UNIQUE_ID_ddebug305, !63, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/mxcmmc.c", i32 445, i32 4}
!68 = !{ptr @mxcmci_finish_data._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mxcmci_finish_data._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/mxcmmc.c", i32 450, i32 5}
!72 = !{ptr @mxcmci_finish_data._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mxcmci_finish_data._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @mxcmci_finish_data._entry.33, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/mxcmmc.c", i32 454, i32 5}
!76 = !{ptr @mxcmci_finish_data._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mmc/host/mxcmmc.c", i32 459, i32 4}
!79 = !{ptr @mxcmci_finish_data._entry.35, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mxcmci_finish_data._entry_ptr.37, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/mxcmmc.c", i32 463, i32 4}
!83 = !{ptr @mxcmci_finish_data._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mxcmci_finish_data._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/mxcmmc.c", i32 487, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mxcmci_read_response.__UNIQUE_ID_ddebug306, !86, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mmc/host/mxcmmc.c", i32 490, i32 3}
!91 = !{ptr @mxcmci_read_response.__UNIQUE_ID_ddebug307, !90, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/mxcmmc.c", i32 841, i32 4}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @mxcmci_set_ios._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @mxcmci_set_ios._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/mxcmmc.c", i32 803, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @mxcmci_set_clk_rate.__UNIQUE_ID_ddebug309, !98, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/mxcmmc.c", i32 244, i32 2}
!103 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mxcmci_softreset.__UNIQUE_ID_ddebug303, !102, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/platform_data/dma-imx.h", i32 64, i32 50}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/platform_data/dma-imx.h", i32 65, i32 44}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mmc/host/mxcmmc.c", i32 710, i32 2}
!111 = !{ptr @mxcmci_irq.__UNIQUE_ID_ddebug308, !110, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/mxcmmc.c", i32 876, i32 2}
!114 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mxcmci_detect_irq.__UNIQUE_ID_ddebug310, !113, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/mxcmmc.c", i32 952, i32 3}
!118 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @mxcmci_watchdog._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @mxcmci_watchdog._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/mxcmmc.c", i32 956, i32 3}
!123 = !{ptr @mxcmci_watchdog._entry.57, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @mxcmci_watchdog._entry_ptr.59, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @mxcmci_of_match, !126, !"mxcmci_of_match", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/mxcmmc.c", i32 160, i32 34}
!127 = !{ptr @mxcmci_pm_ops, !128, !"mxcmci_pm_ops", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/mxcmmc.c", i32 1213, i32 8}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 6330897}
!140 = !{i64 2155409355}
!141 = !{i64 2155410824}
!142 = !{i64 6330697}
!143 = !{i64 2155407445}
!144 = !{i64 6331317}
!145 = !{i64 2148981084, i64 2148981089, i64 2148981102, i64 2148981146, i64 2148981180, i64 2148981201}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{i64 2154454695, i64 2154455187, i64 2154454732, i64 2154454788, i64 2154454822, i64 2154454846, i64 2154454887, i64 2154454908, i64 2154454936, i64 2154454970}
!148 = !{i64 6331735}
!149 = !{i64 2155405976}
!150 = !{i64 2155436668}
!151 = !{i64 2155436510}
!152 = !{i64 2155415010}
