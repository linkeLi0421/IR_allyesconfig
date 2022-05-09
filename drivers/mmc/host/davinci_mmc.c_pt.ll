; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/davinci_mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/davinci_mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mmc_davinci_host = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, i8, i32, i8, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.davinci_mmc_config = type { ptr, ptr, ptr, i8, i32, i32, i8 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__param_str_rw_threshold = internal constant [25 x i8] c"davinci_mmc.rw_threshold\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rw_threshold = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_rw_threshold = internal constant %struct.kernel_param { ptr @__param_str_rw_threshold, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @rw_threshold } }, section "__param", align 4
@__UNIQUE_ID_rw_thresholdtype285 = internal constant [39 x i8] c"davinci_mmc.parmtype=rw_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rw_threshold286 = internal constant [65 x i8] c"davinci_mmc.parm=rw_threshold:Read/Write threshold. Default = 32\00", section ".modinfo", align 1
@__param_str_poll_threshold = internal constant [27 x i8] c"davinci_mmc.poll_threshold\00", align 1
@poll_threshold = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_poll_threshold = internal constant %struct.kernel_param { ptr @__param_str_poll_threshold, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @poll_threshold } }, section "__param", align 4
@__UNIQUE_ID_poll_thresholdtype287 = internal constant [41 x i8] c"davinci_mmc.parmtype=poll_threshold:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_poll_threshold288 = internal constant [82 x i8] c"davinci_mmc.parm=poll_threshold:Polling transaction size threshold. Default = 128\00", section ".modinfo", align 1
@__param_str_poll_loopcount = internal constant [27 x i8] c"davinci_mmc.poll_loopcount\00", align 1
@poll_loopcount = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_poll_loopcount = internal constant %struct.kernel_param { ptr @__param_str_poll_loopcount, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.69 { ptr @poll_loopcount } }, section "__param", align 4
@__UNIQUE_ID_poll_loopcounttype289 = internal constant [41 x i8] c"davinci_mmc.parmtype=poll_loopcount:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_poll_loopcount290 = internal constant [73 x i8] c"davinci_mmc.parm=poll_loopcount:Maximum polling loop count. Default = 32\00", section ".modinfo", align 1
@__param_str_use_dma = internal constant [20 x i8] c"davinci_mmc.use_dma\00", align 1
@use_dma = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_use_dma = internal constant %struct.kernel_param { ptr @__param_str_use_dma, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @use_dma } }, section "__param", align 4
@__UNIQUE_ID_use_dmatype291 = internal constant [34 x i8] c"davinci_mmc.parmtype=use_dma:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_use_dma292 = internal constant [64 x i8] c"davinci_mmc.parm=use_dma:Whether to use DMA or not. Default = 1\00", section ".modinfo", align 1
@__initcall__kmod_davinci_mmc__313_1407_davinci_mmcsd_driver_init6 = internal global ptr @davinci_mmcsd_driver_init, section ".initcall6.init", align 4
@davinci_mmcsd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @davinci_mmcsd_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @davinci_mmc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @davinci_mmcsd_pm, ptr null, ptr null }, ptr @davinci_mmc_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_davinci_mmcsd_driver_exit = internal global ptr @davinci_mmcsd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [43 x i8] c"davinci_mmc.author=Texas Instruments India\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [46 x i8] c"davinci_mmc.file=drivers/mmc/host/davinci_mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [24 x i8] c"davinci_mmc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [65 x i8] c"davinci_mmc.description=MMC/SD driver for Davinci MMC controller\00", section ".modinfo", align 1
@__UNIQUE_ID_alias318 = internal constant [39 x i8] c"davinci_mmc.alias=platform:davinci_mmc\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"davinci_mmc\00", [20 x i8] zeroinitializer }, align 32
@davinci_mmc_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm6441-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @davinci_mmc_devtype }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @davinci_mmc_devtype, i64 24) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@davinci_mmcsd_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @davinci_mmcsd_suspend, ptr @davinci_mmcsd_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@davinci_mmc_devtype = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"dm6441-mmc\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"da830-mmc\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not parse of data\0A\00", [39 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1251, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not parse platform data: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"davinci_mmcsd_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mmc/host/davinci_mmc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe._entry_ptr = internal global ptr @davinci_mmcsd_probe._entry, section ".printk_index", align 4
@mmc_davinci_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @mmc_davinci_request, ptr null, ptr @mmc_davinci_set_ios, ptr @mmc_davinci_get_ro, ptr @mmc_davinci_get_cd, ptr @mmc_davinci_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 1, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max_segs=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_blk_size=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_req_size=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 1, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_seg_size=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register cpufreq\0A\00", [36 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe._entry_ptr.13 = internal global ptr @davinci_mmcsd_probe._entry.11, section ".printk_index", align 4
@davinci_mmcsd_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1329, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Using %s, %d-bit mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@davinci_mmcsd_probe._entry_ptr.17 = internal global ptr @davinci_mmcsd_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cd\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wp\00", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@davinci_acquire_dma_channels._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't get dma_tx channel\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"davinci_acquire_dma_channels\00", [35 x i8] zeroinitializer }, align 32
@davinci_acquire_dma_channels._entry_ptr = internal global ptr @davinci_acquire_dma_channels._entry, section ".printk_index", align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@davinci_acquire_dma_channels._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't get dma_rx channel\0A\00", [38 x i8] zeroinitializer }, align 32
@davinci_acquire_dma_channels._entry_ptr.28 = internal global ptr @davinci_acquire_dma_channels._entry.26, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mmc_davinci_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"still BUSY? bad ... \0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_davinci_request\00", [44 x i8] zeroinitializer }, align 32
@mmc_davinci_request._entry_ptr = internal global ptr @mmc_davinci_request._entry, section ".printk_index", align 4
@mmc_davinci_prepare_data.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mmc_davinci_prepare_data\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, %d blocks of %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@mmc_davinci_prepare_data.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.35, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  DTO %d cycles + %d ns\0A\00", [39 x i8] zeroinitializer }, align 32
@mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.4, ptr @.str.37, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mmc_davinci_send_dma_request\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate DMA TX descriptor\00", [59 x i8] zeroinitializer }, align 32
@mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.4, ptr @.str.38, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate DMA RX descriptor\00", [59 x i8] zeroinitializer }, align 32
@mmc_davinci_start_command.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmc_davinci_start_command\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD%d, arg 0x%08x%s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c", R1/R5/R6/R7 response\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", R1b response\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", R2 response\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c", R3/R4 response\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c", (R? response)\00", [16 x i8] zeroinitializer }, align 32
@mmc_davinci_start_command.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.46, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unknown resp_type %04x\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_davinci_set_ios.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.48, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_davinci_set_ios\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"clock %dHz busmode %d powermode %d Vdd %04x\0A\00", [51 x i8] zeroinitializer }, align 32
@mmc_davinci_set_ios.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.49, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling 8 bit mode\0A\00", [43 x i8] zeroinitializer }, align 32
@mmc_davinci_set_ios.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.50, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling 4 bit mode\0A\00", [43 x i8] zeroinitializer }, align 32
@mmc_davinci_set_ios.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.4, ptr @.str.51, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling 1 bit mode\0A\00", [43 x i8] zeroinitializer }, align 32
@mmc_davinci_set_ios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.4, i32 759, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"powerup timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mmc_davinci_set_ios._entry_ptr = internal global ptr @mmc_davinci_set_ios._entry, section ".printk_index", align 4
@mmc_davinci_irq.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.55, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mmc_davinci_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Spurious interrupt 0x%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@mmc_davinci_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 933, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DATDNE with no host->data\0A\00", [37 x i8] zeroinitializer }, align 32
@mmc_davinci_irq._entry_ptr = internal global ptr @mmc_davinci_irq._entry, section ".printk_index", align 4
@mmc_davinci_irq.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.57, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read data timeout, status %x\0A\00", [34 x i8] zeroinitializer }, align 32
@mmc_davinci_irq.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.58, i8 0, i8 -14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data %s %s error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRC\00", [28 x i8] zeroinitializer }, align 32
@mmc_davinci_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.61, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CMD%d timeout, status %x\0A\00", [38 x i8] zeroinitializer }, align 32
@mmc_davinci_irq.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.4, ptr @.str.62, i8 0, i8 -9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Command CRC error\0A\00", [45 x i8] zeroinitializer }, align 32
@mmc_davinci_sdio_irq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.4, ptr @.str.64, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_davinci_sdio_irq\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDIO interrupt status %x\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.70 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"rw_threshold\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 149, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"poll_threshold\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 154, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"poll_loopcount\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 159, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [8 x i8] c"use_dma\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 164, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"davinci_mmcsd_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1395, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1397, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"davinci_mmc_dt_ids\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1133, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"davinci_mmcsd_pm\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1385, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"davinci_mmc_devtype\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1121, i32 40 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1244, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1250, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"mmc_davinci_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1051, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1295, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1296, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1297, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1298, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1304, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1327, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1177, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1183, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 497, i32 54 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 499, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 503, i32 54 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 505, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 601, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 533, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 536, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 424, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 446, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 274, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 315, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 692, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 710, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 716, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 727, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 759, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 874, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 932, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 942, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 966, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 976, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 990, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [34 x i8] c"../drivers/mmc/host/davinci_mmc.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 856, i32 3 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_alias318, ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__UNIQUE_ID_poll_loopcount290, ptr @__UNIQUE_ID_poll_loopcounttype289, ptr @__UNIQUE_ID_poll_threshold288, ptr @__UNIQUE_ID_poll_thresholdtype287, ptr @__UNIQUE_ID_rw_threshold286, ptr @__UNIQUE_ID_rw_thresholdtype285, ptr @__UNIQUE_ID_use_dma292, ptr @__UNIQUE_ID_use_dmatype291, ptr @__exitcall_davinci_mmcsd_driver_exit, ptr @__initcall__kmod_davinci_mmc__313_1407_davinci_mmcsd_driver_init6, ptr @__param_poll_loopcount, ptr @__param_poll_threshold, ptr @__param_rw_threshold, ptr @__param_use_dma, ptr @davinci_acquire_dma_channels._entry, ptr @davinci_acquire_dma_channels._entry.26, ptr @davinci_acquire_dma_channels._entry_ptr, ptr @davinci_acquire_dma_channels._entry_ptr.28, ptr @davinci_mmcsd_driver_exit, ptr @davinci_mmcsd_probe._entry, ptr @davinci_mmcsd_probe._entry.11, ptr @davinci_mmcsd_probe._entry.14, ptr @davinci_mmcsd_probe._entry_ptr, ptr @davinci_mmcsd_probe._entry_ptr.13, ptr @davinci_mmcsd_probe._entry_ptr.17, ptr @davinci_mmcsd_remove, ptr @mmc_davinci_irq._entry, ptr @mmc_davinci_irq._entry_ptr, ptr @mmc_davinci_request._entry, ptr @mmc_davinci_request._entry_ptr, ptr @mmc_davinci_set_ios._entry, ptr @mmc_davinci_set_ios._entry_ptr, ptr @rw_threshold, ptr @poll_threshold, ptr @poll_loopcount, ptr @use_dma, ptr @davinci_mmcsd_driver, ptr @.str, ptr @davinci_mmc_dt_ids, ptr @davinci_mmcsd_pm, ptr @davinci_mmc_devtype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mmc_davinci_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rw_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_threshold to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poll_loopcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_dma to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmcsd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmc_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmcsd_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmc_devtype to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmcsd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_davinci_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmcsd_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_mmcsd_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_acquire_dma_channels._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @davinci_acquire_dma_channels._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_davinci_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_davinci_set_ios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_davinci_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mmcsd_remove(ptr nocapture noundef readonly %pdev) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  tail call void @mmc_remove_host(ptr noundef %3) #6
  %freq_transition.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 25
  %call.i = tail call i32 @cpufreq_unregister_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #6
  tail call fastcc void @davinci_release_dma_channels(ptr noundef %1)
  %clk = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc, align 4
  tail call void @mmc_free_host(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @davinci_release_dma_channels(ptr nocapture noundef readonly %host) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %use_dma = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 16
  %0 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_dma, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dma_tx = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 14
  %2 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_tx, align 4
  tail call void @dma_release_channel(ptr noundef %3) #6
  %dma_rx = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 15
  %4 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_rx, align 4
  tail call void @dma_release_channel(ptr noundef %5) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mmcsd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @davinci_mmcsd_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @davinci_mmcsd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @davinci_mmcsd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mmcsd_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call5 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %5) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %call10 = tail call ptr @mmc_alloc_host(i32 noundef 96, ptr noundef %dev) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 70
  %mmc15 = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1
  %6 = ptrtoint ptr %mmc15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %mmc15, align 4
  %mem_res = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 3
  %7 = ptrtoint ptr %mem_res to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %mem_res, align 4
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call5, align 4
  %call18 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %9, i32 noundef %add.i) #6
  %base = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call18, ptr %base, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end13.ioremap_fail_crit_edge, label %if.end22

if.end13.ioremap_fail_crit_edge:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %ioremap_fail

if.end22:                                         ; preds = %if.end13
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call24 to i32
  br label %ioremap_fail

if.end30:                                         ; preds = %if.end22
  %call.i = tail call i32 @clk_prepare(ptr noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.ioremap_fail_crit_edge

if.end30.ioremap_fail_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %ioremap_fail

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call24) #6
  br label %ioremap_fail

if.end35:                                         ; preds = %if.end.i
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call37 = tail call i32 @clk_get_rate(ptr noundef %14) #6
  %mmc_input_clk = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %mmc_input_clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call37, ptr %mmc_input_clk, align 4
  %call39 = tail call ptr @of_match_device(ptr noundef nonnull @davinci_mmc_dt_ids, ptr noundef %dev) #6
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %if.end35
  %data = getelementptr inbounds %struct.of_device_id, ptr %call39, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %id_entry42 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %18 = ptrtoint ptr %id_entry42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %id_entry42, align 4
  %call43 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end54_crit_edge, label %if.then45

if.then41.if.end54_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call43, ptr noundef nonnull @.str.1) #6
  br label %dma_probe_defer

if.else:                                          ; preds = %if.end35
  %call49 = tail call fastcc i32 @mmc_davinci_parse_pdata(ptr noundef nonnull %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.else.if.end54_crit_edge, label %do.end

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call49) #9
  br label %dma_probe_defer

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.then41.if.end54_crit_edge
  %nr_sg = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %nr_sg to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %nr_sg, align 4
  %21 = add i8 %20, -17
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %21)
  %22 = icmp ult i8 %21, -16
  br i1 %22, label %if.then59, label %if.end54.if.end61_crit_edge

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %nr_sg to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %nr_sg, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end54.if.end61_crit_edge
  tail call fastcc void @init_mmcsd_host(ptr noundef %private.i)
  %24 = load i32, ptr @use_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool62 = icmp ne i32 %24, 0
  %use_dma = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 1
  %frombool = zext i1 %tobool62 to i8
  %25 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %use_dma, align 4
  %mmc_irq = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %mmc_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call1, ptr %mmc_irq, align 4
  %call63 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %sdio_irq = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %sdio_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call63, ptr %sdio_irq, align 4
  %28 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_dma, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool65.not = icmp eq i8 %29, 0
  br i1 %tobool65.not, label %if.end61.if.end77_crit_edge, label %if.then66

if.end61.if.end77_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then66:                                        ; preds = %if.end61
  %call67 = tail call fastcc i32 @davinci_acquire_dma_channels(ptr noundef %private.i)
  %30 = zext i32 %call67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call67, label %if.then73 [
    i32 -517, label %if.then66.dma_probe_defer_crit_edge
    i32 0, label %if.then66.if.end77_crit_edge
  ]

if.then66.if.end77_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then66.dma_probe_defer_crit_edge:              ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_probe_defer

if.then73:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %use_dma, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.then66.if.end77_crit_edge, %if.end61.if.end77_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 16
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps, align 32
  %or = or i32 %33, 512
  store i32 %or, ptr %caps, align 32
  %id_entry78 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %34 = ptrtoint ptr %id_entry78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %id_entry78, align 4
  %tobool79.not = icmp eq ptr %35, null
  br i1 %tobool79.not, label %if.end77.if.end82_crit_edge, label %if.then80

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %driver_data, align 4
  %conv81 = trunc i32 %37 to i8
  %version = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv81, ptr %version, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end77.if.end82_crit_edge
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 3
  %39 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mmc_davinci_ops, ptr %ops, align 4
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 8
  %40 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3145728, ptr %ocr_avail, align 64
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 21
  %41 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 16, ptr %max_segs, align 4
  %42 = load i32, ptr @rw_threshold, align 4
  %mul = mul i32 %42, 65535
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 20
  %43 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %max_seg_size, align 16
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 24
  %44 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4095, ptr %max_blk_size, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 25
  %45 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65535, ptr %max_blk_count, align 128
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 23
  %46 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 268365825, ptr %max_req_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mmcsd_probe, %if.then92)) #6
          to label %do.body99 [label %if.then92], !srcloc !193

if.then92:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %mmc15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmc15, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 128
  %51 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_segs, align 4
  %conv95 = zext i16 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mmcsd_probe.__UNIQUE_ID_ddebug309, ptr noundef %50, ptr noundef nonnull @.str.7, i32 noundef %conv95) #6
  br label %do.body99

do.body99:                                        ; preds = %if.then92, %if.end82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mmcsd_probe, %if.then111)) #6
          to label %do.body118 [label %if.then111], !srcloc !193

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %mmc15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmc15, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 128
  %57 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_blk_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mmcsd_probe.__UNIQUE_ID_ddebug310, ptr noundef %56, ptr noundef nonnull @.str.8, i32 noundef %58) #6
  br label %do.body118

do.body118:                                       ; preds = %if.then111, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mmcsd_probe, %if.then130)) #6
          to label %do.body137 [label %if.then130], !srcloc !193

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %mmc15 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mmc15, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 128
  %63 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %max_req_size, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mmcsd_probe.__UNIQUE_ID_ddebug311, ptr noundef %62, ptr noundef nonnull @.str.9, i32 noundef %64) #6
  br label %do.body137

do.body137:                                       ; preds = %if.then130, %do.body118
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@davinci_mmcsd_probe, %if.then149)) #6
          to label %do.end155 [label %if.then149], !srcloc !193

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %mmc15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmc15, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 128
  %69 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_seg_size, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @davinci_mmcsd_probe.__UNIQUE_ID_ddebug312, ptr noundef %68, ptr noundef nonnull @.str.10, i32 noundef %70) #6
  br label %do.end155

do.end155:                                        ; preds = %if.then149, %do.body137
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %freq_transition.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %freq_transition.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mmc_davinci_cpufreq_transition, ptr %freq_transition.i, align 4
  %call.i326 = tail call i32 @cpufreq_register_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326)
  %tobool157.not = icmp eq i32 %call.i326, 0
  br i1 %tobool157.not, label %if.end163, label %do.end161

do.end161:                                        ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cpu_freq_fail

if.end163:                                        ; preds = %do.end155
  %call164 = tail call i32 @mmc_add_host(ptr noundef nonnull %call10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %cmp165 = icmp slt i32 %call164, 0
  br i1 %cmp165, label %if.end163.mmc_add_host_fail_crit_edge, label %if.end168

if.end163.mmc_add_host_fail_crit_edge:            ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmc_add_host_fail

if.end168:                                        ; preds = %if.end163
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i327 = icmp eq ptr %74, null
  br i1 %tobool.not.i327, label %if.end.i328, label %if.end168.dev_name.exit_crit_edge

if.end168.dev_name.exit_crit_edge:                ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i328:                                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i328, %if.end168.dev_name.exit_crit_edge
  %retval.0.i329 = phi ptr [ %76, %if.end.i328 ], [ %74, %if.end168.dev_name.exit_crit_edge ]
  %call.i330 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef nonnull @mmc_davinci_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i329, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i330)
  %tobool172.not = icmp eq i32 %call.i330, 0
  br i1 %tobool172.not, label %if.end174, label %request_irq_fail

if.end174:                                        ; preds = %dev_name.exit
  %77 = ptrtoint ptr %sdio_irq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sdio_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %cmp176 = icmp sgt i32 %78, -1
  br i1 %cmp176, label %if.then178, label %if.end174.do.body190_crit_edge

if.end174.do.body190_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body190

if.then178:                                       ; preds = %if.end174
  %79 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i332 = icmp eq ptr %80, null
  br i1 %tobool.not.i332, label %if.end.i333, label %if.then178.dev_name.exit335_crit_edge

if.then178.dev_name.exit335_crit_edge:            ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit335

if.end.i333:                                      ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit335

dev_name.exit335:                                 ; preds = %if.end.i333, %if.then178.dev_name.exit335_crit_edge
  %retval.0.i334 = phi ptr [ %82, %if.end.i333 ], [ %80, %if.then178.dev_name.exit335_crit_edge ]
  %call.i336 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %78, ptr noundef nonnull @mmc_davinci_sdio_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i334, ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool184.not = icmp eq i32 %call.i336, 0
  br i1 %tobool184.not, label %if.then185, label %dev_name.exit335.do.body190_crit_edge

dev_name.exit335.do.body190_crit_edge:            ; preds = %dev_name.exit335
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body190

if.then185:                                       ; preds = %dev_name.exit335
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %caps, align 32
  %or187 = or i32 %84, 8
  store i32 %or187, ptr %caps, align 32
  br label %do.body190

do.body190:                                       ; preds = %if.then185, %dev_name.exit335.do.body190_crit_edge, %if.end174.do.body190_crit_edge
  %85 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i338 = icmp eq ptr %86, null
  br i1 %tobool.not.i338, label %if.end.i339, label %do.body190.dev_name.exit341_crit_edge

do.body190.dev_name.exit341_crit_edge:            ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit341

if.end.i339:                                      ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit341

dev_name.exit341:                                 ; preds = %if.end.i339, %do.body190.dev_name.exit341_crit_edge
  %retval.0.i340 = phi ptr [ %88, %if.end.i339 ], [ %86, %do.body190.dev_name.exit341_crit_edge ]
  %name193 = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 2
  %89 = ptrtoint ptr %name193 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %retval.0.i340, ptr %name193, align 4
  %90 = ptrtoint ptr %mmc15 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmc15, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 128
  %94 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %use_dma, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool202.not = icmp eq i8 %95, 0
  %cond = select i1 %tobool202.not, ptr @.str.19, ptr @.str.18
  %96 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %caps, align 32
  %and = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool205.not = icmp eq i32 %and, 0
  %cond206 = select i1 %tobool205.not, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond, i32 noundef %cond206) #9
  br label %cleanup

request_irq_fail:                                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mmc_remove_host(ptr noundef nonnull %call10) #6
  br label %mmc_add_host_fail

mmc_add_host_fail:                                ; preds = %request_irq_fail, %if.end163.mmc_add_host_fail_crit_edge
  %ret.0 = phi i32 [ %call164, %if.end163.mmc_add_host_fail_crit_edge ], [ %call.i330, %request_irq_fail ]
  %call.i343 = tail call i32 @cpufreq_unregister_notifier(ptr noundef %freq_transition.i, i32 noundef 0) #6
  br label %cpu_freq_fail

cpu_freq_fail:                                    ; preds = %mmc_add_host_fail, %do.end161
  %ret.1 = phi i32 [ %call.i326, %do.end161 ], [ %ret.0, %mmc_add_host_fail ]
  tail call fastcc void @davinci_release_dma_channels(ptr noundef %private.i)
  br label %dma_probe_defer

dma_probe_defer:                                  ; preds = %cpu_freq_fail, %if.then66.dma_probe_defer_crit_edge, %do.end, %if.then45
  %ret.2 = phi i32 [ %call43, %if.then45 ], [ %call67, %if.then66.dma_probe_defer_crit_edge ], [ %ret.1, %cpu_freq_fail ], [ %call49, %do.end ]
  %98 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %99) #6
  tail call void @clk_unprepare(ptr noundef %99) #6
  br label %ioremap_fail

ioremap_fail:                                     ; preds = %dma_probe_defer, %if.then3.i, %if.end30.ioremap_fail_crit_edge, %if.then27, %if.end13.ioremap_fail_crit_edge
  %ret.3 = phi i32 [ %12, %if.then27 ], [ %ret.2, %dma_probe_defer ], [ -12, %if.end13.ioremap_fail_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end30.ioremap_fail_crit_edge ]
  tail call void @mmc_free_host(ptr noundef nonnull %call10) #6
  br label %cleanup

cleanup:                                          ; preds = %ioremap_fail, %dev_name.exit341, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %ioremap_fail ], [ 0, %dev_name.exit341 ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_davinci_parse_pdata(ptr noundef %mmc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %tobool1.not = icmp eq ptr %private.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %nr_sg = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %nr_sg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_sg, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %land.lhs.true.land.lhs.true13_crit_edge, label %if.then6

land.lhs.true.land.lhs.true13_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true13

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i8 %5, -1
  %nr_sg10 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %nr_sg10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %sub, ptr %nr_sg10, align 4
  br label %land.lhs.true13

land.lhs.true13:                                  ; preds = %if.then6, %land.lhs.true.land.lhs.true13_crit_edge
  %wires = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %wires to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wires, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %8, label %land.lhs.true13.land.lhs.true23_crit_edge [
    i8 4, label %land.lhs.true13.if.then20_crit_edge
    i8 0, label %land.lhs.true13.if.then20_crit_edge97
  ]

land.lhs.true13.if.then20_crit_edge97:            ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

land.lhs.true13.if.then20_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

land.lhs.true13.land.lhs.true23_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true23

if.then20:                                        ; preds = %land.lhs.true13.if.then20_crit_edge, %land.lhs.true13.if.then20_crit_edge97
  %caps = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %10 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %caps, align 32
  %or = or i32 %11, 1
  store i32 %or, ptr %caps, align 32
  %12 = ptrtoint ptr %wires to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr = load i8, ptr %wires, align 4
  br label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.then20, %land.lhs.true13.land.lhs.true23_crit_edge
  %13 = phi i8 [ %.pr, %if.then20 ], [ %8, %land.lhs.true13.land.lhs.true23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp26 = icmp eq i8 %13, 8
  br i1 %cmp26, label %if.then28, label %land.lhs.true23.if.end31_crit_edge

land.lhs.true23.if.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  %caps29 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %14 = ptrtoint ptr %caps29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %caps29, align 32
  %or30 = or i32 %15, 65
  store i32 %or30, ptr %caps29, align 32
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true23.if.end31_crit_edge
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 5
  %16 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 312500, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 6
  %17 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 25000000, ptr %f_max, align 8
  %max_freq = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool34.not = icmp eq i32 %19, 0
  %spec.store.select = select i1 %tobool34.not, i32 25000000, i32 %19
  %20 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %f_max, align 8
  %caps41 = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %caps41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool42.not = icmp eq i32 %22, 0
  br i1 %tobool42.not, label %if.end31.if.end47_crit_edge, label %if.then43

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %caps45 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %23 = ptrtoint ptr %caps45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps45, align 32
  %or46 = or i32 %24, %22
  store i32 %or46, ptr %caps45, align 32
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end31.if.end47_crit_edge
  %call48 = tail call i32 @mmc_gpiod_request_cd(ptr noundef %mmc, ptr noundef nonnull @.str.20, i32 noundef 0, i1 noundef zeroext false, i32 noundef 0) #6
  %25 = zext i32 %call48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call48, label %if.then53 [
    i32 -517, label %if.end47.cleanup_crit_edge
    i32 0, label %if.end47.if.end57_crit_edge
  ]

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %caps54 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 16
  %26 = ptrtoint ptr %caps54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %caps54, align 32
  %or55 = or i32 %27, 32
  store i32 %or55, ptr %caps54, align 32
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end47.if.end57_crit_edge
  %call58 = tail call i32 @mmc_gpiod_request_ro(ptr noundef %mmc, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call58)
  %cmp59 = icmp eq i32 %call58, -517
  %. = select i1 %cmp59, i32 -517, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end47.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call48, %if.end47.cleanup_crit_edge ], [ %., %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_mmcsd_host(ptr nocapture noundef readonly %host) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %3 = or i32 %2, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 65536) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -14745600) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -65536) #6, !srcloc !197
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %18 = and i32 %17, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @davinci_acquire_dma_channels(ptr nocapture noundef %host) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %call = tail call ptr @dma_request_chan(ptr noundef %3, ptr noundef nonnull @.str.22) #6
  %dma_tx = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 14
  %4 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %dma_tx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmc, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 128
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.23) #9
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @dma_request_chan(ptr noundef %8, ptr noundef nonnull @.str.25) #6
  %dma_rx = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 15
  %9 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %dma_rx, align 4
  %cmp.i31 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %do.end14, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.27) #9
  %14 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx, align 4
  tail call void @dma_release_channel(ptr noundef %15) #6
  br label %return.sink.split

return.sink.split:                                ; preds = %do.end14, %do.end
  %dma_rx.sink = phi ptr [ %dma_rx, %do.end14 ], [ %dma_tx, %do.end ]
  %16 = ptrtoint ptr %dma_rx.sink to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_rx.sink, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ %18, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_davinci_irq(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %cmp = icmp eq ptr %3, null
  %cmp3 = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  %base = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6
  br i1 %or.cond, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_irq, %if.then9)) #6
          to label %do.body10 [label %if.then9], !srcloc !193

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_irq.__UNIQUE_ID_ddebug304, ptr noundef %11, ptr noundef nonnull @.str.55, i32 noundef %7) #6
  br label %do.body10

do.body10:                                        ; preds = %if.then9, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #6, !srcloc !197
  br label %cleanup

if.end15:                                         ; preds = %entry
  %14 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  %bytes_left = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 13
  %15 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  %and = and i32 %14, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %or.cond292 = select i1 %tobool23.not, i1 true, i1 %tobool25.not
  br i1 %or.cond292, label %if.end15.if.end58_crit_edge, label %if.then26

if.end15.if.end58_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then26:                                        ; preds = %if.end15
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #6, !srcloc !197
  br label %do.body39

do.body39:                                        ; preds = %do.body39.do.body39_crit_edge, %if.then26
  %qstatus.0 = phi i32 [ %14, %if.then26 ], [ %or, %do.body39.do.body39_crit_edge ]
  %22 = load i32, ptr @rw_threshold, align 4
  tail call fastcc void @davinci_fifo_data_trans(ptr noundef %dev_id, i32 noundef %22)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr43 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !194
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  %or = or i32 %26, %qstatus.0
  %27 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  %and50 = and i32 %26, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond293 = select i1 %tobool49.not, i1 true, i1 %tobool51.not
  br i1 %or.cond293, label %do.body53, label %do.body39.do.body39_crit_edge

do.body39.do.body39_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body39

do.body53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %19) #6, !srcloc !197
  br label %if.end58

if.end58:                                         ; preds = %do.body53, %if.end15.if.end58_crit_edge
  %qstatus.1 = phi i32 [ %or, %do.body53 ], [ %14, %if.end15.if.end58_crit_edge ]
  %and59 = and i32 %qstatus.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end80_crit_edge, label %if.then61

if.end58.if.end80_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then61:                                        ; preds = %if.end58
  br i1 %cmp3, label %do.end76, label %if.then63

if.then63:                                        ; preds = %if.then61
  %do_dma = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 17
  %31 = ptrtoint ptr %do_dma to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %do_dma, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp65 = icmp eq i8 %32, 0
  br i1 %cmp65, label %land.lhs.true67, label %if.then63.if.end73_crit_edge

if.then63.if.end73_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

land.lhs.true67:                                  ; preds = %if.then63
  %33 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp69.not = icmp eq i32 %34, 0
  br i1 %cmp69.not, label %land.lhs.true67.if.end73_crit_edge, label %if.then71

land.lhs.true67.if.end73_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then71:                                        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @davinci_fifo_data_trans(ptr noundef %dev_id, i32 noundef %34)
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true67.if.end73_crit_edge, %if.then63.if.end73_crit_edge
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %blksz, align 4
  %mul = mul i32 %38, %36
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %if.end80

do.end76:                                         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %mmc77 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %40 = ptrtoint ptr %mmc77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmc77, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.56) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end76, %if.end73, %if.end58.if.end80_crit_edge
  %end_transfer.0 = phi i32 [ 1, %if.end73 ], [ 0, %do.end76 ], [ 0, %if.end58.if.end80_crit_edge ]
  %and81 = and i32 %qstatus.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end102_crit_edge, label %if.then83

if.end80.if.end102_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then83:                                        ; preds = %if.end80
  %error = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -110, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_irq, %if.then96)) #6
          to label %do.end101 [label %if.then96], !srcloc !193

if.then96:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  %mmc97 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %45 = ptrtoint ptr %mmc97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmc97, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_irq.__UNIQUE_ID_ddebug305, ptr noundef %48, ptr noundef nonnull @.str.57, i32 noundef %qstatus.1) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then96, %if.then83
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %52 = or i32 %51, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 2147480) #6
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %59 = and i32 %58, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 2147480) #6
  br label %if.end102

if.end102:                                        ; preds = %do.end101, %if.end80.if.end102_crit_edge
  %end_transfer.1 = phi i32 [ 1, %do.end101 ], [ %end_transfer.0, %if.end80.if.end102_crit_edge ]
  %and103 = and i32 %qstatus.1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end102.if.end148_crit_edge, label %if.then105

if.end102.if.end148_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.then105:                                       ; preds = %if.end102
  %error106 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 5
  %63 = ptrtoint ptr %error106 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -84, ptr %error106, align 4
  %and107 = and i32 %qstatus.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.then105.do.body124_crit_edge, label %if.then109

if.then105.do.body124_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body124

if.then109:                                       ; preds = %if.then105
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %65, i32 72
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr113) #6, !srcloc !209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %66)
  %cmp118 = icmp eq i8 %66, -97
  br i1 %cmp118, label %if.then120, label %if.then109.do.body124_crit_edge

if.then109.do.body124_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body124

if.then120:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %error106 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -110, ptr %error106, align 4
  br label %do.body124

do.body124:                                       ; preds = %if.then120, %if.then109.do.body124_crit_edge, %if.then105.do.body124_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_irq, %if.then136)) #6
          to label %do.end147 [label %if.then136], !srcloc !193

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #8
  %mmc137 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %68 = ptrtoint ptr %mmc137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmc137, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 128
  %cond = select i1 %tobool108.not, ptr @.str.34, ptr @.str.33
  %72 = ptrtoint ptr %error106 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %error106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %73)
  %cmp142 = icmp eq i32 %73, -110
  %cond144 = select i1 %cmp142, ptr @.str.59, ptr @.str.60
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_irq.__UNIQUE_ID_ddebug306, ptr noundef %71, ptr noundef nonnull @.str.58, ptr noundef nonnull %cond, ptr noundef nonnull %cond144) #6
  br label %do.end147

do.end147:                                        ; preds = %if.then136, %do.body124
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %77 = or i32 %76, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 2147480) #6
  %81 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base, align 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %84 = and i32 %83, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 2147480) #6
  br label %if.end148

if.end148:                                        ; preds = %do.end147, %if.end102.if.end148_crit_edge
  %end_transfer.2 = phi i32 [ 1, %do.end147 ], [ %end_transfer.1, %if.end102.if.end148_crit_edge ]
  %and149 = and i32 %qstatus.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end181_crit_edge, label %if.then151

if.end148.if.end181_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then151:                                       ; preds = %if.end148
  %88 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_id, align 4
  %tobool153.not = icmp eq ptr %89, null
  br i1 %tobool153.not, label %if.then151.if.end181_crit_edge, label %do.body155

if.then151.if.end181_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

do.body155:                                       ; preds = %if.then151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_irq, %if.then167)) #6
          to label %do.end173 [label %if.then167], !srcloc !193

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #8
  %mmc168 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %90 = ptrtoint ptr %mmc168 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmc168, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 128
  %94 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_id, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_irq.__UNIQUE_ID_ddebug307, ptr noundef %93, ptr noundef nonnull @.str.61, i32 noundef %97, i32 noundef %qstatus.1) #6
  br label %do.end173

do.end173:                                        ; preds = %if.then167, %do.body155
  %98 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev_id, align 4
  %error175 = getelementptr inbounds %struct.mmc_command, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %error175 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -110, ptr %error175, align 4
  br i1 %cmp3, label %do.end173.if.end181_crit_edge, label %if.then177

do.end173.if.end181_crit_edge:                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then177:                                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base, align 4
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %104 = or i32 %103, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %105 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 2147480) #6
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %111 = and i32 %110, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %114(i32 noundef 2147480) #6
  br label %if.end181

if.end181:                                        ; preds = %if.then177, %do.end173.if.end181_crit_edge, %if.then151.if.end181_crit_edge, %if.end148.if.end181_crit_edge
  %end_transfer.3 = phi i32 [ 1, %if.then177 ], [ %end_transfer.2, %if.then151.if.end181_crit_edge ], [ %end_transfer.2, %if.end148.if.end181_crit_edge ], [ %end_transfer.2, %do.end173.if.end181_crit_edge ]
  %end_command.0 = phi i32 [ 0, %if.then177 ], [ 0, %if.then151.if.end181_crit_edge ], [ 0, %if.end148.if.end181_crit_edge ], [ 1, %do.end173.if.end181_crit_edge ]
  %and182 = and i32 %qstatus.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %if.end181.if.end209_crit_edge, label %do.body185

if.end181.if.end209_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

do.body185:                                       ; preds = %if.end181
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_irq, %if.then197)) #6
          to label %do.end202 [label %if.then197], !srcloc !193

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #8
  %mmc198 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %115 = ptrtoint ptr %mmc198 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmc198, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_irq.__UNIQUE_ID_ddebug308, ptr noundef %118, ptr noundef nonnull @.str.62) #6
  br label %do.end202

do.end202:                                        ; preds = %if.then197, %do.body185
  %119 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_id, align 4
  %tobool204.not = icmp eq ptr %120, null
  br i1 %tobool204.not, label %do.end202.if.end209_crit_edge, label %if.then205

do.end202.if.end209_crit_edge:                    ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then205:                                       ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #8
  %error207 = getelementptr inbounds %struct.mmc_command, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %error207 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -84, ptr %error207, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then205, %do.end202.if.end209_crit_edge, %if.end181.if.end209_crit_edge
  %end_command.1 = phi i32 [ 1, %if.then205 ], [ %end_command.0, %do.end202.if.end209_crit_edge ], [ %end_command.0, %if.end181.if.end209_crit_edge ]
  %and210 = and i32 %qstatus.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %if.end209.if.end216_crit_edge, label %if.then212

if.end209.if.end216_crit_edge:                    ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end216

if.then212:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev_id, align 4
  %tobool214.not = icmp ne ptr %123, null
  %cond215 = zext i1 %tobool214.not to i32
  br label %if.end216

if.end216:                                        ; preds = %if.then212, %if.end209.if.end216_crit_edge
  %end_command.2 = phi i32 [ %cond215, %if.then212 ], [ %end_command.1, %if.end209.if.end216_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end_command.2)
  %tobool217.not = icmp eq i32 %end_command.2, 0
  br i1 %tobool217.not, label %if.end216.if.end220_crit_edge, label %if.then218

if.end216.if.end220_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then218:                                       ; preds = %if.end216
  %124 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_id, align 4
  store ptr null, ptr %dev_id, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then218.if.end43.i_crit_edge, label %if.then.i

if.then218.if.end43.i_crit_edge:                  ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then.i:                                        ; preds = %if.then218
  %and3.i = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %128 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base, align 4
  br i1 %tobool4.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %129, i32 56
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !194
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.mmc_command, ptr %125, i32 0, i32 2, i32 3
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %arrayidx.i, align 4
  %133 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %134, i32 60
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #6, !srcloc !194
  %136 = tail call i32 @llvm.bswap.i32(i32 %135) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  %arrayidx15.i = getelementptr %struct.mmc_command, ptr %125, i32 0, i32 2, i32 2
  %137 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %arrayidx15.i, align 4
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base, align 4
  %add.ptr19.i = getelementptr i8, ptr %139, i32 64
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #6, !srcloc !194
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  %arrayidx24.i = getelementptr %struct.mmc_command, ptr %125, i32 0, i32 2, i32 1
  %142 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %arrayidx24.i, align 4
  %143 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base, align 4
  %add.ptr28.i = getelementptr i8, ptr %144, i32 68
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #6, !srcloc !194
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  %147 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %resp.i, align 4
  br label %if.end43.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr37.i = getelementptr i8, ptr %129, i32 68
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #6, !srcloc !194
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  %resp41.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 2
  %150 = ptrtoint ptr %resp41.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %resp41.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else.i, %if.then5.i, %if.then218.if.end43.i_crit_edge
  %151 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data1, align 4
  %cmp.i = icmp eq ptr %152, null
  br i1 %cmp.i, label %if.end43.i.if.then45.i_crit_edge, label %lor.lhs.false.i

if.end43.i.if.then45.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

lor.lhs.false.i:                                  ; preds = %if.end43.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 5
  %153 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool44.not.i = icmp eq i32 %154, 0
  br i1 %tobool44.not.i, label %lor.lhs.false.i.if.end220_crit_edge, label %lor.lhs.false.i.if.then45.i_crit_edge

lor.lhs.false.i.if.then45.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45.i

lor.lhs.false.i.if.end220_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end220

if.then45.i:                                      ; preds = %lor.lhs.false.i.if.then45.i_crit_edge, %if.end43.i.if.then45.i_crit_edge
  %error46.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 5
  %155 = ptrtoint ptr %error46.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %error46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %156)
  %cmp47.i = icmp eq i32 %156, -110
  br i1 %cmp47.i, label %if.then48.i, label %if.then45.i.if.end50.i_crit_edge

if.then45.i.if.end50.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50.i

if.then48.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %mrq.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 8
  %157 = ptrtoint ptr %mrq.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mrq.i, align 4
  %cmd49.i = getelementptr inbounds %struct.mmc_request, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %cmd49.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cmd49.i, align 4
  %retries.i = getelementptr inbounds %struct.mmc_command, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %retries.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %retries.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then48.i, %if.then45.i.if.end50.i_crit_edge
  %mmc.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %162 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mmc.i, align 4
  %mrq51.i = getelementptr inbounds %struct.mmc_command, ptr %125, i32 0, i32 8
  %164 = ptrtoint ptr %mrq51.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mrq51.i, align 4
  tail call void @mmc_request_done(ptr noundef %163, ptr noundef %165) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %166 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base, align 4
  %add.ptr53.i = getelementptr i8, ptr %167, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 0) #6, !srcloc !197
  %active_request.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 19
  %168 = ptrtoint ptr %active_request.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %active_request.i, align 1
  br label %if.end220

if.end220:                                        ; preds = %if.end50.i, %lor.lhs.false.i.if.end220_crit_edge, %if.end216.if.end220_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end_transfer.3)
  %tobool221.not = icmp eq i32 %end_transfer.3, 0
  br i1 %tobool221.not, label %if.end220.cleanup_crit_edge, label %if.then222

if.end220.cleanup_crit_edge:                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then222:                                       ; preds = %if.end220
  %169 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %data1, align 4
  %mmc.i308 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %170 = ptrtoint ptr %mmc.i308 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmc.i308, align 4
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %171, i32 0, i32 16
  %172 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %caps.i, align 32
  %and.i309 = and i32 %173, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i309)
  %tobool.not.i310 = icmp eq i32 %and.i309, 0
  br i1 %tobool.not.i310, label %if.then222.if.end10.i_crit_edge, label %if.then.i311

if.then222.if.end10.i_crit_edge:                  ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i311:                                     ; preds = %if.then222
  %sdio_int.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 18
  %174 = ptrtoint ptr %sdio_int.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %sdio_int.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool2.not.i = icmp eq i8 %175, 0
  br i1 %tobool2.not.i, label %if.then.i311.if.end10.i_crit_edge, label %land.lhs.true.i

if.then.i311.if.end10.i_crit_edge:                ; preds = %if.then.i311
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.then.i311
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %add.ptr.i312 = getelementptr i8, ptr %177, i32 104
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i312) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  %179 = and i32 %178, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool5.not.i = icmp eq i32 %179, 0
  br i1 %tobool5.not.i, label %do.body.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %180 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base, align 4
  %add.ptr8.i = getelementptr i8, ptr %181, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #6, !srcloc !197
  %182 = ptrtoint ptr %mmc.i308 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %mmc.i308, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %183, i32 0, i32 3
  %184 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %185, i32 0, i32 7
  %186 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %187(ptr noundef %183, i32 noundef 0) #6
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %183, i32 0, i32 49
  %188 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %183, i32 0, i32 47
  %189 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i323 = icmp eq ptr %190, null
  br i1 %tobool.not.i323, label %do.body.i.if.end10.i_crit_edge, label %if.then.i325

do.body.i.if.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i325:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i324 = tail call i32 @wake_up_process(ptr noundef nonnull %190) #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i325, %do.body.i.if.end10.i_crit_edge, %land.lhs.true.i.if.end10.i_crit_edge, %if.then.i311.if.end10.i_crit_edge, %if.then222.if.end10.i_crit_edge
  %do_dma.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 17
  %191 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %do_dma.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool11.not.i = icmp eq i8 %192, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end16.i_crit_edge, label %if.then12.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then12.i:                                      ; preds = %if.end10.i
  %data_dir.i321 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 10
  %193 = ptrtoint ptr %data_dir.i321 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %data_dir.i321, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %194)
  %cmp.i322 = icmp eq i8 %194, 1
  %dma_rx.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 15
  %dma_tx.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 14
  %sync_dev.0.in.i = select i1 %cmp.i322, ptr %dma_rx.i, ptr %dma_tx.i
  %195 = ptrtoint ptr %sync_dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %sync_dev.0.i = load ptr, ptr %sync_dev.0.in.i, align 4
  %196 = ptrtoint ptr %sync_dev.0.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sync_dev.0.i, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %197, i32 0, i32 47
  %198 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %199, null
  br i1 %tobool.not.i.i, label %if.then12.i.davinci_abort_dma.exit_crit_edge, label %if.then.i.i

if.then12.i.davinci_abort_dma.exit_crit_edge:     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %davinci_abort_dma.exit

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 %199(ptr noundef %sync_dev.0.i) #6
  br label %davinci_abort_dma.exit

davinci_abort_dma.exit:                           ; preds = %if.then.i.i, %if.then12.i.davinci_abort_dma.exit_crit_edge
  %200 = ptrtoint ptr %mmc.i308 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mmc.i308, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %204 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %206 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %sg_len.i, align 4
  %flags.i318 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %208 = ptrtoint ptr %flags.i318 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %flags.i318, align 4
  %and.i319 = and i32 %209, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i319)
  %tobool.not.i320 = icmp eq i32 %and.i319, 0
  %cond.i = select i1 %tobool.not.i320, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %203, ptr noundef %205, i32 noundef %207, i32 noundef %cond.i, i32 noundef 0) #6
  %210 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %do_dma.i, align 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %davinci_abort_dma.exit, %if.end10.i.if.end16.i_crit_edge
  %data_dir.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 10
  %211 = ptrtoint ptr %data_dir.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %data_dir.i, align 1
  %stop.i = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %212 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %stop.i, align 4
  %tobool17.not.i = icmp eq ptr %213, null
  br i1 %tobool17.not.i, label %if.end16.i.if.then22.i_crit_edge, label %lor.lhs.false.i313

if.end16.i.if.then22.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22.i

lor.lhs.false.i313:                               ; preds = %if.end16.i
  %214 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev_id, align 4
  %tobool18.not.i = icmp eq ptr %215, null
  br i1 %tobool18.not.i, label %lor.lhs.false.i313.if.else.i317_crit_edge, label %land.lhs.true19.i

lor.lhs.false.i313.if.else.i317_crit_edge:        ; preds = %lor.lhs.false.i313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i317

land.lhs.true19.i:                                ; preds = %lor.lhs.false.i313
  %error.i314 = getelementptr inbounds %struct.mmc_command, ptr %215, i32 0, i32 5
  %216 = ptrtoint ptr %error.i314 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %error.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool21.not.i = icmp eq i32 %217, 0
  br i1 %tobool21.not.i, label %land.lhs.true19.i.if.else.i317_crit_edge, label %land.lhs.true19.i.if.then22.i_crit_edge

land.lhs.true19.i.if.then22.i_crit_edge:          ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then22.i

land.lhs.true19.i.if.else.i317_crit_edge:         ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i317

if.then22.i:                                      ; preds = %land.lhs.true19.i.if.then22.i_crit_edge, %if.end16.i.if.then22.i_crit_edge
  %218 = ptrtoint ptr %mmc.i308 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %mmc.i308, align 4
  %mrq.i315 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 9
  %220 = ptrtoint ptr %mrq.i315 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mrq.i315, align 4
  tail call void @mmc_request_done(ptr noundef %219, ptr noundef %221) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %222 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base, align 4
  %add.ptr27.i = getelementptr i8, ptr %223, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 0) #6, !srcloc !197
  %active_request.i316 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 19
  %224 = ptrtoint ptr %active_request.i316 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %active_request.i316, align 1
  br label %cleanup

if.else.i317:                                     ; preds = %land.lhs.true19.i.if.else.i317_crit_edge, %lor.lhs.false.i313.if.else.i317_crit_edge
  tail call fastcc void @mmc_davinci_start_command(ptr noundef %dev_id, ptr noundef nonnull %213) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i317, %if.then22.i, %if.end220.cleanup_crit_edge, %do.body10
  %retval.0 = phi i32 [ 0, %do.body10 ], [ 1, %if.end220.cleanup_crit_edge ], [ 1, %if.then22.i ], [ 1, %if.else.i317 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_davinci_sdio_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !194
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %do.body

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_sdio_irq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_sdio_irq, %if.then7)) #6
          to label %do.body8 [label %if.then7], !srcloc !193

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_sdio_irq.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.64, i32 noundef %3) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then7, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %or = or i32 %3, 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #6, !srcloc !197
  %mmc13 = getelementptr inbounds %struct.mmc_davinci_host, ptr %dev_id, i32 0, i32 2
  %11 = ptrtoint ptr %mmc13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc13, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %16(ptr noundef %12, i32 noundef 0) #6
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 49
  %17 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 47
  %18 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body8.if.end14_crit_edge, label %if.then.i

do.body8.if.end14_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then.i:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %19) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then.i, %do.body8.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_cd(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpiod_request_ro(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_davinci_request(ptr noundef %mmc, ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %add.neg = sub i32 -90, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub30 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub30)
  %cmp31 = icmp slt i32 %sub30, 0
  br i1 %cmp31, label %entry.while.body_crit_edge, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !194
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %do.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end:                                           ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !224
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %6
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %while.body.while.end_crit_edge
  %phi.bo = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 0
  br i1 %phi.cmp, label %while.end.if.end17_crit_edge, label %do.end15

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end15:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %mmc16 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %7 = ptrtoint ptr %mmc16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc16, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.29) #9
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -110, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #6
  br label %cleanup

if.end17:                                         ; preds = %while.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %do_dma = getelementptr inbounds %struct.mmc_davinci_host, ptr %private.i, i32 0, i32 17
  %14 = ptrtoint ptr %do_dma to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %do_dma, align 1
  tail call fastcc void @mmc_davinci_prepare_data(ptr noundef %private.i, ptr noundef %req)
  %cmd18 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %cmd18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd18, align 4
  tail call fastcc void @mmc_davinci_start_command(ptr noundef %private.i, ptr noundef %16)
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_davinci_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_set_ios, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc5 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %4 = ptrtoint ptr %mmc5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc5, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %8 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ios, align 4
  %bus_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %10 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bus_mode, align 4
  %conv = zext i8 %11 to i32
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %12 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_mode, align 2
  %conv7 = zext i8 %13 to i32
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %14 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdd, align 4
  %conv8 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_set_ios.__UNIQUE_ID_ddebug299, ptr noundef %7, ptr noundef nonnull @.str.48, i32 noundef %9, i32 noundef %conv, i32 noundef %conv7, i32 noundef %conv8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %power_mode9 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %16 = ptrtoint ptr %power_mode9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %power_mode9, align 2
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %17, label %do.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb16
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %sw.bb.sw.epilog_crit_edge, label %land.lhs.true

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %set_power = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %set_power to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %set_power, align 4
  %tobool12.not = icmp eq ptr %20, null
  br i1 %tobool12.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then13

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr i8, ptr %1, i32 -12
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  tail call void %20(i32 noundef %22, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %sw.bb16.sw.epilog_crit_edge, label %land.lhs.true18

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true18:                                  ; preds = %sw.bb16
  %set_power19 = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %set_power19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_power19, align 4
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %land.lhs.true18.sw.epilog_crit_edge, label %if.then21

land.lhs.true18.sw.epilog_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  %id23 = getelementptr i8, ptr %1, i32 -12
  %25 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id23, align 4
  tail call void %24(i32 noundef %26, i1 noundef zeroext true) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %land.lhs.true18.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %if.then13, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %27 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bus_width, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %28, label %sw.epilog.sw.epilog156_crit_edge [
    i8 3, label %do.body27
    i8 2, label %do.body55
    i8 0, label %do.body105
  ]

sw.epilog.sw.epilog156_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog156

do.body27:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_set_ios, %if.then39)) #6
          to label %do.body45 [label %if.then39], !srcloc !193

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  %mmc40 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %30 = ptrtoint ptr %mmc40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmc40, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_set_ios.__UNIQUE_ID_ddebug300, ptr noundef %33, ptr noundef nonnull @.str.49) #6
  br label %do.body45

do.body45:                                        ; preds = %if.then39, %do.body27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  %37 = and i32 %36, -67174401
  %38 = or i32 %37, 65536
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !197
  br label %sw.epilog156

do.body55:                                        ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_set_ios, %if.then67)) #6
          to label %do.end72 [label %if.then67], !srcloc !193

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #8
  %mmc68 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %41 = ptrtoint ptr %mmc68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmc68, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_set_ios.__UNIQUE_ID_ddebug301, ptr noundef %44, ptr noundef nonnull @.str.50) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.body55
  %version = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp = icmp eq i8 %46, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %base81 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %47 = ptrtoint ptr %base81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base81, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp, label %do.body76, label %do.body90

do.body76:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  %50 = and i32 %49, -67174401
  %51 = or i32 %50, 67108864
  %52 = ptrtoint ptr %base81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !197
  br label %sw.epilog156

do.body90:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  %54 = or i32 %49, 67108864
  %55 = ptrtoint ptr %base81 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base81, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #6, !srcloc !197
  br label %sw.epilog156

do.body105:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_set_ios, %if.then117)) #6
          to label %do.end122 [label %if.then117], !srcloc !193

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #8
  %mmc118 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %57 = ptrtoint ptr %mmc118 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmc118, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_set_ios.__UNIQUE_ID_ddebug302, ptr noundef %60, ptr noundef nonnull @.str.51) #6
  br label %do.end122

do.end122:                                        ; preds = %if.then117, %do.body105
  %version123 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %version123 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %version123, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp125 = icmp eq i8 %62, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %base133 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %63 = ptrtoint ptr %base133 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base133, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp125, label %do.body128, label %do.body142

do.body128:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  %66 = and i32 %65, -67174401
  %67 = ptrtoint ptr %base133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base133, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #6, !srcloc !197
  br label %sw.epilog156

do.body142:                                       ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #8
  %69 = and i32 %65, -67108865
  %70 = ptrtoint ptr %base133 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base133, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #6, !srcloc !197
  br label %sw.epilog156

sw.epilog156:                                     ; preds = %do.body142, %do.body128, %do.body90, %do.body76, %do.body45, %sw.epilog.sw.epilog156_crit_edge
  tail call fastcc void @calculate_clk_divider(ptr noundef %mmc, ptr noundef %ios)
  %bus_mode157 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %72 = ptrtoint ptr %bus_mode157 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bus_mode157, align 4
  %bus_mode158 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %74 = ptrtoint ptr %bus_mode158 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %bus_mode158, align 4
  %75 = ptrtoint ptr %power_mode9 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %power_mode9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp161 = icmp eq i8 %76, 1
  br i1 %cmp161, label %if.then163, label %sw.epilog156.if.end206_crit_edge

sw.epilog156.if.end206_crit_edge:                 ; preds = %sw.epilog156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

if.then163:                                       ; preds = %sw.epilog156
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @arm_heavy_mb() #6
  %base168 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %78 = ptrtoint ptr %base168 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base168, align 4
  %add.ptr169 = getelementptr i8, ptr %79, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %base168 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base168, align 4
  %add.ptr174 = getelementptr i8, ptr %81, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr174, i32 4194304) #6, !srcloc !197
  %add.neg = sub i32 -5, %77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %sub267 = add i32 %add.neg, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub267)
  %cmp175268 = icmp slt i32 %sub267, 0
  br i1 %cmp175268, label %if.then163.while.body_crit_edge, label %if.then163.do.end202_crit_edge

if.then163.do.end202_crit_edge:                   ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end202

if.then163.while.body_crit_edge:                  ; preds = %if.then163
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.then163.while.body_crit_edge
  %83 = ptrtoint ptr %base168 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base168, align 4
  %add.ptr181 = getelementptr i8, ptr %84, i32 8
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  %86 = and i32 %85, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool186.not = icmp eq i32 %86, 0
  br i1 %tobool186.not, label %cleanup, label %while.body.if.end206_crit_edge

while.body.if.end206_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end206

cleanup:                                          ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !231
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %87
  %cmp175 = icmp slt i32 %sub, 0
  br i1 %cmp175, label %cleanup.while.body_crit_edge, label %cleanup.do.end202_crit_edge

cleanup.do.end202_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end202

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end202:                                        ; preds = %cleanup.do.end202_crit_edge, %if.then163.do.end202_crit_edge
  %mmc203 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %88 = ptrtoint ptr %mmc203 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmc203, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.52) #9
  br label %if.end206

if.end206:                                        ; preds = %do.end202, %while.body.if.end206_crit_edge, %sw.epilog156.if.end206_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_davinci_get_ro(ptr noundef %mmc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_ro = getelementptr inbounds %struct.davinci_mmc_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %get_ro to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_ro, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr i8, ptr %1, i32 -12
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call = tail call i32 %5(i32 noundef %7) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @mmc_gpio_get_ro(ptr noundef %mmc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_davinci_get_cd(ptr noundef %mmc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 128
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr i8, ptr %1, i32 -12
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %call = tail call i32 %5(i32 noundef %7) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call i32 @mmc_gpio_get_cd(ptr noundef %mmc) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_davinci_enable_sdio_irq(ptr nocapture noundef %mmc, i32 noundef %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 104
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #6, !srcloc !197
  %mmc7 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %6 = ptrtoint ptr %mmc7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc7, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %11(ptr noundef %7, i32 noundef 0) #6
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 49
  %12 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 47
  %13 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %do.body.if.end35_crit_edge, label %if.then.i

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %14) #6
  br label %if.end35

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sdio_int = getelementptr inbounds %struct.mmc_davinci_host, ptr %private.i, i32 0, i32 18
  %15 = ptrtoint ptr %sdio_int to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %sdio_int, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 108
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %21, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %19) #6, !srcloc !197
  br label %if.end35

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sdio_int21 = getelementptr inbounds %struct.mmc_davinci_host, ptr %private.i, i32 0, i32 18
  %22 = ptrtoint ptr %sdio_int21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %sdio_int21, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %base27 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base27, align 4
  %add.ptr28 = getelementptr i8, ptr %24, i32 108
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  %26 = and i32 %25, -16777217
  %27 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base27, align 4
  %add.ptr34 = getelementptr i8, ptr %28, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %26) #6, !srcloc !197
  br label %if.end35

if.end35:                                         ; preds = %if.else20, %if.else, %if.then.i, %do.body.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_davinci_prepare_data(ptr noundef %host, ptr nocapture noundef readonly %req) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rw_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %cmp = icmp eq i32 %0, 32
  %cond = select i1 %cmp, i32 4, i32 0
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %1 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1, align 4
  %version = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 22
  %3 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp2 = icmp eq i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %0)
  %cmp4 = icmp eq i32 %0, 64
  %cond6 = select i1 %cmp4, i32 4, i32 0
  %fifo_lev.0 = select i1 %cmp2, i32 %cond6, i32 %cond
  %data7 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 1
  %5 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %data7, align 4
  %cmp8 = icmp eq ptr %2, null
  br i1 %cmp8, label %if.then10, label %do.body17

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data_dir = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 10
  %6 = ptrtoint ptr %data_dir to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %data_dir, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #6, !srcloc !197
  br label %cleanup

do.body17:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_prepare_data.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_prepare_data, %if.then20)) #6
          to label %do.body26 [label %if.then20], !srcloc !193

if.then20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %flags = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.34, ptr @.str.33
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_prepare_data.__UNIQUE_ID_ddebug297, ptr noundef %14, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond22, i32 noundef %18, i32 noundef %20) #6
  br label %do.body26

do.body26:                                        ; preds = %if.then20, %do.body17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_prepare_data.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_prepare_data, %if.then38)) #6
          to label %do.end43 [label %if.then38], !srcloc !193

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %mmc39 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %21 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc39, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  %timeout_clks = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 1
  %25 = ptrtoint ptr %timeout_clks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout_clks, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_prepare_data.__UNIQUE_ID_ddebug298, ptr noundef %24, ptr noundef nonnull @.str.35, i32 noundef %26, i32 noundef %28) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %do.body26
  %timeout_clks44 = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 1
  %29 = ptrtoint ptr %timeout_clks44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timeout_clks44, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %2, align 4
  %ns_in_one_cycle = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 23
  %33 = ptrtoint ptr %ns_in_one_cycle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ns_in_one_cycle, align 4
  %div = udiv i32 %32, %34
  %add = add i32 %div, %30
  %35 = tail call i32 @llvm.smin.i32(i32 %add, i32 65535)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %base53 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  %37 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base53, align 4
  %add.ptr54 = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %36) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %blocks58 = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 3
  %39 = ptrtoint ptr %blocks58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blocks58, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base53, align 4
  %add.ptr60 = getelementptr i8, ptr %43, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %41) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %blksz64 = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 2
  %44 = ptrtoint ptr %blksz64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blksz64, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base53, align 4
  %add.ptr66 = getelementptr i8, ptr %48, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %46) #6, !srcloc !197
  %flags67 = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 6
  %49 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags67, align 4
  %and68 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %data_dir84 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 10
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %data_dir84 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %data_dir84, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %or75 = shl nuw nsw i32 %fifo_lev.0, 24
  %52 = or i32 %or75, 50331648
  %53 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base53, align 4
  %add.ptr77 = getelementptr i8, ptr %54, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %52) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %55 = or i32 %or75, 33554432
  %56 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base53, align 4
  %add.ptr83 = getelementptr i8, ptr %57, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %55) #6, !srcloc !197
  br label %if.end98

if.else:                                          ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %data_dir84 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %data_dir84, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void @arm_heavy_mb() #6
  %or89 = shl nuw nsw i32 %fifo_lev.0, 24
  %59 = or i32 %or89, 16777216
  %60 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base53, align 4
  %add.ptr91 = getelementptr i8, ptr %61, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 %59) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %base53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base53, align 4
  %add.ptr97 = getelementptr i8, ptr %63, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %or89) #6, !srcloc !197
  br label %if.end98

if.end98:                                         ; preds = %if.else, %if.then70
  %buffer = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 11
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %buffer, align 4
  %65 = ptrtoint ptr %blocks58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blocks58, align 4
  %67 = ptrtoint ptr %blksz64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %blksz64, align 4
  %mul = mul i32 %68, %66
  %bytes_left = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 13
  %69 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul, ptr %bytes_left, align 4
  %use_dma = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 16
  %70 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %use_dma, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool101.not = icmp eq i8 %71, 0
  br i1 %tobool101.not, label %if.end98.if.else113_crit_edge, label %land.lhs.true

if.end98.if.else113_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else113

land.lhs.true:                                    ; preds = %if.end98
  %72 = load i32, ptr @rw_threshold, align 4
  %sub = add i32 %72, -1
  %and104 = and i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %cmp105 = icmp eq i32 %and104, 0
  br i1 %cmp105, label %land.lhs.true107, label %land.lhs.true.if.else113_crit_edge

land.lhs.true.if.else113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else113

land.lhs.true107:                                 ; preds = %land.lhs.true
  %mmc.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %73 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 12
  %77 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 10
  %79 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sg_len.i, align 4
  %81 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags67, align 4
  %and.i.i = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call1.i = tail call i32 @dma_map_sg_attrs(ptr noundef %76, ptr noundef %78, i32 noundef %80, i32 noundef %cond.i.i, i32 noundef 0) #6
  %sg_len2.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 20
  %83 = ptrtoint ptr %sg_len2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call1.i, ptr %sg_len2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp31.not.i = icmp eq i32 %call1.i, 0
  br i1 %cmp31.not.i, label %land.lhs.true107.mmc_davinci_start_dma_transfer.exit_crit_edge, label %for.body.lr.ph.i

land.lhs.true107.mmc_davinci_start_dma_transfer.exit_crit_edge: ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmc_davinci_start_dma_transfer.exit

for.body.lr.ph.i:                                 ; preds = %land.lhs.true107
  %84 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sg.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call1.i
  br i1 %exitcond.not.i, label %for.cond.i.mmc_davinci_start_dma_transfer.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.mmc_davinci_start_dma_transfer.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mmc_davinci_start_dma_transfer.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %dma_length.i = getelementptr %struct.scatterlist, ptr %85, i32 %i.032.i, i32 4
  %86 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_length.i, align 4
  %and.i = and i32 %87, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %mmc_davinci_start_dma_transfer.exit.thread

mmc_davinci_start_dma_transfer.exit.thread:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmc.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 128
  %92 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %sg_len.i, align 4
  %94 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags67, align 4
  %and.i28.i = and i32 %95, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28.i)
  %tobool.not.i29.i = icmp eq i32 %and.i28.i, 0
  %cond.i30.i = select i1 %tobool.not.i29.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %91, ptr noundef %85, i32 noundef %93, i32 noundef %cond.i30.i, i32 noundef 0) #6
  br label %if.else113

mmc_davinci_start_dma_transfer.exit:              ; preds = %for.cond.i.mmc_davinci_start_dma_transfer.exit_crit_edge, %land.lhs.true107.mmc_davinci_start_dma_transfer.exit_crit_edge
  %do_dma.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 17
  %96 = ptrtoint ptr %do_dma.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %do_dma.i, align 1
  %call10.i = tail call fastcc i32 @mmc_davinci_send_dma_request(ptr noundef %host, ptr noundef nonnull %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp109 = icmp eq i32 %call10.i, 0
  br i1 %cmp109, label %if.then111, label %mmc_davinci_start_dma_transfer.exit.if.else113_crit_edge

mmc_davinci_start_dma_transfer.exit.if.else113_crit_edge: ; preds = %mmc_davinci_start_dma_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else113

if.then111:                                       ; preds = %mmc_davinci_start_dma_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %bytes_left to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %bytes_left, align 4
  br label %cleanup

if.else113:                                       ; preds = %mmc_davinci_start_dma_transfer.exit.if.else113_crit_edge, %mmc_davinci_start_dma_transfer.exit.thread, %land.lhs.true.if.else113_crit_edge, %if.end98.if.else113_crit_edge
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %2, i32 0, i32 10
  %98 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %sg_len, align 4
  %sg_len114 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 20
  %100 = ptrtoint ptr %sg_len114 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %sg_len114, align 4
  %101 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %data7, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %102, i32 0, i32 12
  %103 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sg, align 4
  %sg116 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 21
  %105 = ptrtoint ptr %sg116 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %sg116, align 4
  %dma_length.i170 = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 4
  %106 = ptrtoint ptr %dma_length.i170 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_length.i170, align 4
  %buffer_bytes_left.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 12
  %108 = ptrtoint ptr %buffer_bytes_left.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %buffer_bytes_left.i, align 4
  %109 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %104, align 4
  %and.i.i.i.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !247

do.body2.i.i.i:                                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !248
  unreachable

sg_virt.exit.i:                                   ; preds = %if.else113
  %and.i.i.i = and i32 %110, -4
  %111 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %111) #6
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %104, i32 0, i32 1
  %112 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %113
  %114 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %add.ptr.i.i, ptr %buffer, align 4
  %115 = ptrtoint ptr %buffer_bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %buffer_bytes_left.i, align 4
  %117 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bytes_left, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %118)
  %cmp.i = icmp ugt i32 %116, %118
  br i1 %cmp.i, label %if.then.i171, label %sg_virt.exit.i.cleanup_crit_edge

sg_virt.exit.i.cleanup_crit_edge:                 ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i171:                                     ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %buffer_bytes_left.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %buffer_bytes_left.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i171, %sg_virt.exit.i.cleanup_crit_edge, %if.then111, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_davinci_start_command(ptr noundef %host, ptr noundef %cmd) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_start_command.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_start_command, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !193

if.then:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 31
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and, label %sw.default [
    i32 21, label %if.then.sw.epilog_crit_edge
    i32 29, label %sw.bb3
    i32 7, label %sw.bb4
    i32 1, label %sw.bb5
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %if.then.sw.epilog_crit_edge
  %s.0 = phi ptr [ @.str.45, %sw.default ], [ @.str.44, %sw.bb5 ], [ @.str.43, %sw.bb4 ], [ @.str.42, %sw.bb3 ], [ @.str.41, %if.then.sw.epilog_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_start_command.__UNIQUE_ID_ddebug293, ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %5, i32 noundef %7, ptr noundef nonnull %s.0) #6
  br label %do.end

do.end:                                           ; preds = %sw.epilog, %entry
  %11 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd, ptr %host, align 4
  %flags8 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %12 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags8, align 4
  %and9 = and i32 %13, 31
  %14 = zext i32 %and9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %and9, label %sw.default17 [
    i32 29, label %sw.bb10
    i32 21, label %do.end.sw.epilog39_crit_edge
    i32 7, label %sw.bb13
    i32 1, label %sw.bb15
  ]

do.end.sw.epilog39_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog39

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog39

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog39

sw.bb15:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog39

sw.default17:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_start_command.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_start_command, %if.then31)) #6
          to label %sw.epilog39 [label %if.then31], !srcloc !193

if.then31:                                        ; preds = %sw.default17
  call void @__sanitizer_cov_trace_pc() #8
  %mmc32 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %15 = ptrtoint ptr %mmc32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc32, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %19 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags8, align 4
  %and35 = and i32 %20, 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_start_command.__UNIQUE_ID_ddebug294, ptr noundef %18, ptr noundef nonnull @.str.46, i32 noundef %and35) #6
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %if.then31, %sw.default17, %sw.bb15, %sw.bb13, %sw.bb10, %do.end.sw.epilog39_crit_edge
  %cmd_reg.1 = phi i32 [ 0, %if.then31 ], [ 1536, %sw.bb15 ], [ 1024, %sw.bb13 ], [ 512, %do.end.sw.epilog39_crit_edge ], [ 768, %sw.bb10 ], [ 0, %sw.default17 ]
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd, align 4
  %or41 = or i32 %22, %cmd_reg.1
  %do_dma = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 17
  %23 = ptrtoint ptr %do_dma to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %do_dma, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool42.not = icmp eq i8 %24, 0
  %or44 = or i32 %or41, 65536
  %spec.select = select i1 %tobool42.not, i32 %or41, i32 %or44
  %version = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 22
  %25 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp = icmp eq i8 %26, 1
  br i1 %cmp, label %land.lhs.true, label %sw.epilog39.if.end55_crit_edge

sw.epilog39.if.end55_crit_edge:                   ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true:                                    ; preds = %sw.epilog39
  %data = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %cmp47.not = icmp eq ptr %28, null
  br i1 %cmp47.not, label %land.lhs.true.if.end55_crit_edge, label %land.lhs.true49

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

land.lhs.true49:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %data_dir = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 10
  %29 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp51 = icmp eq i8 %30, 1
  %spec.select199 = select i1 %cmp51, i32 %or44, i32 %spec.select
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true49, %land.lhs.true.if.end55_crit_edge, %sw.epilog39.if.end55_crit_edge
  %cmd_reg.3 = phi i32 [ %spec.select, %land.lhs.true.if.end55_crit_edge ], [ %spec.select, %sw.epilog39.if.end55_crit_edge ], [ %spec.select199, %land.lhs.true49 ]
  %data56 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 7
  %31 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data56, align 4
  %tobool57.not = icmp eq ptr %32, null
  %or59 = or i32 %cmd_reg.3, 8192
  %spec.select200 = select i1 %tobool57.not, i32 %cmd_reg.3, i32 %or59
  %data_dir61 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 10
  %33 = ptrtoint ptr %data_dir61 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data_dir61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp63 = icmp eq i8 %34, 2
  %or66 = or i32 %spec.select200, 2048
  %cmd_reg.5 = select i1 %cmp63, i32 %or66, i32 %spec.select200
  %bus_mode = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 9
  %35 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %36)
  %cmp69 = icmp eq i8 %36, 2
  %or72 = or i32 %cmd_reg.5, 128
  %cmd_reg.6 = select i1 %cmp69, i32 %or72, i32 %cmd_reg.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -14745600) #6, !srcloc !197
  %39 = ptrtoint ptr %data_dir61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data_dir61, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %40, label %if.end55.do.body110_crit_edge [
    i8 2, label %if.end100.thread214
    i8 1, label %if.end100.thread
  ]

if.end55.do.body110_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body110

if.end100.thread214:                              ; preds = %if.end55
  %42 = ptrtoint ptr %do_dma to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %do_dma, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool84.not = icmp eq i8 %43, 0
  br i1 %tobool84.not, label %if.then108, label %if.end100.thread214.do.body110_crit_edge

if.end100.thread214.do.body110_crit_edge:         ; preds = %if.end100.thread214
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body110

if.end100.thread:                                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %do_dma to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %do_dma, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool95.not = icmp eq i8 %45, 0
  %spec.select202 = select i1 %tobool95.not, i32 1245, i32 221
  br label %do.body110

if.then108:                                       ; preds = %if.end100.thread214
  call void @__sanitizer_cov_trace_pc() #8
  %46 = load i32, ptr @rw_threshold, align 4
  tail call fastcc void @davinci_fifo_data_trans(ptr noundef %host, i32 noundef %46)
  br label %do.body110

do.body110:                                       ; preds = %if.then108, %if.end100.thread, %if.end100.thread214.do.body110_crit_edge, %if.end55.do.body110_crit_edge
  %im_val.0210 = phi i32 [ 693, %if.then108 ], [ 181, %if.end100.thread214.do.body110_crit_edge ], [ %spec.select202, %if.end100.thread ], [ 148, %if.end55.do.body110_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %arg113 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %47 = ptrtoint ptr %arg113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arg113, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr115 = getelementptr i8, ptr %51, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr115, i32 %49) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %cmd_reg.6)
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr120 = getelementptr i8, ptr %54, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %52) #6, !srcloc !197
  %active_request = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 19
  %55 = ptrtoint ptr %active_request to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %active_request, align 1
  %56 = ptrtoint ptr %do_dma to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %do_dma, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool122.not = icmp eq i8 %57, 0
  br i1 %tobool122.not, label %land.lhs.true123, label %do.body110.do.body145_crit_edge

do.body110.do.body145_crit_edge:                  ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body145

land.lhs.true123:                                 ; preds = %do.body110
  %bytes_left = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 13
  %58 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bytes_left, align 4
  %60 = load i32, ptr @poll_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %60)
  %cmp124.not = icmp ugt i32 %59, %60
  br i1 %cmp124.not, label %land.lhs.true123.do.body145_crit_edge, label %if.then126

land.lhs.true123.do.body145_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body145

if.then126:                                       ; preds = %land.lhs.true123
  %61 = load i32, ptr @poll_loopcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool130.not225 = icmp eq i32 %61, 0
  br i1 %tobool130.not225, label %if.then126.do.body145_crit_edge, label %if.then126.while.body_crit_edge

if.then126.while.body_crit_edge:                  ; preds = %if.then126
  br label %while.body

if.then126.do.body145_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body145

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then126.while.body_crit_edge
  %count.0227 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %61, %if.then126.while.body_crit_edge ]
  %dec = add i32 %count.0227, -1
  %call131 = tail call i32 @mmc_davinci_irq(i32 noundef 0, ptr noundef %host)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !253
  %62 = ptrtoint ptr %active_request to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %active_request, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool128.not = icmp eq i8 %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool130.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool128.not, i1 true, i1 %tobool130.not
  br i1 %or.cond, label %if.end141, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end141:                                        ; preds = %while.body
  br i1 %tobool128.not, label %if.end141.if.end150_crit_edge, label %if.end141.do.body145_crit_edge

if.end141.do.body145_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body145

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

do.body145:                                       ; preds = %if.end141.do.body145_crit_edge, %if.then126.do.body145_crit_edge, %land.lhs.true123.do.body145_crit_edge, %do.body110.do.body145_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %im_val.0210)
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr149 = getelementptr i8, ptr %66, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149, i32 %64) #6, !srcloc !197
  br label %if.end150

if.end150:                                        ; preds = %do.body145, %if.end141.if.end150_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_davinci_send_dma_request(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  %dma_tx_conf = alloca %struct.dma_slave_config, align 4
  %dma_rx_conf = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_dir = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 10
  %0 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_tx_conf) #6
  %2 = getelementptr inbounds i8, ptr %dma_tx_conf, i32 36
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !255
  %4 = ptrtoint ptr %dma_tx_conf to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %dma_tx_conf, align 4
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 1
  %5 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %src_addr, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 2
  %mem_res = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 6
  %6 = ptrtoint ptr %mem_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem_res, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 44
  %10 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %dst_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 3
  %11 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 4
  %12 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %dst_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 5
  %13 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 6
  %14 = load i32, ptr @rw_threshold, align 4
  %div80 = lshr i32 %14, 2
  %15 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div80, ptr %dst_maxburst, align 4
  %src_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 7
  %16 = ptrtoint ptr %src_port_window_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %src_port_window_size, align 4
  %dst_port_window_size = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 8
  %17 = ptrtoint ptr %dst_port_window_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dst_port_window_size, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 9
  %18 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %device_fc, align 4
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 10
  %19 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %peripheral_config, align 4
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %dma_tx_conf, i32 0, i32 11
  %20 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %peripheral_size, align 4
  %dma_tx = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 14
  %21 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_tx, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then.dmaengine_slave_config.exit_crit_edge, label %if.then.i

if.then.dmaengine_slave_config.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_slave_config.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %26(ptr noundef %22, ptr noundef nonnull %dma_tx_conf) #6
  %27 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load ptr, ptr %dma_tx, align 4
  br label %dmaengine_slave_config.exit

dmaengine_slave_config.exit:                      ; preds = %if.then.i, %if.then.dmaengine_slave_config.exit_crit_edge
  %28 = phi ptr [ %22, %if.then.dmaengine_slave_config.exit_crit_edge ], [ %.pr, %if.then.i ]
  %sg = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %29 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 20
  %31 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sg_len, align 4
  %tobool.not.i87 = icmp eq ptr %28, null
  br i1 %tobool.not.i87, label %dmaengine_slave_config.exit.do.body_crit_edge, label %lor.lhs.false.i

dmaengine_slave_config.exit.do.body_crit_edge:    ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false.i:                                  ; preds = %dmaengine_slave_config.exit
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %tobool1.not.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 39
  %35 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body_crit_edge, label %dmaengine_prep_slave_sg.exit

lor.lhs.false2.i.do.body_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

dmaengine_prep_slave_sg.exit:                     ; preds = %lor.lhs.false2.i
  %call.i88 = call ptr %36(ptr noundef nonnull %28, ptr noundef %30, i32 noundef %32, i32 noundef 1, i32 noundef 3, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i88, null
  br i1 %tobool.not, label %dmaengine_prep_slave_sg.exit.do.body_crit_edge, label %cleanup.thread

dmaengine_prep_slave_sg.exit.do.body_crit_edge:   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup.thread:                                   ; preds = %dmaengine_prep_slave_sg.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_tx_conf) #6
  br label %if.end58

do.body:                                          ; preds = %dmaengine_prep_slave_sg.exit.do.body_crit_edge, %lor.lhs.false2.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %dmaengine_slave_config.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_send_dma_request, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !193

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %37 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug295, ptr noundef %40, ptr noundef nonnull @.str.37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_tx_conf) #6
  br label %cleanup60

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_rx_conf) #6
  %41 = getelementptr inbounds i8, ptr %dma_rx_conf, i32 36
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %41, align 4, !annotation !255
  %43 = ptrtoint ptr %dma_rx_conf to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %dma_rx_conf, align 4
  %src_addr13 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 1
  %mem_res14 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 6
  %44 = ptrtoint ptr %mem_res14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem_res14, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %add16 = add i32 %47, 40
  %48 = ptrtoint ptr %src_addr13 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add16, ptr %src_addr13, align 4
  %dst_addr17 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 2
  %49 = ptrtoint ptr %dst_addr17 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %dst_addr17, align 4
  %src_addr_width18 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 3
  %50 = ptrtoint ptr %src_addr_width18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %src_addr_width18, align 4
  %dst_addr_width19 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 4
  %51 = ptrtoint ptr %dst_addr_width19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %dst_addr_width19, align 4
  %src_maxburst20 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 5
  %52 = load i32, ptr @rw_threshold, align 4
  %div2179 = lshr i32 %52, 2
  %53 = ptrtoint ptr %src_maxburst20 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div2179, ptr %src_maxburst20, align 4
  %dst_maxburst22 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 6
  %peripheral_config26 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 10
  %54 = ptrtoint ptr %peripheral_config26 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %peripheral_config26, align 4
  %peripheral_size27 = getelementptr inbounds %struct.dma_slave_config, ptr %dma_rx_conf, i32 0, i32 11
  %55 = ptrtoint ptr %peripheral_size27 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %peripheral_size27, align 4
  %dma_rx = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 15
  %56 = call ptr @memset(ptr %dst_maxburst22, i32 0, i32 13)
  %57 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dma_rx, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %device_config.i90 = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %device_config.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device_config.i90, align 4
  %tobool.not.i91 = icmp eq ptr %62, null
  br i1 %tobool.not.i91, label %if.else.dmaengine_slave_config.exit94_crit_edge, label %if.then.i93

if.else.dmaengine_slave_config.exit94_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_slave_config.exit94

if.then.i93:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i92 = call i32 %62(ptr noundef %58, ptr noundef nonnull %dma_rx_conf) #6
  %63 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr115 = load ptr, ptr %dma_rx, align 4
  br label %dmaengine_slave_config.exit94

dmaengine_slave_config.exit94:                    ; preds = %if.then.i93, %if.else.dmaengine_slave_config.exit94_crit_edge
  %64 = phi ptr [ %58, %if.else.dmaengine_slave_config.exit94_crit_edge ], [ %.pr115, %if.then.i93 ]
  %sg31 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %65 = ptrtoint ptr %sg31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sg31, align 4
  %sg_len32 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 20
  %67 = ptrtoint ptr %sg_len32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sg_len32, align 4
  %tobool.not.i95 = icmp eq ptr %64, null
  br i1 %tobool.not.i95, label %dmaengine_slave_config.exit94.do.body36_crit_edge, label %lor.lhs.false.i97

dmaengine_slave_config.exit94.do.body36_crit_edge: ; preds = %dmaengine_slave_config.exit94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

lor.lhs.false.i97:                                ; preds = %dmaengine_slave_config.exit94
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %64, align 4
  %tobool1.not.i96 = icmp eq ptr %70, null
  br i1 %tobool1.not.i96, label %lor.lhs.false.i97.do.body36_crit_edge, label %lor.lhs.false2.i100

lor.lhs.false.i97.do.body36_crit_edge:            ; preds = %lor.lhs.false.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

lor.lhs.false2.i100:                              ; preds = %lor.lhs.false.i97
  %device_prep_slave_sg.i98 = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 39
  %71 = ptrtoint ptr %device_prep_slave_sg.i98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device_prep_slave_sg.i98, align 4
  %tobool4.not.i99 = icmp eq ptr %72, null
  br i1 %tobool4.not.i99, label %lor.lhs.false2.i100.do.body36_crit_edge, label %dmaengine_prep_slave_sg.exit104

lor.lhs.false2.i100.do.body36_crit_edge:          ; preds = %lor.lhs.false2.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

dmaengine_prep_slave_sg.exit104:                  ; preds = %lor.lhs.false2.i100
  %call.i101 = call ptr %72(ptr noundef nonnull %64, ptr noundef %66, i32 noundef %68, i32 noundef 2, i32 noundef 3, ptr noundef null) #6
  %tobool34.not = icmp eq ptr %call.i101, null
  br i1 %tobool34.not, label %dmaengine_prep_slave_sg.exit104.do.body36_crit_edge, label %cleanup55.thread

dmaengine_prep_slave_sg.exit104.do.body36_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body36

cleanup55.thread:                                 ; preds = %dmaengine_prep_slave_sg.exit104
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf) #6
  br label %if.end58

do.body36:                                        ; preds = %dmaengine_prep_slave_sg.exit104.do.body36_crit_edge, %lor.lhs.false2.i100.do.body36_crit_edge, %lor.lhs.false.i97.do.body36_crit_edge, %dmaengine_slave_config.exit94.do.body36_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_davinci_send_dma_request, %if.then48)) #6
          to label %cleanup55 [label %if.then48], !srcloc !193

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %mmc49 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 2
  %73 = ptrtoint ptr %mmc49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc49, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug296, ptr noundef %76, ptr noundef nonnull @.str.38) #6
  br label %cleanup55

cleanup55:                                        ; preds = %if.then48, %do.body36
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_rx_conf) #6
  br label %cleanup60

if.end58:                                         ; preds = %cleanup55.thread, %cleanup.thread
  %desc.0 = phi ptr [ %call.i88, %cleanup.thread ], [ %call.i101, %cleanup55.thread ]
  %chan.0 = phi ptr [ %22, %cleanup.thread ], [ %58, %cleanup55.thread ]
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0, i32 0, i32 4
  %77 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_submit.i, align 4
  %call.i105 = call i32 %78(ptr noundef nonnull %desc.0) #6
  %79 = ptrtoint ptr %chan.0 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chan.0, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %80, i32 0, i32 50
  %81 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device_issue_pending.i, align 4
  call void %82(ptr noundef %chan.0) #6
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %cleanup55, %cleanup
  %ret.3 = phi i32 [ -1, %cleanup ], [ 0, %if.end58 ], [ -1, %cleanup55 ]
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @davinci_fifo_data_trans(ptr nocapture noundef %host, i32 noundef %n) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_bytes_left = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 12
  %0 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  %call = tail call ptr @sg_next(ptr noundef %5) #6
  %sg1 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 21
  %6 = ptrtoint ptr %sg1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %sg1, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length.i, align 4
  %9 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %buffer_bytes_left, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call, align 4
  %and.i.i.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !247

do.body2.i.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !248
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then
  %and.i.i.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %12) #6
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %14
  %buffer.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 11
  %15 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i.i, ptr %buffer.i, align 4
  %16 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_bytes_left, align 4
  %bytes_left.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 13
  %18 = ptrtoint ptr %bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytes_left.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp ugt i32 %17, %19
  br i1 %cmp.i, label %if.then.i, label %sg_virt.exit.i.if.end_crit_edge

sg_virt.exit.i.if.end_crit_edge:                  ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %buffer_bytes_left, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %sg_virt.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %buffer = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 11
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %23 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buffer_bytes_left, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %n)
  %sub = sub i32 %24, %25
  %26 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %buffer_bytes_left, align 4
  %bytes_left = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 13
  %27 = ptrtoint ptr %bytes_left to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes_left, align 4
  %sub8 = sub i32 %28, %25
  store i32 %sub8, ptr %bytes_left, align 4
  %data_dir = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 10
  %29 = ptrtoint ptr %data_dir to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data_dir, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp9 = icmp eq i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp1284.not = icmp ult i32 %25, 4
  br i1 %cmp9, label %for.cond.preheader, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %if.end
  br i1 %cmp1284.not, label %for.cond22.preheader.for.end34_crit_edge, label %for.body26.lr.ph

for.cond22.preheader.for.end34_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.body26.lr.ph:                                 ; preds = %for.cond22.preheader
  %shr23 = lshr i32 %25, 2
  %base27 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  br label %for.body26

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp1284.not, label %for.cond.preheader.for.end_crit_edge, label %do.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %shr = lshr i32 %25, 2
  %base = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %p.086 = phi ptr [ %22, %do.body.lr.ph ], [ %add.ptr14, %do.body.do.body_crit_edge ]
  %i.085 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %p.086 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %p.086, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %33) #6, !srcloc !197
  %add.ptr14 = getelementptr i8, ptr %p.086, i32 4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond89.not = icmp eq i32 %inc, %shr
  br i1 %exitcond89.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %22, %for.cond.preheader.for.end_crit_edge ], [ %add.ptr14, %do.body.for.end_crit_edge ]
  %and = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end44_crit_edge, label %if.then15

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then15:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %base16 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  %36 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base16, align 4
  %add.ptr17 = getelementptr i8, ptr %37, i32 44
  tail call void @__raw_writesb(ptr noundef %add.ptr17, ptr noundef %p.0.lcssa, i32 noundef %and) #6
  %add.ptr20 = getelementptr i8, ptr %p.0.lcssa, i32 %and
  br label %if.end44

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %for.body26.lr.ph
  %p.183 = phi ptr [ %22, %for.body26.lr.ph ], [ %add.ptr31, %for.body26.for.body26_crit_edge ]
  %i.182 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc33, %for.body26.for.body26_crit_edge ]
  %38 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base27, align 4
  %add.ptr28 = getelementptr i8, ptr %39, i32 40
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !194
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %42 = ptrtoint ptr %p.183 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %p.183, align 4
  %add.ptr31 = getelementptr i8, ptr %p.183, i32 4
  %inc33 = add nuw nsw i32 %i.182, 1
  %exitcond.not = icmp eq i32 %inc33, %shr23
  br i1 %exitcond.not, label %for.body26.for.end34_crit_edge, label %for.body26.for.body26_crit_edge

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.body26.for.end34_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end34

for.end34:                                        ; preds = %for.body26.for.end34_crit_edge, %for.cond22.preheader.for.end34_crit_edge
  %p.1.lcssa = phi ptr [ %22, %for.cond22.preheader.for.end34_crit_edge ], [ %add.ptr31, %for.body26.for.end34_crit_edge ]
  %and35 = and i32 %25, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %for.end34.if.end44_crit_edge, label %if.then37

for.end34.if.end44_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then37:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #8
  %base38 = getelementptr inbounds %struct.mmc_davinci_host, ptr %host, i32 0, i32 5
  %43 = ptrtoint ptr %base38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base38, align 4
  %add.ptr39 = getelementptr i8, ptr %44, i32 40
  tail call void @__raw_readsb(ptr noundef %add.ptr39, ptr noundef %p.1.lcssa, i32 noundef %and35) #6
  %add.ptr42 = getelementptr i8, ptr %p.1.lcssa, i32 %and35
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %for.end34.if.end44_crit_edge, %if.then15, %for.end.if.end44_crit_edge
  %p.2 = phi ptr [ %add.ptr20, %if.then15 ], [ %p.0.lcssa, %for.end.if.end44_crit_edge ], [ %add.ptr42, %if.then37 ], [ %p.1.lcssa, %for.end34.if.end44_crit_edge ]
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %p.2, ptr %buffer, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @calculate_clk_divider(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %0 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  %5 = or i32 %4, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #6, !srcloc !197
  %ns_in_one_cycle = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %ns_in_one_cycle to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5000, ptr %ns_in_one_cycle, align 4
  br label %if.end48

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ios, align 4
  %mmc_input_clk.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %mmc_input_clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mmc_input_clk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.end.thread.i, label %land.lhs.true.i

if.end.thread.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp441.i = icmp ugt i32 %12, 1
  %spec.select42.i = zext i1 %cmp441.i to i32
  br label %calculate_freq_for_card.exit

land.lhs.true.i:                                  ; preds = %if.else
  %mul.i = shl i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul.i)
  %cmp.i = icmp ugt i32 %12, %mul.i
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 %12, %mul.i
  %sub.i = add i32 %div.i, -1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge
  %mmc_push_pull_divisor.0.i = phi i32 [ %sub.i, %if.then.i ], [ 0, %land.lhs.true.i.if.end.i_crit_edge ]
  %add.i = add i32 %mmc_push_pull_divisor.0.i, 1
  %mul2.i = shl i32 %add.i, 1
  %div3.i = udiv i32 %12, %mul2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.i, i32 %10)
  %cmp4.i = icmp ugt i32 %div3.i, %10
  %spec.select.i = select i1 %cmp4.i, i32 %add.i, i32 %mmc_push_pull_divisor.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %10)
  %cmp8.i = icmp ult i32 %10, 400001
  %spec.select47.i = select i1 %cmp8.i, i32 1000, i32 1000000
  br label %calculate_freq_for_card.exit

calculate_freq_for_card.exit:                     ; preds = %if.end.i, %if.end.thread.i
  %spec.select.sink.i = phi i32 [ %spec.select42.i, %if.end.thread.i ], [ %spec.select.i, %if.end.i ]
  %.sink.i = phi i32 [ 1000, %if.end.thread.i ], [ %spec.select47.i, %if.end.i ]
  %add16.i = shl i32 %spec.select.sink.i, 1
  %mul17.i = add i32 %add16.i, 2
  %div18.i = udiv i32 %12, %mul17.i
  %div19.i = udiv i32 %div18.i, %.sink.i
  %div20.i = udiv i32 1000000, %div19.i
  %ns_in_one_cycle21.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %ns_in_one_cycle21.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div20.i, ptr %ns_in_one_cycle21.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %spec.select.sink.i, i32 255)
  %base17 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base17, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  %18 = and i32 %17, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base17, align 4
  %add.ptr27 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %18) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #6
  %22 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base17, align 4
  %add.ptr31 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  %25 = and i32 %24, 16777215
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %or36 = or i32 %26, %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or36)
  %28 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base17, align 4
  %add.ptr41 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %27) #6, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %or45 = or i32 %or36, 256
  %30 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %31 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base17, align 4
  %add.ptr47 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %30) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #6
  br label %if.end48

if.end48:                                         ; preds = %calculate_freq_for_card.exit, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_davinci_cpufreq_transition(ptr nocapture noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr i8, ptr %nb, i32 -76
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %clk = getelementptr i8, ptr %nb, i32 -72
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp = icmp eq i32 %val, 1
  br i1 %cmp, label %do.body2, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 27
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mmc_input_clk = getelementptr i8, ptr %nb, i32 -68
  %4 = ptrtoint ptr %mmc_input_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %mmc_input_clk, align 4
  %ios = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  tail call fastcc void @calculate_clk_divider(ptr noundef %1, ptr noundef %ios)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_notifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mmcsd_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !197
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %7 = or i32 %6, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  %clk = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @davinci_mmcsd_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #6
  %base.i = getelementptr inbounds %struct.mmc_davinci_host, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  %7 = and i32 %6, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !80, !81, !83, !85, !87, !89, !90, !91, !92, !94, !96, !97, !98, !100, !102, !103, !104, !105, !107, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !175, !176, !177, !179, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__param_rw_threshold, !1, !"__param_rw_threshold", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 150, i32 1}
!2 = !{ptr @__UNIQUE_ID_rw_thresholdtype285, !1, !"__UNIQUE_ID_rw_thresholdtype285", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rw_threshold286, !4, !"__UNIQUE_ID_rw_threshold286", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 151, i32 1}
!5 = !{ptr @__param_poll_threshold, !6, !"__param_poll_threshold", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 155, i32 1}
!7 = !{ptr @__UNIQUE_ID_poll_thresholdtype287, !6, !"__UNIQUE_ID_poll_thresholdtype287", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_poll_threshold288, !9, !"__UNIQUE_ID_poll_threshold288", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 156, i32 1}
!10 = !{ptr @__param_poll_loopcount, !11, !"__param_poll_loopcount", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 160, i32 1}
!12 = !{ptr @__UNIQUE_ID_poll_loopcounttype289, !11, !"__UNIQUE_ID_poll_loopcounttype289", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_poll_loopcount290, !14, !"__UNIQUE_ID_poll_loopcount290", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 161, i32 1}
!15 = !{ptr @__param_use_dma, !16, !"__param_use_dma", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 165, i32 1}
!17 = !{ptr @__UNIQUE_ID_use_dmatype291, !16, !"__UNIQUE_ID_use_dmatype291", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_use_dma292, !19, !"__UNIQUE_ID_use_dma292", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 166, i32 1}
!20 = !{ptr @__initcall__kmod_davinci_mmc__313_1407_davinci_mmcsd_driver_init6, !21, !"__initcall__kmod_davinci_mmc__313_1407_davinci_mmcsd_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1407, i32 1}
!22 = !{ptr @__exitcall_davinci_mmcsd_driver_exit, !21, !"__exitcall_davinci_mmcsd_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author314, !24, !"__UNIQUE_ID_author314", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1409, i32 1}
!25 = !{ptr @__UNIQUE_ID_file315, !26, !"__UNIQUE_ID_file315", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1410, i32 1}
!27 = !{ptr @__UNIQUE_ID_license316, !26, !"__UNIQUE_ID_license316", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_description317, !29, !"__UNIQUE_ID_description317", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1411, i32 1}
!30 = !{ptr @__UNIQUE_ID_alias318, !31, !"__UNIQUE_ID_alias318", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1412, i32 1}
!32 = !{ptr @__param_str_rw_threshold, !1, !"__param_str_rw_threshold", i1 false, i1 false}
!33 = !{ptr @rw_threshold, !34, !"rw_threshold", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 149, i32 17}
!35 = !{ptr @__param_str_poll_threshold, !6, !"__param_str_poll_threshold", i1 false, i1 false}
!36 = !{ptr @poll_threshold, !37, !"poll_threshold", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 154, i32 17}
!38 = !{ptr @__param_str_poll_loopcount, !11, !"__param_str_poll_loopcount", i1 false, i1 false}
!39 = !{ptr @poll_loopcount, !40, !"poll_loopcount", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 159, i32 17}
!41 = !{ptr @__param_str_use_dma, !16, !"__param_str_use_dma", i1 false, i1 false}
!42 = !{ptr @use_dma, !43, !"use_dma", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 164, i32 17}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1397, i32 11}
!46 = !{ptr @davinci_mmcsd_driver, !47, !"davinci_mmcsd_driver", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1395, i32 31}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1244, i32 11}
!50 = !{ptr @.str.2, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1250, i32 4}
!52 = !{ptr @.str.3, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @davinci_mmcsd_probe._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @davinci_mmcsd_probe._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1295, i32 2}
!60 = !{ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug309, !59, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!61 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1296, i32 2}
!63 = !{ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug310, !62, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!64 = !{ptr @.str.9, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1297, i32 2}
!66 = !{ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug311, !65, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!67 = !{ptr @.str.10, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1298, i32 2}
!69 = !{ptr @davinci_mmcsd_probe.__UNIQUE_ID_ddebug312, !68, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1304, i32 3}
!72 = !{ptr @davinci_mmcsd_probe._entry.11, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @davinci_mmcsd_probe._entry_ptr.13, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1327, i32 2}
!76 = !{ptr @.str.16, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @davinci_mmcsd_probe._entry.14, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @davinci_mmcsd_probe._entry_ptr.17, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1177, i32 34}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1183, i32 34}
!85 = !{ptr @.str.22, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 497, i32 54}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 499, i32 3}
!89 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @davinci_acquire_dma_channels._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @davinci_acquire_dma_channels._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 503, i32 54}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 505, i32 3}
!96 = !{ptr @davinci_acquire_dma_channels._entry.26, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @davinci_acquire_dma_channels._entry_ptr.28, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @mmc_davinci_ops, !99, !"mmc_davinci_ops", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1051, i32 34}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 601, i32 3}
!102 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mmc_davinci_request._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @mmc_davinci_request._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 533, i32 2}
!107 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mmc_davinci_prepare_data.__UNIQUE_ID_ddebug297, !106, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!109 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 536, i32 2}
!113 = !{ptr @mmc_davinci_prepare_data.__UNIQUE_ID_ddebug298, !112, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 424, i32 4}
!116 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug295, !115, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 446, i32 4}
!120 = !{ptr @mmc_davinci_send_dma_request.__UNIQUE_ID_ddebug296, !119, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 274, i32 2}
!123 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @mmc_davinci_start_command.__UNIQUE_ID_ddebug293, !122, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!125 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 315, i32 3}
!132 = !{ptr @mmc_davinci_start_command.__UNIQUE_ID_ddebug294, !131, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 692, i32 2}
!135 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug299, !134, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 710, i32 3}
!139 = !{ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug300, !138, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 716, i32 3}
!142 = !{ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug301, !141, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 727, i32 3}
!145 = !{ptr @mmc_davinci_set_ios.__UNIQUE_ID_ddebug302, !144, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 759, i32 4}
!148 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mmc_davinci_set_ios._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @mmc_davinci_set_ios._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 874, i32 3}
!153 = !{ptr @.str.55, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug304, !152, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 932, i32 4}
!157 = !{ptr @mmc_davinci_irq._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @mmc_davinci_irq._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 942, i32 3}
!161 = !{ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug305, !160, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 966, i32 3}
!164 = !{ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug306, !163, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!165 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 976, i32 4}
!169 = !{ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug307, !168, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 990, i32 3}
!172 = !{ptr @mmc_davinci_irq.__UNIQUE_ID_ddebug308, !171, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 856, i32 3}
!175 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @mmc_davinci_sdio_irq.__UNIQUE_ID_ddebug303, !174, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!177 = !{ptr @davinci_mmc_dt_ids, !178, !"davinci_mmc_dt_ids", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1133, i32 34}
!179 = !{ptr @davinci_mmcsd_pm, !180, !"davinci_mmcsd_pm", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1385, i32 32}
!181 = !{ptr @davinci_mmc_devtype, !182, !"davinci_mmc_devtype", i1 false, i1 false}
!182 = !{!"../drivers/mmc/host/davinci_mmc.c", i32 1121, i32 40}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i8 0, i8 2}
!193 = !{i64 2148990823, i64 2148990828, i64 2148990841, i64 2148990885, i64 2148990919, i64 2148990940}
!194 = !{i64 6788250}
!195 = !{i64 2155065605}
!196 = !{i64 2155065861}
!197 = !{i64 6787832}
!198 = !{i64 2155098799}
!199 = !{i64 2155099201}
!200 = !{i64 2155099613}
!201 = !{i64 2155100019}
!202 = !{i64 2155070664}
!203 = !{i64 2155073277}
!204 = !{i64 2155073937}
!205 = !{i64 2155074594}
!206 = !{i64 2155074811}
!207 = !{i64 2155075471}
!208 = !{i64 2155075859}
!209 = !{i64 6788030}
!210 = !{i64 2155080811}
!211 = !{i64 2155062579}
!212 = !{i64 2155063070}
!213 = !{i64 2155063561}
!214 = !{i64 2155064052}
!215 = !{i64 2155064543}
!216 = !{i64 2155064776}
!217 = !{i64 2155060890}
!218 = !{i64 2155061297}
!219 = !{i64 2155061889}
!220 = !{i64 2155067072}
!221 = !{i64 2155069875}
!222 = !{i64 2155029642}
!223 = !{i64 2155029926}
!224 = !{i64 2155029768}
!225 = !{i64 2155043259}
!226 = !{i64 2155044218}
!227 = !{i64 2155056964}
!228 = !{i64 2155057368}
!229 = !{i64 2155058430}
!230 = !{i64 2155058787}
!231 = !{i64 2155058629}
!232 = !{i64 2155091815}
!233 = !{i64 2155092222}
!234 = !{i64 2155093535}
!235 = !{i64 2155094490}
!236 = !{i64 2155095600}
!237 = !{i64 2155096559}
!238 = !{i64 2155019616}
!239 = !{i64 2155020002}
!240 = !{i64 2155025658}
!241 = !{i64 2155026073}
!242 = !{i64 2155026502}
!243 = !{i64 2155027049}
!244 = !{i64 2155027549}
!245 = !{i64 2155028038}
!246 = !{i64 2155028538}
!247 = !{!"branch_weights", i32 2000, i32 1}
!248 = !{i64 2154789120, i64 2154789612, i64 2154789157, i64 2154789213, i64 2154789247, i64 2154789271, i64 2154789312, i64 2154789333, i64 2154789361, i64 2154789395}
!249 = !{i64 2155008284}
!250 = !{i64 2155009520}
!251 = !{i64 2155009933}
!252 = !{i64 2155010395}
!253 = !{i64 2155010237}
!254 = !{i64 2155010617}
!255 = !{!"auto-init"}
!256 = !{i64 2155000121}
!257 = !{i64 2155000829}
!258 = !{i64 2155032069}
!259 = !{i64 2155032301}
!260 = !{i64 2155032977}
!261 = !{i64 2155033206}
!262 = !{i64 2155034417}
!263 = !{i64 2155034649}
!264 = !{i64 2155035067}
!265 = !{i64 2155116984}
