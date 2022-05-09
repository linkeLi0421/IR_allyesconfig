; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/omap.c_pt.bc'
source_filename = "../drivers/mmc/host/omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.mmc_omap_host = type { i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, %struct.work_struct, i8, %struct.timer_list, %struct.work_struct, ptr, %struct.work_struct, ptr, i32, i32, ptr, i32, i32, i32, i8, %struct.spinlock, [2 x ptr], ptr, %struct.spinlock, %struct.wait_queue_head, i32, %struct.timer_list, %struct.spinlock, i8, ptr, ptr }
%struct.mmc_omap_slot = type { i32, i32, i16, i16, i16, i32, %struct.tasklet_struct, %struct.timer_list, i32, ptr, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.omap_mmc_slot_data = type { i8, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.omap_mmc_platform_data = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i8, i16, [2 x %struct.omap_mmc_slot_data] }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cover_switch\00", [19 x i8] zeroinitializer }, align 32
@__initcall__kmod_omap__281_1511_mmc_omap_driver_init6 = internal global ptr @mmc_omap_driver_init, section ".initcall6.init", align 4
@mmc_omap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmc_omap_probe, ptr @mmc_omap_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @mmc_omap_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmc_omap_driver_exit = internal global ptr @mmc_omap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description282 = internal constant [45 x i8] c"omap.description=OMAP Multimedia Card driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file283 = internal constant [32 x i8] c"omap.file=drivers/mmc/host/omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license284 = internal constant [17 x i8] c"omap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias285 = internal constant [30 x i8] c"omap.alias=platform:mmci-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_author286 = internal constant [26 x i8] c"omap.author=Juha Yrj\C3\B6l\C3\A4\00", section ".modinfo", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmci-omap\00", [22 x i8] zeroinitializer }, align 32
@mmc_omap_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"platform data missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_omap_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mmc/host/omap.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry_ptr = internal global ptr @mmc_omap_probe._entry, section ".printk_index", align 4
@mmc_omap_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no slots\0A\00", [22 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry_ptr.9 = internal global ptr @mmc_omap_probe._entry.7, section ".printk_index", align 4
@mmc_omap_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&host->slot_release_work)\00", [52 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&host->send_stop_work)\00", [55 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&host->cmd_abort_work)\00", [55 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&host->cmd_abort_timer)\00", [39 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&host->clk_lock\00", [16 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&host->clk_timer)\00", [45 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&host->dma_lock\00", [16 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&host->slot_lock\00", [47 x i8] zeroinitializer }, align 32
@mmc_omap_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&host->slot_wq\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ick\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1397, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TX DMA channel request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry_ptr.33 = internal global ptr @mmc_omap_probe._entry.30, section ".printk_index", align 4
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1411, ptr @.str.32, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RX DMA channel request failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mmc_omap_probe._entry_ptr.37 = internal global ptr @mmc_omap_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_omap\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mmc_omap_start_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid response type: %04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc_omap_start_command\00", [41 x i8] zeroinitializer }, align 32
@mmc_omap_start_command._entry_ptr = internal global ptr @mmc_omap_start_command._entry, section ".printk_index", align 4
@mmc_omap_abort_command.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"omap\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc_omap_abort_command\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Aborting stuck command CMD%d\0A\00", [34 x i8] zeroinitializer }, align 32
@mmc_omap_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 730, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Spurious IRQ 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_omap_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmc_omap_irq._entry_ptr = internal global ptr @mmc_omap_irq._entry, section ".printk_index", align 4
@mmc_omap_irq.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.45, ptr @.str.4, ptr @.str.47, i8 0, i8 -68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MMC IRQ %04x (CMD %d): \00", [40 x i8] zeroinitializer }, align 32
@mmc_omap_irq.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.45, ptr @.str.4, ptr @.str.48, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"data timeout (CMD%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@mmc_omap_irq.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.45, ptr @.str.4, ptr @.str.49, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"data CRC error, bytes left %d\0A\00", [33 x i8] zeroinitializer }, align 32
@mmc_omap_irq.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.45, ptr @.str.4, ptr @.str.50, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data CRC error\0A\00", [16 x i8] zeroinitializer }, align 32
@mmc_omap_irq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.4, i32 796, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"command timeout (CMD%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@mmc_omap_irq._entry_ptr.53 = internal global ptr @mmc_omap_irq._entry.51, section ".printk_index", align 4
@mmc_omap_irq._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.45, ptr @.str.4, i32 807, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"command CRC error (CMD%d, arg 0x%08x)\0A\00", [57 x i8] zeroinitializer }, align 32
@mmc_omap_irq._entry_ptr.56 = internal global ptr @mmc_omap_irq._entry.54, section ".printk_index", align 4
@mmc_omap_irq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.45, ptr @.str.4, i32 813, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"command CRC error without cmd?\0A\00", [32 x i8] zeroinitializer }, align 32
@mmc_omap_irq._entry_ptr.59 = internal global ptr @mmc_omap_irq._entry.57, section ".printk_index", align 4
@mmc_omap_irq.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.45, ptr @.str.4, ptr @.str.60, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ignoring card status error (CMD%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@mmc_omap_report_irq.mmc_omap_status_bits = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EOC\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CB\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BRS\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EOFB\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DTO\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DCRC\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTO\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CCRC\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRW\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AF\00", [29 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"AE\00", [29 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OCRB\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CIRQ\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CERR\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MMC IRQ 0x%x:\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@mmc_omap_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @mmc_omap_request, ptr null, ptr @mmc_omap_set_ios, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mmc_omap_new_slot.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&slot->cover_timer)\00", [43 x i8] zeroinitializer }, align 32
@dev_attr_slot_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_omap_show_slot_name, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cover_switch = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mmc_omap_show_cover_switch, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slot_name\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"closed\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 64, i64 96]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 869, i32 50 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"mmc_omap_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1501, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1505, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"mmc_omap_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1494, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1331, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1335, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1353, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1354, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1356, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1357, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1359, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1360, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1362, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1363, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1364, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1374, i32 35 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1379, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1388, i32 46 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1397, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1400, i32 46 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1411, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1427, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 360, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 600, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 729, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 751, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 767, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 778, i32 5 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 783, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 794, i32 6 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 805, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 812, i32 5 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 817, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"mmc_omap_status_bits\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 698, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 22 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 29 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 37 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 44 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 699, i32 52 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 18 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 24 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 30 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 38 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 700, i32 46 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 705, i32 22 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 709, i32 24 }
@___asan_gen_.322 = private unnamed_addr constant [13 x i8] c"mmc_omap_ops\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1221, i32 34 }
@___asan_gen_.325 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1271, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [19 x i8] c"dev_attr_slot_name\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [22 x i8] c"dev_attr_cover_switch\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 317, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 329, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 326, i32 22 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 313, i32 61 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [27 x i8] c"../drivers/mmc/host/omap.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 314, i32 10 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_alias285, ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file283, ptr @__UNIQUE_ID_license284, ptr @__exitcall_mmc_omap_driver_exit, ptr @__initcall__kmod_omap__281_1511_mmc_omap_driver_init6, ptr @mmc_omap_driver_exit, ptr @mmc_omap_irq._entry, ptr @mmc_omap_irq._entry.51, ptr @mmc_omap_irq._entry.54, ptr @mmc_omap_irq._entry.57, ptr @mmc_omap_irq._entry_ptr, ptr @mmc_omap_irq._entry_ptr.53, ptr @mmc_omap_irq._entry_ptr.56, ptr @mmc_omap_irq._entry_ptr.59, ptr @mmc_omap_probe._entry, ptr @mmc_omap_probe._entry.30, ptr @mmc_omap_probe._entry.35, ptr @mmc_omap_probe._entry.7, ptr @mmc_omap_probe._entry_ptr, ptr @mmc_omap_probe._entry_ptr.33, ptr @mmc_omap_probe._entry_ptr.37, ptr @mmc_omap_probe._entry_ptr.9, ptr @mmc_omap_start_command._entry, ptr @mmc_omap_start_command._entry_ptr, ptr @.str, ptr @mmc_omap_driver, ptr @.str.1, ptr @mmc_omap_match, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mmc_omap_probe.__key, ptr @.str.10, ptr @mmc_omap_probe.__key.11, ptr @.str.12, ptr @mmc_omap_probe.__key.13, ptr @.str.14, ptr @mmc_omap_probe.__key.15, ptr @.str.16, ptr @mmc_omap_probe.__key.17, ptr @.str.18, ptr @mmc_omap_probe.__key.19, ptr @.str.20, ptr @mmc_omap_probe.__key.21, ptr @.str.22, ptr @mmc_omap_probe.__key.23, ptr @.str.24, ptr @mmc_omap_probe.__key.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @mmc_omap_report_irq.mmc_omap_status_bits, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @mmc_omap_ops, ptr @mmc_omap_new_slot.__key, ptr @.str.78, ptr @dev_attr_slot_name, ptr @dev_attr_cover_switch, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_start_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_irq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_irq._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_irq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_report_irq.mmc_omap_status_bits to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_omap_new_slot.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_slot_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cover_switch to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_mmc_notify_cover_event(ptr nocapture noundef readonly %dev, i32 noundef %num, i32 noundef %is_closed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.mmc_omap_host, ptr %1, i32 0, i32 33, i32 %num
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %nr_slots = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 37
  %4 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %num)
  %cmp.not = icmp sgt i32 %5, %num
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !182

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 860, 0\0A.popsection", ""() #8, !srcloc !183
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  %tobool12.not = icmp eq ptr %3, null
  %or.cond = select i1 %cmp9, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %do.end7.cleanup_crit_edge, label %if.end14

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %do.end7
  %pdata.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata.i, align 4
  %get_cover_state.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %get_cover_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_cover_state.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end14.mmc_omap_cover_is_open.exit_crit_edge, label %if.then.i

if.end14.mmc_omap_cover_is_open.exit_crit_edge:   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_cover_is_open.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %mmc.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %call.i = tail call i32 %9(ptr noundef %13, i32 noundef %15) #8
  br label %mmc_omap_cover_is_open.exit

mmc_omap_cover_is_open.exit:                      ; preds = %if.then.i, %if.end14.mmc_omap_cover_is_open.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %if.end14.mmc_omap_cover_is_open.exit_crit_edge ]
  %cover_open16 = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %cover_open16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cover_open16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %17)
  %cmp17.not = icmp eq i32 %retval.0.i, %17
  br i1 %cmp17.not, label %mmc_omap_cover_is_open.exit.if.end20_crit_edge, label %if.then18

mmc_omap_cover_is_open.exit.if.end20_crit_edge:   ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %cover_open16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i, ptr %cover_open16, align 4
  %mmc = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmc, align 4
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 1
  tail call void @sysfs_notify(ptr noundef %class_dev, ptr noundef null, ptr noundef nonnull @.str) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %mmc_omap_cover_is_open.exit.if.end20_crit_edge
  %state.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 6, i32 1
  %call.i34 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.then.i36, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i36:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %cover_tasklet = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 6
  tail call void @__tasklet_hi_schedule(ptr noundef %cover_tasklet) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i36, %if.end20.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_omap_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmc_omap_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmc_omap_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_omap_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup210

if.end:                                           ; preds = %entry
  %nr_slots = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %cmp2 = icmp ult i8 %bf.load, 64
  br i1 %cmp2, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup210

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 552, i32 noundef 3520) #8
  %cmp10 = icmp eq ptr %call.i, null
  br i1 %cmp10, label %if.end8.cleanup210_crit_edge, label %if.end12

if.end8.cleanup210_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup210_crit_edge, label %if.end16

if.end12.cleanup210_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call19 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call17) #8
  %virt_base = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %virt_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call19, ptr %virt_base, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %do.body26

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call19 to i32
  br label %cleanup210

do.body26:                                        ; preds = %if.end16
  %slot_release_work = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 21
  tail call void @__init_work(ptr noundef %slot_release_work, i32 noundef 0) #8
  %5 = ptrtoint ptr %slot_release_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %slot_release_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 21, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @mmc_omap_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry30 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %entry30 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry30, ptr %entry30, align 4
  %prev.i = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 21, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry30, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 21, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mmc_omap_slot_release_work, ptr %func, align 4
  %send_stop_work = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 23
  tail call void @__init_work(ptr noundef %send_stop_work, i32 noundef 0) #8
  %9 = ptrtoint ptr %send_stop_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %send_stop_work, align 4
  %lockdep_map40 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 23, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map40, ptr noundef nonnull @.str.12, ptr noundef nonnull @mmc_omap_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry42 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 23, i32 1
  %10 = ptrtoint ptr %entry42 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry42, ptr %entry42, align 4
  %prev.i329 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 23, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i329 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry42, ptr %prev.i329, align 4
  %func44 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 23, i32 2
  %12 = ptrtoint ptr %func44 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mmc_omap_send_stop_work, ptr %func44, align 4
  %cmd_abort_work = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 18
  tail call void @__init_work(ptr noundef %cmd_abort_work, i32 noundef 0) #8
  %13 = ptrtoint ptr %cmd_abort_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %cmd_abort_work, align 4
  %lockdep_map53 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map53, ptr noundef nonnull @.str.14, ptr noundef nonnull @mmc_omap_probe.__key.13, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry55 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i330 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 18, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i330 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry55, ptr %prev.i330, align 4
  %func57 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 18, i32 2
  %16 = ptrtoint ptr %func57 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mmc_omap_abort_command, ptr %func57, align 4
  %cmd_abort_timer = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %cmd_abort_timer, ptr noundef nonnull @mmc_omap_cmd_timer, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @mmc_omap_probe.__key.15) #8
  %clk_lock = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 39
  tail call void @__raw_spin_lock_init(ptr noundef %clk_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @mmc_omap_probe.__key.17, i16 noundef signext 3) #8
  %clk_timer = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 38
  tail call void @init_timer_key(ptr noundef %clk_timer, ptr noundef nonnull @mmc_omap_clk_timer, i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef nonnull @mmc_omap_probe.__key.19) #8
  %dma_lock = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 32
  tail call void @__raw_spin_lock_init(ptr noundef %dma_lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @mmc_omap_probe.__key.21, i16 noundef signext 3) #8
  %slot_lock = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %slot_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @mmc_omap_probe.__key.23, i16 noundef signext 3) #8
  %slot_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 36
  tail call void @__init_waitqueue_head(ptr noundef %slot_wq, ptr noundef nonnull @.str.26, ptr noundef nonnull @mmc_omap_probe.__key.25) #8
  %pdata81 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 42
  %17 = ptrtoint ptr %pdata81 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %pdata81, align 4
  %features = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %1, i32 0, i32 10, i32 0, i32 4
  %18 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %features, align 4
  %features83 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 30
  %20 = ptrtoint ptr %features83 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %features83, align 4
  %dev85 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %dev85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %dev85, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %conv = trunc i32 %24 to i8
  %id86 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %id86 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %id86, align 4
  %irq87 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 15
  %26 = ptrtoint ptr %irq87 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call13, ptr %irq87, align 4
  %27 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call17, align 4
  %phys_base = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 14
  %29 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %phys_base, align 4
  %call89 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  %iclk = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 7
  %30 = ptrtoint ptr %iclk to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call89, ptr %iclk, align 4
  %cmp.i331 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i331, label %if.then92, label %if.end95

if.then92:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %call89 to i32
  br label %cleanup210

if.end95:                                         ; preds = %do.body26
  %call97 = tail call i32 @clk_enable(ptr noundef %call89) #8
  %call99 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.28) #8
  %fclk = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call99, ptr %fclk, align 4
  %cmp.i332 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i332, label %if.then102, label %if.end105

if.then102:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call99 to i32
  br label %err_free_iclk

if.end105:                                        ; preds = %if.end95
  %dma_tx_burst = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 12
  %34 = ptrtoint ptr %dma_tx_burst to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %dma_tx_burst, align 4
  %dma_rx_burst = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 10
  %35 = ptrtoint ptr %dma_rx_burst to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %dma_rx_burst, align 4
  %call107 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.29) #8
  %dma_tx = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call107, ptr %dma_tx, align 4
  %cmp.i333 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i333, label %if.then110, label %if.end105.if.end123_crit_edge

if.end105.if.end123_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then110:                                       ; preds = %if.end105
  %cmp113 = icmp eq ptr %call107, inttoptr (i32 -517 to ptr)
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fclk, align 4
  tail call void @clk_put(ptr noundef %38) #8
  br label %err_free_iclk

if.end117:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %dma_tx, align 4
  %40 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.31) #11
  br label %if.end123

if.end123:                                        ; preds = %if.end117, %if.end105.if.end123_crit_edge
  %call125 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.34) #8
  %dma_rx = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call125, ptr %dma_rx, align 4
  %cmp.i334 = icmp ugt ptr %call125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i334, label %if.then128, label %if.end123.if.end145_crit_edge

if.end123.if.end145_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then128:                                       ; preds = %if.end123
  %cmp131 = icmp eq ptr %call125, inttoptr (i32 -517 to ptr)
  br i1 %cmp131, label %if.then133, label %if.end139

if.then133:                                       ; preds = %if.then128
  %43 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_tx, align 4
  %tobool.not = icmp eq ptr %44, null
  br i1 %tobool.not, label %if.then133.if.end137_crit_edge, label %if.then135

if.then133.if.end137_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.then135:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %44) #8
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.then133.if.end137_crit_edge
  %45 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fclk, align 4
  tail call void @clk_put(ptr noundef %46) #8
  br label %err_free_iclk

if.end139:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %dma_rx, align 4
  %48 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %49, ptr noundef nonnull @.str.36) #11
  br label %if.end145

if.end145:                                        ; preds = %if.end139, %if.end123.if.end145_crit_edge
  %50 = ptrtoint ptr %irq87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq87, align 4
  %call.i335 = tail call i32 @request_threaded_irq(i32 noundef %51, ptr noundef nonnull @mmc_omap_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool148.not = icmp eq i32 %call.i335, 0
  br i1 %tobool148.not, label %if.end150, label %if.end145.err_free_dma_crit_edge

if.end145.err_free_dma_crit_edge:                 ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma

if.end150:                                        ; preds = %if.end145
  %init = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init, align 4
  %cmp151.not = icmp eq ptr %53, null
  br i1 %cmp151.not, label %if.end150.if.end161_crit_edge, label %if.then153

if.end150.if.end161_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then153:                                       ; preds = %if.end150
  %call156 = tail call i32 %53(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then153.err_free_irq_crit_edge, label %if.then153.if.end161_crit_edge

if.then153.if.end161_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then153.err_free_irq_crit_edge:                ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end161:                                        ; preds = %if.then153.if.end161_crit_edge, %if.end150.if.end161_crit_edge
  %54 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load163 = load i8, ptr %nr_slots, align 4
  %bf.lshr164 = lshr i8 %bf.load163, 6
  %bf.cast165 = zext i8 %bf.lshr164 to i32
  %nr_slots166 = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 37
  %55 = ptrtoint ptr %nr_slots166 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %bf.cast165, ptr %nr_slots166, align 4
  %56 = ptrtoint ptr %features83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %features83, align 4
  %and = and i32 %57, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool168.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool168.not, i32 2, i32 1
  %reg_shift = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 17
  %58 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond, ptr %reg_shift, align 4
  %call169 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 0) #8
  %mmc_omap_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %call.i, i32 0, i32 41
  %59 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call169, ptr %mmc_omap_wq, align 4
  %tobool171.not = icmp eq ptr %call169, null
  br i1 %tobool171.not, label %if.end161.err_plat_cleanup_crit_edge, label %for.cond.preheader

if.end161.err_plat_cleanup_crit_edge:             ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_plat_cleanup

for.cond.preheader:                               ; preds = %if.end161
  %60 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load175349 = load i8, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load175349)
  %cmp178352.not = icmp ult i8 %bf.load175349, 64
  br i1 %cmp178352.not, label %for.cond.preheader.cleanup210_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup210_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0353 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %61 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev85, align 4
  %call.i336 = tail call ptr @mmc_alloc_host(i32 noundef 112, ptr noundef %62) #8
  %cmp.i337 = icmp eq ptr %call.i336, null
  br i1 %cmp.i337, label %for.body.mmc_omap_new_slot.exit_crit_edge, label %if.end.i

for.body.mmc_omap_new_slot.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_new_slot.exit

if.end.i:                                         ; preds = %for.body
  %private.i.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 70
  %host2.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %63 = ptrtoint ptr %host2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %host2.i, align 4
  %mmc3.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %64 = ptrtoint ptr %mmc3.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i336, ptr %mmc3.i, align 4
  %65 = ptrtoint ptr %private.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %i.0353, ptr %private.i.i, align 4
  %power_mode.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 3, ptr %power_mode.i, align 4
  %67 = ptrtoint ptr %pdata81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdata81, align 4
  %arrayidx.i = getelementptr %struct.omap_mmc_platform_data, ptr %68, i32 0, i32 10, i32 %i.0353
  %pdata5.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %69 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx.i, ptr %pdata5.i, align 4
  %arrayidx7.i = getelementptr %struct.mmc_omap_host, ptr %call.i, i32 0, i32 33, i32 %i.0353
  %70 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %private.i.i, ptr %arrayidx7.i, align 4
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 16
  %71 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %caps.i, align 32
  %72 = load ptr, ptr %pdata81, align 4
  %arrayidx10.i = getelementptr %struct.omap_mmc_platform_data, ptr %72, i32 0, i32 10, i32 %i.0353
  %73 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %cmp11.i = icmp ugt i8 %74, 3
  %spec.store.select.i = zext i1 %cmp11.i to i32
  %75 = ptrtoint ptr %caps.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %spec.store.select.i, ptr %caps.i, align 32
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 3
  %76 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mmc_omap_ops, ptr %ops.i, align 4
  %f_min.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 5
  %77 = ptrtoint ptr %f_min.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 400000, ptr %f_min.i, align 4
  %78 = ptrtoint ptr %features83 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %features83, align 4
  %and.i = and i32 %79, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 48000000, i32 24000000
  %80 = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 6
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %spec.select.i, ptr %80, align 8
  %82 = ptrtoint ptr %pdata81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata81, align 4
  %max_freq.i = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool20.not.i = icmp eq i32 %85, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end28.i_crit_edge, label %if.then21.i

if.end.i.if.end28.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = tail call i32 @llvm.umin.i32(i32 %85, i32 %spec.select.i) #8
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %80, align 8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i, %if.end.i.if.end28.i_crit_edge
  %88 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdata5.i, align 4
  %ocr_mask.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %89, i32 0, i32 16
  %90 = ptrtoint ptr %ocr_mask.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ocr_mask.i, align 4
  %ocr_avail.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 8
  %92 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %ocr_avail.i, align 64
  %max_segs.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 21
  %93 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 32, ptr %max_segs.i, align 4
  %max_blk_size.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 24
  %94 = ptrtoint ptr %max_blk_size.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2048, ptr %max_blk_size.i, align 4
  %max_blk_count.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 25
  %95 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2048, ptr %max_blk_count.i, align 128
  %max_req_size.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 23
  %96 = ptrtoint ptr %max_req_size.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4194304, ptr %max_req_size.i, align 8
  %max_seg_size.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 20
  %97 = ptrtoint ptr %max_seg_size.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4194304, ptr %max_seg_size.i, align 16
  %get_cover_state.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %89, i32 0, i32 14
  %98 = ptrtoint ptr %get_cover_state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %get_cover_state.i, align 4
  %cmp34.not.i = icmp eq ptr %99, null
  br i1 %cmp34.not.i, label %if.end28.i.if.end37.i_crit_edge, label %do.body.i

if.end28.i.if.end37.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37.i

do.body.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %cover_timer.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 7, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %cover_timer.i, ptr noundef nonnull @mmc_omap_cover_timer, i32 noundef 0, ptr noundef nonnull @.str.78, ptr noundef nonnull @mmc_omap_new_slot.__key) #8
  %cover_tasklet.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %cover_tasklet.i, ptr noundef nonnull @mmc_omap_cover_handler) #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body.i, %if.end28.i.if.end37.i_crit_edge
  %call38.i = tail call i32 @mmc_add_host(ptr noundef nonnull %call.i336) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end37.i.err_remove_host.i_crit_edge, label %if.end42.i

if.end37.i.err_remove_host.i_crit_edge:           ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove_host.i

if.end42.i:                                       ; preds = %if.end37.i
  %100 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %pdata5.i, align 4
  %name.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %101, i32 0, i32 15
  %102 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name.i, align 4
  %cmp44.not.i = icmp eq ptr %103, null
  br i1 %cmp44.not.i, label %if.end42.i.if.end52.i_crit_edge, label %if.then46.i

if.end42.i.if.end52.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.then46.i:                                      ; preds = %if.end42.i
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 1
  %call47.i = tail call i32 @device_create_file(ptr noundef %class_dev.i, ptr noundef nonnull @dev_attr_slot_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp slt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.then46.i.err_remove_host.i_crit_edge, label %if.then46.i.if.end52.i_crit_edge

if.then46.i.if.end52.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52.i

if.then46.i.err_remove_host.i_crit_edge:          ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove_host.i

if.end52.i:                                       ; preds = %if.then46.i.if.end52.i_crit_edge, %if.end42.i.if.end52.i_crit_edge
  %104 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pdata5.i, align 4
  %get_cover_state54.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %105, i32 0, i32 14
  %106 = ptrtoint ptr %get_cover_state54.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %get_cover_state54.i, align 4
  %cmp55.not.i = icmp eq ptr %107, null
  br i1 %cmp55.not.i, label %if.end52.i.for.inc_crit_edge, label %if.then57.i

if.end52.i.for.inc_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then57.i:                                      ; preds = %if.end52.i
  %class_dev58.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 0, i32 1
  %call59.i = tail call i32 @device_create_file(ptr noundef %class_dev58.i, ptr noundef nonnull @dev_attr_cover_switch) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %err_remove_slot_name.i, label %if.end63.i

if.end63.i:                                       ; preds = %if.then57.i
  %state.i.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end63.i.for.inc_crit_edge

if.end63.i.for.inc_crit_edge:                     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %cover_tasklet64.i = getelementptr inbounds %struct.mmc_host, ptr %call.i336, i32 1, i32 1, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %cover_tasklet64.i) #8
  br label %for.inc

err_remove_slot_name.i:                           ; preds = %if.then57.i
  %108 = ptrtoint ptr %pdata5.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdata5.i, align 4
  %name67.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %109, i32 0, i32 15
  %110 = ptrtoint ptr %name67.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %name67.i, align 4
  %cmp68.not.i = icmp eq ptr %111, null
  br i1 %cmp68.not.i, label %err_remove_slot_name.i.err_remove_host.i_crit_edge, label %if.then70.i

err_remove_slot_name.i.err_remove_host.i_crit_edge: ; preds = %err_remove_slot_name.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_remove_host.i

if.then70.i:                                      ; preds = %err_remove_slot_name.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_remove_file(ptr noundef %class_dev58.i, ptr noundef nonnull @dev_attr_slot_name) #8
  br label %err_remove_host.i

err_remove_host.i:                                ; preds = %if.then70.i, %err_remove_slot_name.i.err_remove_host.i_crit_edge, %if.then46.i.err_remove_host.i_crit_edge, %if.end37.i.err_remove_host.i_crit_edge
  %r.0.i = phi i32 [ %call59.i, %if.then70.i ], [ %call59.i, %err_remove_slot_name.i.err_remove_host.i_crit_edge ], [ %call47.i, %if.then46.i.err_remove_host.i_crit_edge ], [ %call38.i, %if.end37.i.err_remove_host.i_crit_edge ]
  tail call void @mmc_remove_host(ptr noundef nonnull %call.i336) #8
  tail call void @mmc_free_host(ptr noundef nonnull %call.i336) #8
  br label %mmc_omap_new_slot.exit

mmc_omap_new_slot.exit:                           ; preds = %err_remove_host.i, %for.body.mmc_omap_new_slot.exit_crit_edge
  %retval.0.i = phi i32 [ %r.0.i, %err_remove_host.i ], [ -12, %for.body.mmc_omap_new_slot.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0353)
  %cmp184356.not = icmp eq i32 %i.0353, 0
  br i1 %cmp184356.not, label %mmc_omap_new_slot.exit.err_destroy_wq_crit_edge, label %while.body

mmc_omap_new_slot.exit.err_destroy_wq_crit_edge:  ; preds = %mmc_omap_new_slot.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_wq

while.body:                                       ; preds = %mmc_omap_new_slot.exit
  %dec357 = add nsw i32 %i.0353, -1
  %arrayidx187 = getelementptr %struct.mmc_omap_host, ptr %call.i, i32 0, i32 33, i32 %dec357
  %112 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx187, align 4
  tail call fastcc void @mmc_omap_remove_slot(ptr noundef %113)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0353)
  %cmp184 = icmp ugt i32 %i.0353, 1
  br i1 %cmp184, label %while.body.1, label %while.body.err_destroy_wq_crit_edge

while.body.err_destroy_wq_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_destroy_wq

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %dec357.1 = add nsw i32 %i.0353, -2
  %arrayidx187.1 = getelementptr %struct.mmc_omap_host, ptr %call.i, i32 0, i32 33, i32 %dec357.1
  %114 = ptrtoint ptr %arrayidx187.1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx187.1, align 4
  tail call fastcc void @mmc_omap_remove_slot(ptr noundef %115)
  br label %err_destroy_wq

for.inc:                                          ; preds = %if.then.i.i, %if.end63.i.for.inc_crit_edge, %if.end52.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0353, 1
  %116 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load175 = load i8, ptr %nr_slots, align 4
  %bf.lshr176 = lshr i8 %bf.load175, 6
  %bf.cast177 = zext i8 %bf.lshr176 to i32
  %cmp178 = icmp ult i32 %inc, %bf.cast177
  br i1 %cmp178, label %for.inc.for.body_crit_edge, label %for.inc.cleanup210_crit_edge

for.inc.cleanup210_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup210

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

err_destroy_wq:                                   ; preds = %while.body.1, %while.body.err_destroy_wq_crit_edge, %mmc_omap_new_slot.exit.err_destroy_wq_crit_edge
  %117 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mmc_omap_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %118) #8
  br label %err_plat_cleanup

err_plat_cleanup:                                 ; preds = %err_destroy_wq, %if.end161.err_plat_cleanup_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %err_destroy_wq ], [ -12, %if.end161.err_plat_cleanup_crit_edge ]
  %cleanup = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %1, i32 0, i32 5
  %119 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cleanup, align 4
  %tobool190.not = icmp eq ptr %120, null
  br i1 %tobool190.not, label %err_plat_cleanup.err_free_irq_crit_edge, label %if.then191

err_plat_cleanup.err_free_irq_crit_edge:          ; preds = %err_plat_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.then191:                                       ; preds = %err_plat_cleanup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %120(ptr noundef %dev) #8
  br label %err_free_irq

err_free_irq:                                     ; preds = %if.then191, %err_plat_cleanup.err_free_irq_crit_edge, %if.then153.err_free_irq_crit_edge
  %ret.1 = phi i32 [ %call156, %if.then153.err_free_irq_crit_edge ], [ %ret.0, %if.then191 ], [ %ret.0, %err_plat_cleanup.err_free_irq_crit_edge ]
  %121 = ptrtoint ptr %irq87 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq87, align 4
  %call196 = tail call ptr @free_irq(i32 noundef %122, ptr noundef nonnull %call.i) #8
  br label %err_free_dma

err_free_dma:                                     ; preds = %err_free_irq, %if.end145.err_free_dma_crit_edge
  %ret.2 = phi i32 [ %call.i335, %if.end145.err_free_dma_crit_edge ], [ %ret.1, %err_free_irq ]
  %123 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dma_tx, align 4
  %tobool198.not = icmp eq ptr %124, null
  br i1 %tobool198.not, label %err_free_dma.if.end201_crit_edge, label %if.then199

err_free_dma.if.end201_crit_edge:                 ; preds = %err_free_dma
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

if.then199:                                       ; preds = %err_free_dma
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %124) #8
  br label %if.end201

if.end201:                                        ; preds = %if.then199, %err_free_dma.if.end201_crit_edge
  %125 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_rx, align 4
  %tobool203.not = icmp eq ptr %126, null
  br i1 %tobool203.not, label %if.end201.if.end206_crit_edge, label %if.then204

if.end201.if.end206_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206

if.then204:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %126) #8
  br label %if.end206

if.end206:                                        ; preds = %if.then204, %if.end201.if.end206_crit_edge
  %127 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fclk, align 4
  tail call void @clk_put(ptr noundef %128) #8
  br label %err_free_iclk

err_free_iclk:                                    ; preds = %if.end206, %if.end137, %if.then115, %if.then102
  %ret.3 = phi i32 [ %33, %if.then102 ], [ -517, %if.then115 ], [ -517, %if.end137 ], [ %ret.2, %if.end206 ]
  %129 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %130) #8
  %131 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %iclk, align 4
  tail call void @clk_put(ptr noundef %132) #8
  br label %cleanup210

cleanup210:                                       ; preds = %err_free_iclk, %for.inc.cleanup210_crit_edge, %for.cond.preheader.cleanup210_crit_edge, %if.then92, %if.then22, %if.end12.cleanup210_crit_edge, %if.end8.cleanup210_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -517, %do.end6 ], [ %4, %if.then22 ], [ %31, %if.then92 ], [ %ret.3, %err_free_iclk ], [ -12, %if.end8.cleanup210_crit_edge ], [ -6, %if.end12.cleanup210_crit_edge ], [ 0, %for.cond.preheader.cleanup210_crit_edge ], [ 0, %for.inc.cleanup210_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_omap_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.body2, label %for.cond.preheader, !prof !184

for.cond.preheader:                               ; preds = %entry
  %nr_slots = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp846 = icmp sgt i32 %3, 0
  br i1 %cmp846, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1469, 0\0A.popsection", ""() #8, !srcloc !185
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmc_omap_host, ptr %1, i32 0, i32 33, i32 %i.047
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @mmc_omap_remove_slot(ptr noundef %5)
  %inc = add nuw nsw i32 %i.047, 1
  %6 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_slots, align 4
  %cmp8 = icmp slt i32 %inc, %7
  br i1 %cmp8, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pdata = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 42
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %cleanup = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cleanup, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %for.end.if.end13_crit_edge, label %if.then10

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void %11(ptr noundef %dev) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.end.if.end13_crit_edge
  %clk_lock.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 39
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %clk_lock.i) #8
  %fclk_enabled.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 40
  %12 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %fclk_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp5.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp5.not.i, label %if.end13.mmc_omap_fclk_enable.exit_crit_edge, label %if.then.i

if.end13.mmc_omap_fclk_enable.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_enable.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i, 127
  %13 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %bf.clear.i, ptr %fclk_enabled.i, align 4
  %fclk11.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %fclk11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fclk11.i, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  br label %mmc_omap_fclk_enable.exit

mmc_omap_fclk_enable.exit:                        ; preds = %if.then.i, %if.end13.mmc_omap_fclk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %clk_lock.i, i32 noundef %call2.i) #8
  %irq = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 15
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call14 = tail call ptr @free_irq(i32 noundef %17, ptr noundef nonnull %1) #8
  %fclk = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fclk, align 4
  tail call void @clk_put(ptr noundef %19) #8
  %iclk = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iclk, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  %22 = ptrtoint ptr %iclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iclk, align 4
  tail call void @clk_put(ptr noundef %23) #8
  %dma_tx = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_tx, align 4
  %tobool16.not = icmp eq ptr %25, null
  br i1 %tobool16.not, label %mmc_omap_fclk_enable.exit.if.end19_crit_edge, label %if.then17

mmc_omap_fclk_enable.exit.if.end19_crit_edge:     ; preds = %mmc_omap_fclk_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %mmc_omap_fclk_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %25) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %mmc_omap_fclk_enable.exit.if.end19_crit_edge
  %dma_rx = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_rx, align 4
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %27) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %mmc_omap_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 41
  %28 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc_omap_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %29) #8
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_slot_release_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %next_slot1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %next_slot1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_slot1, align 4
  store ptr null, ptr %next_slot1, align 4
  tail call fastcc void @mmc_omap_select_slot(ptr noundef %1, i32 noundef 1)
  %mrq = getelementptr inbounds %struct.mmc_omap_slot, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  store ptr null, ptr %mrq, align 4
  tail call fastcc void @mmc_omap_start_request(ptr noundef %add.ptr, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_send_stop_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stop_data = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %stop_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stop_data, align 4
  %current_slot = getelementptr i8, ptr %work, i32 128
  %2 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_slot, align 4
  %fclk_freq = getelementptr inbounds %struct.mmc_omap_slot, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %fclk_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fclk_freq, align 4
  %sub = add i32 %5, 999999999
  %div = udiv i32 %sub, %5
  %mul = shl i32 %div, 3
  %sub.i = add i32 %mul, 999
  %div.i = udiv i32 %sub.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %6(i32 noundef %div.i) #8
  %add.ptr = getelementptr i8, ptr %work, i32 -216
  %stop = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop, align 4
  tail call fastcc void @mmc_omap_start_command(ptr noundef %add.ptr, ptr noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_abort_command(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -72
  %cmd = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !184

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #8, !srcloc !186
  unreachable

do.body10:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_omap_abort_command.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_omap_abort_command, %if.then19)) #8
          to label %do.end23 [label %if.then19], !srcloc !187

if.then19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %mmc = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_omap_abort_command.__UNIQUE_ID_ddebug273, ptr noundef %5, ptr noundef nonnull @.str.43, i32 noundef %9) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body10
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then25, label %do.end23.if.end28_crit_edge

do.end23.if.end28_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25:                                        ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -110, ptr %error, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %do.end23.if.end28_crit_edge
  %data = getelementptr i8, ptr %work, i32 -60
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %cmp29 = icmp eq ptr %16, null
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd, align 4
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cmd, align 4
  %current_slot.i = getelementptr i8, ptr %work, i32 272
  %20 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_slot.i, align 4
  %fclk_freq.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %fclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fclk_freq.i, align 4
  %sub.i = add i32 %23, 119999999
  %div.i = udiv i32 %sub.i, %23
  %virt_base.i = getelementptr i8, ptr %work, i32 -20
  %reg_shift.i = getelementptr i8, ptr %work, i32 -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120000000, i32 %23)
  %cmp74.not.i = icmp ugt i32 %23, -120000000
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div.i, i32 1) #8
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %if.then30
  %stat.07.i = phi i16 [ 0, %if.then30 ], [ %stat.1.lcssa.i, %while.end.i.while.body.i_crit_edge ]
  %restarts.06.i = phi i32 [ 0, %if.then30 ], [ %inc13.i, %while.end.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt_base.i, align 4
  %26 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 4, %27
  %add.ptr.i = getelementptr i8, ptr %25, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -1) #8, !srcloc !188
  %28 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 12416) #8, !srcloc !188
  br i1 %cmp74.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body8.i_crit_edge

while.body.i.while.body8.i_crit_edge:             ; preds = %while.body.i
  br label %while.body8.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body8.i:                                    ; preds = %if.end.i.while.body8.i_crit_edge, %while.body.i.while.body8.i_crit_edge
  %passes.05.i = phi i32 [ %inc.i, %if.end.i.while.body8.i_crit_edge ], [ 0, %while.body.i.while.body8.i_crit_edge ]
  %30 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt_base.i, align 4
  %32 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_shift.i, align 4
  %shl11.i = shl i32 4, %33
  %add.ptr12.i = getelementptr i8, ptr %31, i32 %shl11.i
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #8, !srcloc !189
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body8.i.mmc_omap_send_abort.exit_crit_edge

while.body8.i.mmc_omap_send_abort.exit_crit_edge: ; preds = %while.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_send_abort.exit

if.end.i:                                         ; preds = %while.body8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #8
  %inc.i = add nuw i32 %passes.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body8.i_crit_edge

if.end.i.while.body8.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %stat.1.lcssa.i = phi i16 [ %stat.07.i, %while.body.i.while.end.i_crit_edge ], [ %34, %if.end.i.while.end.i_crit_edge ]
  %inc13.i = add nuw nsw i32 %restarts.06.i, 1
  %exitcond10.not.i = icmp eq i32 %inc13.i, 10000
  br i1 %exitcond10.not.i, label %while.end.i.mmc_omap_send_abort.exit_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i.mmc_omap_send_abort.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_send_abort.exit

mmc_omap_send_abort.exit:                         ; preds = %while.end.i.mmc_omap_send_abort.exit_crit_edge, %while.body8.i.mmc_omap_send_abort.exit_crit_edge
  %stat.2.i = phi i16 [ %34, %while.body8.i.mmc_omap_send_abort.exit_crit_edge ], [ %stat.1.lcssa.i, %while.end.i.mmc_omap_send_abort.exit_crit_edge ]
  %37 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt_base.i, align 4
  %39 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_shift.i, align 4
  %shl17.i = shl i32 4, %40
  %add.ptr18.i = getelementptr i8, ptr %38, i32 %shl17.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18.i, i16 %stat.2.i) #8, !srcloc !188
  %mrq = getelementptr i8, ptr %work, i32 -68
  %41 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %mrq, align 4
  %mmc35 = getelementptr i8, ptr %work, i32 -56
  %42 = ptrtoint ptr %mmc35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmc35, align 4
  %44 = ptrtoint ptr %current_slot.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %current_slot.i, align 4
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %45, i32 noundef 1)
  %mrq36 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 8
  %46 = ptrtoint ptr %mrq36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mrq36, align 4
  tail call void @mmc_request_done(ptr noundef %43, ptr noundef %47) #8
  br label %if.end38

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_omap_cmd_done(ptr noundef %add.ptr, ptr noundef %18)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %mmc_omap_send_abort.exit
  %abort = getelementptr i8, ptr %work, i32 44
  %48 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %abort, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %abort, align 4
  %irq = getelementptr i8, ptr %work, i32 -12
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %50) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_cmd_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slot_lock = getelementptr i8, ptr %t, i32 228
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slot_lock) #8
  %cmd = getelementptr i8, ptr %t, i32 -112
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %cmp6.not = icmp eq ptr %1, null
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %abort = getelementptr i8, ptr %t, i32 -4
  %2 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %abort, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %virt_base = getelementptr i8, ptr %t, i32 -68
  %3 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_base, align 4
  %reg_shift = getelementptr i8, ptr %t, i32 -52
  %5 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_shift, align 4
  %shl = shl i32 5, %6
  %add.ptr8 = getelementptr i8, ptr %4, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 0) #8, !srcloc !188
  %irq = getelementptr i8, ptr %t, i32 -60
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #8
  %9 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load10 = load i8, ptr %abort, align 4
  %bf.set = or i8 %bf.load10, -128
  store i8 %bf.set, ptr %abort, align 4
  %mmc_omap_wq = getelementptr i8, ptr %t, i32 424
  %10 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc_omap_wq, align 4
  %cmd_abort_work = getelementptr i8, ptr %t, i32 -48
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %cmd_abort_work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_clk_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_lock.i = getelementptr i8, ptr %t, i32 48
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %clk_lock.i) #8
  %fclk_enabled.i = getelementptr i8, ptr %t, i32 92
  %0 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %fclk_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %cmp5.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %cmp5.not.i, label %entry.mmc_omap_fclk_enable.exit_crit_edge, label %if.then.i

entry.mmc_omap_fclk_enable.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i, 127
  %1 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %bf.clear.i, ptr %fclk_enabled.i, align 4
  %fclk11.i = getelementptr i8, ptr %t, i32 -416
  %2 = ptrtoint ptr %fclk11.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fclk11.i, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  br label %mmc_omap_fclk_enable.exit

mmc_omap_fclk_enable.exit:                        ; preds = %if.then.i, %entry.mmc_omap_fclk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %clk_lock.i, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_omap_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %res.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %virt_base = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_base, align 4
  %reg_shift = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 17
  %6 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_shift, align 4
  %shl = shl i32 4, %7
  %add.ptr = getelementptr i8, ptr %5, i32 %shl
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !189
  %slots = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 33
  %9 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slots, align 4
  %mmc = getelementptr inbounds %struct.mmc_omap_slot, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.44, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp3.not = icmp eq i16 %8, 0
  br i1 %cmp3.not, label %if.then.cleanup_crit_edge, label %if.then5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_base, align 4
  %17 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_shift, align 4
  %shl8 = shl i32 4, %18
  %add.ptr9 = getelementptr i8, ptr %16, i32 %shl8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %8) #8, !srcloc !188
  %19 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt_base, align 4
  %21 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_shift, align 4
  %shl12 = shl i32 5, %22
  %add.ptr13 = getelementptr i8, ptr %20, i32 %shl12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 0) #8, !srcloc !188
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %virt_base15 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 13
  %reg_shift16 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 17
  %23 = ptrtoint ptr %virt_base15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt_base15, align 4
  %25 = ptrtoint ptr %reg_shift16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_shift16, align 4
  %shl17366 = shl i32 4, %26
  %add.ptr18367 = getelementptr i8, ptr %24, i32 %shl17366
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18367) #8, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp21.not369 = icmp eq i16 %27, 0
  br i1 %cmp21.not369, label %if.end14.cleanup_crit_edge, label %while.body.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end14
  %mmc39 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 4
  %total_bytes_left = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 29
  %data87 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 3
  %current_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 34
  br label %while.body

while.body:                                       ; preds = %if.end210.while.body_crit_edge, %while.body.lr.ph
  %28 = phi i16 [ %27, %while.body.lr.ph ], [ %109, %if.end210.while.body_crit_edge ]
  %end_command.0373 = phi i32 [ 0, %while.body.lr.ph ], [ %end_command.4, %if.end210.while.body_crit_edge ]
  %end_transfer.0372 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select, %if.end210.while.body_crit_edge ]
  %transfer_error.0371 = phi i32 [ 0, %while.body.lr.ph ], [ %transfer_error.2, %if.end210.while.body_crit_edge ]
  %cmd_error.0370 = phi i32 [ 0, %while.body.lr.ph ], [ %cmd_error.2, %if.end210.while.body_crit_edge ]
  %conv20374 = zext i16 %28 to i32
  %29 = ptrtoint ptr %virt_base15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt_base15, align 4
  %31 = ptrtoint ptr %reg_shift16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_shift16, align 4
  %shl26 = shl i32 4, %32
  %add.ptr27 = getelementptr i8, ptr %30, i32 %shl26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 %28) #8, !srcloc !188
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmd, align 4
  %cmp29.not = icmp eq ptr %34, null
  br i1 %cmp29.not, label %while.body.do.body34_crit_edge, label %if.then31

while.body.do.body34_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then31:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.then31, %while.body.do.body34_crit_edge
  %cmd23.0 = phi i32 [ %36, %if.then31 ], [ -1, %while.body.do.body34_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_omap_irq.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_omap_irq, %if.then38)) #8
          to label %do.end44 [label %if.then38], !srcloc !187

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc39, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_omap_irq.__UNIQUE_ID_ddebug274, ptr noundef %40, ptr noundef nonnull @.str.47, i32 noundef %conv20374, i32 noundef %cmd23.0) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %do.body34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %res.i) #8
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %res.i, ptr noundef nonnull @.str.76, i32 noundef %conv20374) #8
  %add.ptr.i = getelementptr i8, ptr %res.i, i32 %call.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end44
  %buf.03.i = phi ptr [ %add.ptr.i, %do.end44 ], [ %buf.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %do.end44 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.01.i
  %and.i = and i32 %shl.i, %conv20374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [15 x ptr], ptr @mmc_omap_report_irq.mmc_omap_status_bits, i32 0, i32 %i.01.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf.03.i, ptr noundef nonnull @.str.77, ptr noundef %42) #8
  %add.ptr4.i = getelementptr i8, ptr %buf.03.i, i32 %call3.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %buf.1.i = phi ptr [ %add.ptr4.i, %if.then.i ], [ %buf.03.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %mmc_omap_report_irq.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mmc_omap_report_irq.exit:                         ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %res.i) #8
  %43 = ptrtoint ptr %total_bytes_left to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %total_bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool45.not = icmp eq i32 %44, 0
  br i1 %tobool45.not, label %mmc_omap_report_irq.exit.if.end59_crit_edge, label %if.then46

mmc_omap_report_irq.exit.if.end59_crit_edge:      ; preds = %mmc_omap_report_irq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then46:                                        ; preds = %mmc_omap_report_irq.exit
  %45 = and i32 %conv20374, 1032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %if.then46.if.end53_crit_edge, label %if.then52

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_omap_xfer_data(ptr noundef %dev_id, i32 noundef 0)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then46.if.end53_crit_edge
  %and55 = and i32 %conv20374, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end53.if.end59_crit_edge, label %if.then57

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_omap_xfer_data(ptr noundef %dev_id, i32 noundef 1)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end53.if.end59_crit_edge, %mmc_omap_report_irq.exit.if.end59_crit_edge
  %and61 = and i32 %conv20374, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %spec.select = select i1 %tobool62.not, i32 %end_transfer.0372, i32 1
  %and66 = and i32 %conv20374, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end59.if.end92_crit_edge, label %do.body69

if.end59.if.end92_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.body69:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_omap_irq.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_omap_irq, %if.then81)) #8
          to label %do.end86 [label %if.then81], !srcloc !187

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmc39, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_omap_irq.__UNIQUE_ID_ddebug275, ptr noundef %50, ptr noundef nonnull @.str.48, i32 noundef %cmd23.0) #8
  br label %do.end86

do.end86:                                         ; preds = %if.then81, %do.body69
  %51 = ptrtoint ptr %data87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data87, align 4
  %tobool88.not = icmp eq ptr %52, null
  br i1 %tobool88.not, label %do.end86.if.end92_crit_edge, label %if.then89

do.end86.if.end92_crit_edge:                      ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then89:                                        ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -110, ptr %error, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %do.end86.if.end92_crit_edge, %if.end59.if.end92_crit_edge
  %transfer_error.1 = phi i32 [ 1, %if.then89 ], [ %transfer_error.0371, %do.end86.if.end92_crit_edge ], [ %transfer_error.0371, %if.end59.if.end92_crit_edge ]
  %and94 = and i32 %conv20374, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end141_crit_edge, label %if.then96

if.end92.if.end141_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then96:                                        ; preds = %if.end92
  %54 = ptrtoint ptr %data87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data87, align 4
  %tobool98.not = icmp eq ptr %55, null
  br i1 %tobool98.not, label %do.body122, label %if.then99

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %error101 = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %error101 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -84, ptr %error101, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_omap_irq.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_omap_irq, %if.then114)) #8
          to label %if.end141 [label %if.then114], !srcloc !187

if.then114:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmc39, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 128
  %61 = ptrtoint ptr %total_bytes_left to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %total_bytes_left, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_omap_irq.__UNIQUE_ID_ddebug276, ptr noundef %60, ptr noundef nonnull @.str.49, i32 noundef %62) #8
  br label %if.end141

do.body122:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_omap_irq.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_omap_irq, %if.then134)) #8
          to label %if.end141 [label %if.then134], !srcloc !187

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmc39, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_omap_irq.__UNIQUE_ID_ddebug277, ptr noundef %66, ptr noundef nonnull @.str.50) #8
  br label %if.end141

if.end141:                                        ; preds = %if.then134, %do.body122, %if.then114, %if.then99, %if.end92.if.end141_crit_edge
  %transfer_error.2 = phi i32 [ %transfer_error.1, %if.then134 ], [ %transfer_error.1, %if.end92.if.end141_crit_edge ], [ 1, %if.then114 ], [ 1, %if.then99 ], [ %transfer_error.1, %do.body122 ]
  %and143 = and i32 %conv20374, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %if.end141.if.end164_crit_edge, label %if.then145

if.end141.if.end164_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then145:                                       ; preds = %if.end141
  %67 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cmd, align 4
  %tobool147.not = icmp eq ptr %68, null
  br i1 %tobool147.not, label %if.then145.if.end164_crit_edge, label %if.then148

if.then145.if.end164_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end164

if.then148:                                       ; preds = %if.then145
  %69 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %current_slot, align 4
  %cmp149 = icmp eq ptr %70, null
  br i1 %cmp149, label %if.then148.do.end157_crit_edge, label %lor.lhs.false151

if.then148.do.end157_crit_edge:                   ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end157

lor.lhs.false151:                                 ; preds = %if.then148
  %pdata.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %70, i32 0, i32 12
  %71 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pdata.i, align 4
  %get_cover_state.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %72, i32 0, i32 14
  %73 = ptrtoint ptr %get_cover_state.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %get_cover_state.i, align 4
  %tobool.not.i352 = icmp eq ptr %74, null
  br i1 %tobool.not.i352, label %lor.lhs.false151.do.end157_crit_edge, label %mmc_omap_cover_is_open.exit

lor.lhs.false151.do.end157_crit_edge:             ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end157

mmc_omap_cover_is_open.exit:                      ; preds = %lor.lhs.false151
  %mmc.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %70, i32 0, i32 11
  %75 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmc.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 128
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %70, align 4
  %call.i353 = tail call i32 %74(ptr noundef %78, i32 noundef %80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool153.not = icmp eq i32 %call.i353, 0
  br i1 %tobool153.not, label %mmc_omap_cover_is_open.exit.do.end157_crit_edge, label %mmc_omap_cover_is_open.exit.if.end160_crit_edge

mmc_omap_cover_is_open.exit.if.end160_crit_edge:  ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

mmc_omap_cover_is_open.exit.do.end157_crit_edge:  ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end157

do.end157:                                        ; preds = %mmc_omap_cover_is_open.exit.do.end157_crit_edge, %lor.lhs.false151.do.end157_crit_edge, %if.then148.do.end157_crit_edge
  %81 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmc39, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.52, i32 noundef %cmd23.0) #11
  br label %if.end160

if.end160:                                        ; preds = %do.end157, %mmc_omap_cover_is_open.exit.if.end160_crit_edge
  %85 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cmd, align 4
  %error162 = getelementptr inbounds %struct.mmc_command, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %error162 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -110, ptr %error162, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.end160, %if.then145.if.end164_crit_edge, %if.end141.if.end164_crit_edge
  %cmd_error.1 = phi i32 [ 1, %if.end160 ], [ %cmd_error.0370, %if.then145.if.end164_crit_edge ], [ %cmd_error.0370, %if.end141.if.end164_crit_edge ]
  %end_command.1 = phi i32 [ 1, %if.end160 ], [ %end_command.0373, %if.then145.if.end164_crit_edge ], [ %end_command.0373, %if.end141.if.end164_crit_edge ]
  %and166 = and i32 %conv20374, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.end164.if.end187_crit_edge, label %if.then168

if.end164.if.end187_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then168:                                       ; preds = %if.end164
  %88 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cmd, align 4
  %tobool170.not = icmp eq ptr %89, null
  %90 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmc39, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 128
  br i1 %tobool170.not, label %do.end183, label %do.end174

do.end174:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  %arg = getelementptr inbounds %struct.mmc_command, ptr %89, i32 0, i32 1
  %94 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arg, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.55, i32 noundef %cmd23.0, i32 noundef %95) #11
  %96 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cmd, align 4
  %error179 = getelementptr inbounds %struct.mmc_command, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %error179 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -84, ptr %error179, align 4
  br label %if.end187

do.end183:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.58) #11
  br label %if.end187

if.end187:                                        ; preds = %do.end183, %do.end174, %if.end164.if.end187_crit_edge
  %cmd_error.2 = phi i32 [ 1, %do.end174 ], [ %cmd_error.1, %do.end183 ], [ %cmd_error.1, %if.end164.if.end187_crit_edge ]
  %end_command.2 = phi i32 [ 1, %do.end174 ], [ %end_command.1, %do.end183 ], [ %end_command.1, %if.end164.if.end187_crit_edge ]
  %and189 = and i32 %conv20374, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.end187.if.end210_crit_edge, label %do.body192

if.end187.if.end210_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end210

do.body192:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mmc_omap_irq.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mmc_omap_irq, %if.then204)) #8
          to label %if.end210 [label %if.then204], !srcloc !187

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %mmc39 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmc39, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mmc_omap_irq.__UNIQUE_ID_ddebug278, ptr noundef %102, ptr noundef nonnull @.str.60, i32 noundef %cmd23.0) #8
  br label %if.end210

if.end210:                                        ; preds = %if.then204, %do.body192, %if.end187.if.end210_crit_edge
  %end_command.3 = phi i32 [ %end_command.2, %if.end187.if.end210_crit_edge ], [ 1, %if.then204 ], [ 1, %do.body192 ]
  %103 = and i32 %conv20374, 2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %104 = icmp eq i32 %103, 1
  %end_command.4 = select i1 %104, i32 1, i32 %end_command.3
  %105 = ptrtoint ptr %virt_base15 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %virt_base15, align 4
  %107 = ptrtoint ptr %reg_shift16 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %reg_shift16, align 4
  %shl17 = shl i32 4, %108
  %add.ptr18 = getelementptr i8, ptr %106, i32 %shl17
  %109 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr18) #8, !srcloc !189
  %cmp21.not = icmp eq i16 %109, 0
  br i1 %cmp21.not, label %while.end, label %if.end210.while.body_crit_edge

if.end210.while.body_crit_edge:                   ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_error.2)
  %tobool220.not = icmp eq i32 %cmd_error.2, 0
  br i1 %tobool220.not, label %while.end.if.end232_crit_edge, label %land.lhs.true221

while.end.if.end232_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

land.lhs.true221:                                 ; preds = %while.end
  %data222 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 3
  %110 = ptrtoint ptr %data222 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data222, align 4
  %tobool223.not = icmp eq ptr %111, null
  br i1 %tobool223.not, label %land.lhs.true221.if.end232_crit_edge, label %if.then224

land.lhs.true221.if.end232_crit_edge:             ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end232

if.then224:                                       ; preds = %land.lhs.true221
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_abort_timer = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 20
  %call225 = tail call i32 @del_timer(ptr noundef %cmd_abort_timer) #8
  %abort = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 19
  %112 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load = load i8, ptr %abort, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %abort, align 4
  %113 = ptrtoint ptr %virt_base15 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %virt_base15, align 4
  %115 = ptrtoint ptr %reg_shift16 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %reg_shift16, align 4
  %shl228 = shl i32 5, %116
  %add.ptr229 = getelementptr i8, ptr %114, i32 %shl228
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr229, i16 0) #8, !srcloc !188
  %irq230 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 15
  %117 = ptrtoint ptr %irq230 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq230, align 4
  tail call void @disable_irq_nosync(i32 noundef %118) #8
  %mmc_omap_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 41
  %119 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmc_omap_wq, align 4
  %cmd_abort_work = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 18
  %call.i356 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %120, ptr noundef %cmd_abort_work) #8
  br label %cleanup

if.end232:                                        ; preds = %land.lhs.true221.if.end232_crit_edge, %while.end.if.end232_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %end_command.4)
  %tobool233.not = icmp eq i32 %end_command.4, 0
  br i1 %tobool233.not, label %if.end232.if.end239_crit_edge, label %land.lhs.true234

if.end232.if.end239_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

land.lhs.true234:                                 ; preds = %if.end232
  %121 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cmd, align 4
  %tobool236.not = icmp eq ptr %122, null
  br i1 %tobool236.not, label %land.lhs.true234.if.end239_crit_edge, label %if.then237

land.lhs.true234.if.end239_crit_edge:             ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

if.then237:                                       ; preds = %land.lhs.true234
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_omap_cmd_done(ptr noundef %dev_id, ptr noundef nonnull %122)
  br label %if.end239

if.end239:                                        ; preds = %if.then237, %land.lhs.true234.if.end239_crit_edge, %if.end232.if.end239_crit_edge
  %data240 = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 3
  %123 = ptrtoint ptr %data240 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %data240, align 4
  %cmp241.not = icmp eq ptr %124, null
  br i1 %cmp241.not, label %if.end239.cleanup_crit_edge, label %if.then243

if.end239.cleanup_crit_edge:                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then243:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transfer_error.2)
  %tobool244.not = icmp eq i32 %transfer_error.2, 0
  br i1 %tobool244.not, label %if.else247, label %if.then245

if.then245:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %dev_id, ptr noundef nonnull %124)
  br label %cleanup

if.else247:                                       ; preds = %if.then243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool248.not = icmp eq i32 %spec.select, 0
  br i1 %tobool248.not, label %if.else247.cleanup_crit_edge, label %if.then249

if.else247.cleanup_crit_edge:                     ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then249:                                       ; preds = %if.else247
  %dma_in_use.i = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 31
  %125 = ptrtoint ptr %dma_in_use.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i = load i8, ptr %dma_in_use.i, align 4
  %126 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool.not.i357 = icmp eq i8 %126, 0
  br i1 %tobool.not.i357, label %if.then.i358, label %if.end.i

if.then.i358:                                     ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %dev_id, ptr noundef nonnull %124) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then249
  %dma_lock.i = getelementptr inbounds %struct.mmc_omap_host, ptr %dev_id, i32 0, i32 32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_lock.i) #8
  %127 = ptrtoint ptr %dma_in_use.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load5.i = load i8, ptr %dma_in_use.i, align 4
  %128 = and i8 %bf.load5.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool9.not.i = icmp eq i8 %128, 0
  br i1 %tobool9.not.i, label %if.else.i, label %if.then16.critedge.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load5.i, -128
  %129 = ptrtoint ptr %dma_in_use.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %bf.set.i, ptr %dma_in_use.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_lock.i, i32 noundef %call2.i) #8
  br label %cleanup

if.then16.critedge.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_lock.i, i32 noundef %call2.i) #8
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %dev_id, ptr noundef nonnull %124) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16.critedge.i, %if.else.i, %if.then.i358, %if.else247.cleanup_crit_edge, %if.then245, %if.end239.cleanup_crit_edge, %if.then224, %if.end14.cleanup_crit_edge, %if.then5, %if.then.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_remove_slot(ptr noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 11
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %pdata = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %name = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  tail call void @device_remove_file(ptr noundef %class_dev, ptr noundef nonnull @dev_attr_slot_name) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %get_cover_state = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %get_cover_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_cover_state, align 4
  %cmp3.not = icmp eq ptr %9, null
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev5 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 1
  tail call void @device_remove_file(ptr noundef %class_dev5, ptr noundef nonnull @dev_attr_cover_switch) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %cover_tasklet = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 6
  tail call void @tasklet_kill(ptr noundef %cover_tasklet) #8
  %cover_timer = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 7
  %call = tail call i32 @del_timer_sync(ptr noundef %cover_timer) #8
  %host = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 10
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  %mmc_omap_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %11, i32 0, i32 41
  %12 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc_omap_wq, align 4
  tail call void @flush_workqueue(ptr noundef %13) #8
  tail call void @mmc_remove_host(ptr noundef %1) #8
  tail call void @mmc_free_host(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_select_slot(ptr noundef %slot, i32 noundef %claimed) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %claimed)
  %tobool.not = icmp eq i32 %claimed, 0
  br i1 %tobool.not, label %do.body2, label %entry.no_claim_crit_edge

entry.no_claim_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_claim

do.body2:                                         ; preds = %entry
  %slot_lock = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 35
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slot_lock) #8
  %mmc = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %cmp6.not137 = icmp eq ptr %3, null
  br i1 %cmp6.not137, label %do.body2.while.end_crit_edge, label %while.body.lr.ph

do.body2.while.end_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body2
  %slot_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 36
  br label %while.body

while.body:                                       ; preds = %do.body32.while.body_crit_edge, %while.body.lr.ph
  %flags.0138 = phi i32 [ %call3, %while.body.lr.ph ], [ %call40, %do.body32.while.body_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %flags.0138) #8
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 207) #8
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %cmp17 = icmp eq ptr %5, null
  br i1 %cmp17, label %while.body.do.body32_crit_edge, label %if.end20

while.body.do.body32_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.end20:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call21135 = call i32 @prepare_to_wait_event(ptr noundef %slot_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %7 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc, align 4
  %cmp23136 = icmp eq ptr %8, null
  br i1 %cmp23136, label %if.end20.for.end_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  br label %cleanup

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end20.cleanup_crit_edge
  call void @schedule() #8
  %call21 = call i32 @prepare_to_wait_event(ptr noundef %slot_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %9 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmc, align 4
  %cmp23 = icmp eq ptr %10, null
  br i1 %cmp23, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end20.for.end_crit_edge
  call void @finish_wait(ptr noundef %slot_wq, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.body32

do.body32:                                        ; preds = %for.end, %while.body.do.body32_crit_edge
  %call40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %slot_lock) #8
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %cmp6.not = icmp eq ptr %12, null
  br i1 %cmp6.not, label %do.body32.while.end_crit_edge, label %do.body32.while.body_crit_edge

do.body32.while.body_crit_edge:                   ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.body32.while.end_crit_edge:                    ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.body32.while.end_crit_edge, %do.body2.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %do.body2.while.end_crit_edge ], [ %call40, %do.body32.while.end_crit_edge ]
  %mmc45 = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 11
  %13 = ptrtoint ptr %mmc45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmc45, align 4
  %15 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %mmc, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %flags.0.lcssa) #8
  br label %no_claim

no_claim:                                         ; preds = %while.end, %entry.no_claim_crit_edge
  %clk_timer = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 38
  %call48 = call i32 @del_timer(ptr noundef %clk_timer) #8
  %current_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 34
  %16 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %current_slot, align 4
  %cmp49.not = icmp ne ptr %17, %slot
  %brmerge = or i1 %tobool.not, %cmp49.not
  %brmerge.not = xor i1 %brmerge, true
  %cmp.not.i = icmp eq ptr %17, null
  %or.cond = select i1 %brmerge.not, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %no_claim.if.end54_crit_edge, label %land.lhs.true.i

no_claim.if.end54_crit_edge:                      ; preds = %no_claim
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true.i:                                  ; preds = %no_claim
  %host.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host.i, align 4
  %fclk_enabled.i = getelementptr inbounds %struct.mmc_omap_host, ptr %19, i32 0, i32 40
  %20 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %fclk_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end54_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.if.end54_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %fclk_freq.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %17, i32 0, i32 5
  %21 = ptrtoint ptr %fclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fclk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.not.i = icmp eq i32 %22, 0
  br i1 %cmp2.not.i, label %land.lhs.true1.i.if.end54_crit_edge, label %cond.false8.i.i

land.lhs.true1.i.if.end54_crit_edge:              ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

cond.false8.i.i:                                  ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %22, 999999999
  %div.i = udiv i32 %sub.i, %22
  %mul.i = shl i32 %div.i, 3
  %sub.i.i = add i32 %mul.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %23(i32 noundef %div.i.i) #8
  br label %if.end54

if.end54:                                         ; preds = %cond.false8.i.i, %land.lhs.true1.i.if.end54_crit_edge, %land.lhs.true.i.if.end54_crit_edge, %no_claim.if.end54_crit_edge
  %24 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %current_slot, align 4
  %cmp56.not = icmp eq ptr %25, %slot
  br i1 %cmp56.not, label %if.end54.if.end70_crit_edge, label %if.then58

if.end54.if.end70_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then58:                                        ; preds = %if.end54
  %saved_con = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 2
  %26 = ptrtoint ptr %saved_con to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %saved_con, align 4
  %28 = and i16 %27, -1024
  %virt_base = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt_base, align 4
  %reg_shift = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_shift, align 4
  %shl = shl i32 3, %32
  %add.ptr = getelementptr i8, ptr %30, i32 %shl
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %28) #8, !srcloc !188
  %pdata = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 42
  %33 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata, align 4
  %switch_slot = getelementptr inbounds %struct.omap_mmc_platform_data, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %switch_slot to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %switch_slot, align 4
  %cmp61.not = icmp eq ptr %36, null
  br i1 %cmp61.not, label %if.then58.if.end68_crit_edge, label %if.then63

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then63:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %mmc66 = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 11
  %37 = ptrtoint ptr %mmc66 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmc66, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 128
  %41 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slot, align 4
  %call67 = call i32 %36(ptr noundef %40, i32 noundef %42) #8
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.then58.if.end68_crit_edge
  %43 = ptrtoint ptr %current_slot to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %slot, ptr %current_slot, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.end68, %if.end54.if.end70_crit_edge
  %clk_lock.i122 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 39
  %call2.i123 = call i32 @_raw_spin_lock_irqsave(ptr noundef %clk_lock.i122) #8
  %fclk_enabled.i124 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 40
  %44 = ptrtoint ptr %fclk_enabled.i124 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i125 = load i8, ptr %fclk_enabled.i124, align 4
  br i1 %tobool.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i125)
  %cmp5.not.i = icmp slt i8 %bf.load.i125, 0
  br i1 %cmp5.not.i, label %if.then72.mmc_omap_fclk_enable.exit_crit_edge, label %if.then.i121

if.then72.mmc_omap_fclk_enable.exit_crit_edge:    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_enable.exit

if.then.i121:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i125, -128
  %45 = ptrtoint ptr %fclk_enabled.i124 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %bf.set.i, ptr %fclk_enabled.i124, align 4
  %fclk11.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %fclk11.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fclk11.i, align 4
  %call10.i = call i32 @clk_enable(ptr noundef %47) #8
  br label %mmc_omap_fclk_enable.exit

mmc_omap_fclk_enable.exit:                        ; preds = %if.then.i121, %if.then72.mmc_omap_fclk_enable.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %clk_lock.i122, i32 noundef %call2.i123) #8
  %virt_base73 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 13
  %48 = ptrtoint ptr %virt_base73 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virt_base73, align 4
  %reg_shift74 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %reg_shift74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_shift74, align 4
  %shl75 = shl i32 3, %51
  %add.ptr76 = getelementptr i8, ptr %49, i32 %shl75
  %52 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr76) #8, !srcloc !189
  %saved_con78 = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 2
  %53 = ptrtoint ptr %saved_con78 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %saved_con78, align 4
  %55 = ptrtoint ptr %virt_base73 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %virt_base73, align 4
  %57 = ptrtoint ptr %reg_shift74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg_shift74, align 4
  %shl81 = shl i32 3, %58
  %add.ptr82 = getelementptr i8, ptr %56, i32 %shl81
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr82, i16 %54) #8, !srcloc !188
  br label %if.end83

if.else:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i125)
  %cmp5.not.i128 = icmp sgt i8 %bf.load.i125, -1
  br i1 %cmp5.not.i128, label %if.else.mmc_omap_fclk_enable.exit132_crit_edge, label %if.then.i131

if.else.mmc_omap_fclk_enable.exit132_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_enable.exit132

if.then.i131:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i129 = and i8 %bf.load.i125, 127
  %59 = ptrtoint ptr %fclk_enabled.i124 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %bf.clear.i129, ptr %fclk_enabled.i124, align 4
  %fclk11.i130 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %fclk11.i130 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fclk11.i130, align 4
  call void @clk_disable(ptr noundef %61) #8
  br label %mmc_omap_fclk_enable.exit132

mmc_omap_fclk_enable.exit132:                     ; preds = %if.then.i131, %if.else.mmc_omap_fclk_enable.exit132_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %clk_lock.i122, i32 noundef %call2.i123) #8
  br label %if.end83

if.end83:                                         ; preds = %mmc_omap_fclk_enable.exit132, %mmc_omap_fclk_enable.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_start_request(ptr noundef %host, ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %do.end5, label %do.body2, !prof !182

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1068, 0\0A.popsection", ""() #8, !srcloc !190
  unreachable

do.end5:                                          ; preds = %entry
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %req, ptr %mrq, align 4
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1.i, align 4
  %data2.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 3
  %5 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %data2.i, align 4
  %cmp.i = icmp eq ptr %4, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  %virt_base.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 13
  %6 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_base.i, align 4
  %reg_shift.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 17
  %8 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_shift.i, align 4
  %shl.i = shl i32 9, %9
  %add.ptr.i = getelementptr i8, ptr %7, i32 %shl.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #8, !srcloc !188
  %10 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_base.i, align 4
  %12 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_shift.i, align 4
  %shl5.i = shl i32 10, %13
  %add.ptr6.i = getelementptr i8, ptr %11, i32 %shl5.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 0) #8, !srcloc !188
  %14 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base.i, align 4
  %16 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_shift.i, align 4
  %shl9.i = shl i32 11, %17
  %add.ptr10.i = getelementptr i8, ptr %15, i32 %shl9.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i, i16 0) #8, !srcloc !188
  %dma_in_use.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 31
  %18 = ptrtoint ptr %dma_in_use.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %dma_in_use.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -33
  store i8 %bf.clear.i, ptr %dma_in_use.i, align 4
  %19 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt_base.i, align 4
  %21 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_shift.i, align 4
  %shl.i.i = shl i32 13, %22
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %shl.i.i
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #8, !srcloc !189
  %24 = and i16 %23, -33
  %25 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_base.i, align 4
  %27 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_shift.i, align 4
  %shl4.i.i = shl i32 13, %28
  %add.ptr5.i.i = getelementptr i8, ptr %26, i32 %shl4.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i.i, i16 %24) #8, !srcloc !188
  %29 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt_base.i, align 4
  %31 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg_shift.i, align 4
  %shl8.i.i = shl i32 6, %32
  %add.ptr9.i.i = getelementptr i8, ptr %30, i32 %shl8.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 253) #8, !srcloc !188
  br label %mmc_omap_prepare_data.exit

if.end.i:                                         ; preds = %do.end5
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 2
  %33 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blksz.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 3
  %35 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks.i, align 4
  %37 = trunc i32 %36 to i16
  %conv.i = add i16 %37, -1
  %virt_base11.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 13
  %38 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt_base11.i, align 4
  %reg_shift12.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 17
  %40 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_shift12.i, align 4
  %shl13.i = shl i32 10, %41
  %add.ptr14.i = getelementptr i8, ptr %39, i32 %shl13.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14.i, i16 %conv.i) #8, !srcloc !188
  %42 = trunc i32 %34 to i16
  %conv16.i = add i16 %42, -1
  %43 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt_base11.i, align 4
  %45 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_shift12.i, align 4
  %shl19.i = shl i32 9, %46
  %add.ptr20.i = getelementptr i8, ptr %44, i32 %shl19.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20.i, i16 %conv16.i) #8, !srcloc !188
  %current_slot.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 34
  %47 = ptrtoint ptr %current_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %current_slot.i.i, align 4
  %fclk_freq.i.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %fclk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %fclk_freq.i.i, align 4
  %div.i.i = udiv i32 1000000000, %50
  %51 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data1.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %div1.i.i = udiv i32 %54, %div.i.i
  %timeout_clks.i.i = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %timeout_clks.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %timeout_clks.i.i, align 4
  %add.i.i = add i32 %56, %div1.i.i
  %57 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %virt_base11.i, align 4
  %59 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %reg_shift12.i, align 4
  %shl.i208.i = shl i32 13, %60
  %add.ptr.i209.i = getelementptr i8, ptr %58, i32 %shl.i208.i
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i209.i) #8, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 65535
  %div428.i.i = lshr i32 %add.i.i, 10
  %62 = and i16 %61, -33
  %timeout.0.i.i = select i1 %cmp.i.i, i32 %div428.i.i, i32 %add.i.i
  %masksel.i.i = select i1 %cmp.i.i, i16 32, i16 0
  %reg.0.i.i = or i16 %62, %masksel.i.i
  %63 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virt_base11.i, align 4
  %65 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_shift12.i, align 4
  %shl9.i.i = shl i32 13, %66
  %add.ptr10.i.i = getelementptr i8, ptr %64, i32 %shl9.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr10.i.i, i16 %reg.0.i.i) #8, !srcloc !188
  %conv11.i.i = trunc i32 %timeout.0.i.i to i16
  %67 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %virt_base11.i, align 4
  %69 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reg_shift12.i, align 4
  %shl14.i.i = shl i32 7, %70
  %add.ptr15.i.i = getelementptr i8, ptr %68, i32 %shl14.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i.i, i16 %conv11.i.i) #8, !srcloc !188
  %71 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp22.i = icmp eq i32 %72, 1
  br i1 %cmp22.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sg25232.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 12
  br label %for.body.preheader.i

cond.end.i:                                       ; preds = %if.end.i
  %sg_len24.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 10
  %73 = ptrtoint ptr %sg_len24.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sg_len24.i, align 4
  %sg25.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp26228.not.i = icmp eq i32 %74, 0
  br i1 %cmp26228.not.i, label %cond.end.i.if.then32.critedge.i_crit_edge, label %cond.end.i.for.body.preheader.i_crit_edge

cond.end.i.for.body.preheader.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

cond.end.i.if.then32.critedge.i_crit_edge:        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.critedge.i

for.body.preheader.i:                             ; preds = %cond.end.i.for.body.preheader.i_crit_edge, %cond.end.thread.i
  %sg25238.i = phi ptr [ %sg25232.i, %cond.end.thread.i ], [ %sg25.i, %cond.end.i.for.body.preheader.i_crit_edge ]
  %cond234.i = phi i32 [ 1, %cond.end.thread.i ], [ %74, %cond.end.i.for.body.preheader.i_crit_edge ]
  %75 = ptrtoint ptr %sg25238.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sg25238.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.0230.i = phi ptr [ %call.i, %for.inc.i.for.body.i_crit_edge ], [ %76, %for.body.preheader.i ]
  %i.0229.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0230.i, i32 0, i32 2
  %77 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length.i, align 4
  %rem.i = urem i32 %78, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp28.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp28.not.i, label %for.inc.i, label %use_pio.critedge.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.0229.i, 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.0230.i) #8
  %exitcond.not.i = icmp eq i32 %inc.i, %cond234.i
  br i1 %exitcond.not.i, label %for.inc.i.if.then32.critedge.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.then32.critedge.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.critedge.i

if.then32.critedge.i:                             ; preds = %for.inc.i.if.then32.critedge.i_crit_edge, %cond.end.i.if.then32.critedge.i_crit_edge
  %sg25239.i = phi ptr [ %sg25.i, %cond.end.i.if.then32.critedge.i_crit_edge ], [ %sg25238.i, %for.inc.i.if.then32.critedge.i_crit_edge ]
  %cond235.i = phi i32 [ 0, %cond.end.i.if.then32.critedge.i_crit_edge ], [ %cond234.i, %for.inc.i.if.then32.critedge.i_crit_edge ]
  %sg_idx.c205.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 26
  %79 = ptrtoint ptr %sg_idx.c205.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %sg_idx.c205.i, align 4
  %features.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 30
  %80 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %features.i, align 4
  %and.i = and i32 %81, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool33.not.i = icmp eq i32 %and.i, 0
  %cond34.i = select i1 %tobool33.not.i, i32 64, i32 32
  %82 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %blksz.i, align 4
  %84 = tail call i32 @llvm.umin.i32(i32 %cond34.i, i32 %83) #8
  %shr.i = lshr i32 %84, 1
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %4, i32 0, i32 6
  %85 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i, align 4
  %and41.i = and i32 %86, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.else.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.then32.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_tx.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 11
  %dma_tx_burst.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 12
  br label %if.end51.i

if.else.i:                                        ; preds = %if.then32.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %dma_rx.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 9
  %dma_rx_burst.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 10
  %sub47.i = shl nuw nsw i32 %shr.i, 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else.i, %if.then43.i
  %sub47.sink.i = phi i32 [ %sub47.i, %if.else.i ], [ %shr.i, %if.then43.i ]
  %.sink242.i = phi i16 [ 32512, %if.else.i ], [ -1, %if.then43.i ]
  %.sink240.i = phi i16 [ -32753, %if.else.i ], [ 3968, %if.then43.i ]
  %dma_data_dir.0.i = phi i32 [ 2, %if.else.i ], [ 1, %if.then43.i ]
  %c.0.in.i = phi ptr [ %dma_rx.i, %if.else.i ], [ %dma_tx.i, %if.then43.i ]
  %bp.0.i = phi ptr [ %dma_rx_burst.i, %if.else.i ], [ %dma_tx_burst.i, %if.then43.i ]
  %87 = trunc i32 %sub47.sink.i to i16
  %88 = add i16 %.sink242.i, %87
  %conv50.i = or i16 %88, %.sink240.i
  %89 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %c.0.i = load ptr, ptr %c.0.in.i, align 4
  %tobool52.not.i = icmp eq ptr %c.0.i, null
  br i1 %tobool52.not.i, label %if.end51.i.use_pio.i_crit_edge, label %if.end54.i

if.end51.i.use_pio.i_crit_edge:                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_pio.i

if.end54.i:                                       ; preds = %if.end51.i
  %90 = ptrtoint ptr %bp.0.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bp.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %shr.i)
  %cmp55.not.i = icmp eq i32 %91, %shr.i
  br i1 %cmp55.not.i, label %if.end54.i.if.end68.i_crit_edge, label %if.then57.i

if.end54.i.if.end68.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #8
  %92 = getelementptr inbounds i8, ptr %cfg.i, i32 36
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 16777215, ptr %92, align 4, !annotation !191
  %94 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %cfg.i, align 4
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 1
  %phys_base.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 14
  %95 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %phys_base.i, align 4
  %97 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg_shift12.i, align 4
  %shl59.i = shl i32 8, %98
  %add.i = add i32 %shl59.i, %96
  %99 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add.i, ptr %src_addr.i, align 4
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %100 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 3
  %101 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %src_addr_width.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %102 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %dst_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 5
  %103 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %shr.i, ptr %src_maxburst.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 6
  %104 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %shr.i, ptr %dst_maxburst.i, align 4
  %src_port_window_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 7
  %105 = ptrtoint ptr %src_port_window_size.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %src_port_window_size.i, align 4
  %dst_port_window_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 8
  %106 = ptrtoint ptr %dst_port_window_size.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %dst_port_window_size.i, align 4
  %peripheral_config.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 10
  %107 = ptrtoint ptr %peripheral_config.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %peripheral_config.i, align 4
  %peripheral_size.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 11
  %108 = ptrtoint ptr %peripheral_size.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %peripheral_size.i, align 4
  %109 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %c.0.i, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %110, i32 0, i32 44
  %111 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i, label %if.then57.i.cleanup.thread.i_crit_edge, label %dmaengine_slave_config.exit.i

if.then57.i.cleanup.thread.i_crit_edge:           ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

dmaengine_slave_config.exit.i:                    ; preds = %if.then57.i
  %call.i.i = call i32 %112(ptr noundef nonnull %c.0.i, ptr noundef nonnull %cfg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool65.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool65.not.i, label %cleanup.i, label %dmaengine_slave_config.exit.i.cleanup.thread.i_crit_edge

dmaengine_slave_config.exit.i.cleanup.thread.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %dmaengine_slave_config.exit.i.cleanup.thread.i_crit_edge, %if.then57.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #8
  br label %use_pio.i

cleanup.i:                                        ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %113 = ptrtoint ptr %bp.0.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %shr.i, ptr %bp.0.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #8
  br label %if.end68.i

if.end68.i:                                       ; preds = %cleanup.i, %if.end54.i.if.end68.i_crit_edge
  %114 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %c.0.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %115, i32 0, i32 15
  %116 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev.i, align 4
  %118 = ptrtoint ptr %sg25239.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sg25239.i, align 4
  %call70.i = call i32 @dma_map_sg_attrs(ptr noundef %117, ptr noundef %119, i32 noundef %cond235.i, i32 noundef %dma_data_dir.0.i, i32 noundef 0) #8
  %sg_len71.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %120 = ptrtoint ptr %sg_len71.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call70.i, ptr %sg_len71.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %cmp73.i = icmp eq i32 %call70.i, 0
  br i1 %cmp73.i, label %if.end68.i.use_pio.i_crit_edge, label %lor.lhs.false.i.i

if.end68.i.use_pio.i_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_pio.i

lor.lhs.false.i.i:                                ; preds = %if.end68.i
  %121 = ptrtoint ptr %sg25239.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sg25239.i, align 4
  %123 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags.i, align 4
  %and80.i = and i32 %124, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool81.not.i = icmp eq i32 %and80.i, 0
  %cond82.i = select i1 %tobool81.not.i, i32 2, i32 1
  %125 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %c.0.i, align 4
  %tobool1.not.i.i = icmp eq ptr %126, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.use_pio.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.use_pio.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_pio.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %126, i32 0, i32 39
  %127 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %128, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.use_pio.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.use_pio.i_crit_edge:           ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_pio.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i211.i = call ptr %128(ptr noundef nonnull %c.0.i, ptr noundef %122, i32 noundef %call70.i, i32 noundef %cond82.i, i32 noundef 3, ptr noundef null) #8
  %tobool84.not.i = icmp eq ptr %call.i211.i, null
  br i1 %tobool84.not.i, label %dmaengine_prep_slave_sg.exit.i.use_pio.i_crit_edge, label %cleanup102.i

dmaengine_prep_slave_sg.exit.i.use_pio.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %use_pio.i

cleanup102.i:                                     ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %virt_base11.i, align 4
  %131 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %reg_shift12.i, align 4
  %shl89.i = shl i32 11, %132
  %add.ptr90.i = getelementptr i8, ptr %130, i32 %shl89.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr90.i, i16 %conv50.i) #8, !srcloc !188
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i211.i, i32 0, i32 6
  %133 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @mmc_omap_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i211.i, i32 0, i32 8
  %134 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %host, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i211.i, i32 0, i32 4
  %135 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i213.i = call i32 %136(ptr noundef nonnull %call.i211.i) #8
  %brs_received.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 31
  %137 = ptrtoint ptr %brs_received.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load92.i = load i8, ptr %brs_received.i, align 4
  %bf.clear100.i = and i8 %bf.load92.i, 31
  %bf.set101.i = or i8 %bf.clear100.i, 32
  store i8 %bf.set101.i, ptr %brs_received.i, align 4
  br label %mmc_omap_prepare_data.exit

use_pio.critedge.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %sg_idx.c.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 26
  %138 = ptrtoint ptr %sg_idx.c.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %sg_idx.c.i, align 4
  br label %use_pio.i

use_pio.i:                                        ; preds = %use_pio.critedge.i, %dmaengine_prep_slave_sg.exit.i.use_pio.i_crit_edge, %lor.lhs.false2.i.i.use_pio.i_crit_edge, %lor.lhs.false.i.i.use_pio.i_crit_edge, %if.end68.i.use_pio.i_crit_edge, %cleanup.thread.i, %if.end51.i.use_pio.i_crit_edge
  %cond236.i = phi i32 [ %cond235.i, %lor.lhs.false.i.i.use_pio.i_crit_edge ], [ %cond235.i, %lor.lhs.false2.i.i.use_pio.i_crit_edge ], [ %cond235.i, %cleanup.thread.i ], [ %cond235.i, %dmaengine_prep_slave_sg.exit.i.use_pio.i_crit_edge ], [ %cond235.i, %if.end68.i.use_pio.i_crit_edge ], [ %cond235.i, %if.end51.i.use_pio.i_crit_edge ], [ %cond234.i, %use_pio.critedge.i ]
  %139 = ptrtoint ptr %virt_base11.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %virt_base11.i, align 4
  %141 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %reg_shift12.i, align 4
  %shl112.i = shl i32 11, %142
  %add.ptr113.i = getelementptr i8, ptr %140, i32 %shl112.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr113.i, i16 7967) #8, !srcloc !188
  %143 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %blocks.i, align 4
  %mul.i = mul i32 %144, %34
  %total_bytes_left.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 29
  %145 = ptrtoint ptr %total_bytes_left.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mul.i, ptr %total_bytes_left.i, align 4
  %sg_len115.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %146 = ptrtoint ptr %sg_len115.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %cond236.i, ptr %sg_len115.i, align 4
  %147 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %data2.i, align 4
  %sg1.i.i = getelementptr inbounds %struct.mmc_data, ptr %148, i32 0, i32 12
  %149 = ptrtoint ptr %sg1.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sg1.i.i, align 4
  %sg_idx.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 26
  %151 = ptrtoint ptr %sg_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %sg_idx.i.i, align 4
  %add.ptr.i215.i = getelementptr %struct.scatterlist, ptr %150, i32 %152
  %length.i.i = getelementptr %struct.scatterlist, ptr %150, i32 %152, i32 2
  %153 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %length.i.i, align 4
  %buffer_bytes_left.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 28
  %155 = ptrtoint ptr %buffer_bytes_left.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %buffer_bytes_left.i.i, align 4
  %156 = ptrtoint ptr %add.ptr.i215.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %add.ptr.i215.i, align 4
  %and.i.i.i.i.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !182

do.body2.i.i.i.i:                                 ; preds = %use_pio.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !192
  unreachable

sg_virt.exit.i.i:                                 ; preds = %use_pio.i
  %and.i.i.i.i = and i32 %157, -4
  %158 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = call ptr @page_address(ptr noundef %158) #8
  %offset.i.i.i = getelementptr %struct.scatterlist, ptr %150, i32 %152, i32 1
  %159 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %160
  %buffer.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 27
  %161 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %add.ptr.i.i.i, ptr %buffer.i.i, align 4
  %162 = ptrtoint ptr %buffer_bytes_left.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %buffer_bytes_left.i.i, align 4
  %164 = ptrtoint ptr %total_bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %total_bytes_left.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %165)
  %cmp.i216.i = icmp ugt i32 %163, %165
  br i1 %cmp.i216.i, label %if.then.i217.i, label %sg_virt.exit.i.i.mmc_omap_sg_to_buf.exit.i_crit_edge

sg_virt.exit.i.i.mmc_omap_sg_to_buf.exit.i_crit_edge: ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_sg_to_buf.exit.i

if.then.i217.i:                                   ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %buffer_bytes_left.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %buffer_bytes_left.i.i, align 4
  br label %mmc_omap_sg_to_buf.exit.i

mmc_omap_sg_to_buf.exit.i:                        ; preds = %if.then.i217.i, %sg_virt.exit.i.i.mmc_omap_sg_to_buf.exit.i_crit_edge
  %dma_in_use116.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 31
  %167 = ptrtoint ptr %dma_in_use116.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %bf.load117.i = load i8, ptr %dma_in_use116.i, align 4
  %bf.clear118.i = and i8 %bf.load117.i, -33
  store i8 %bf.clear118.i, ptr %dma_in_use116.i, align 4
  br label %mmc_omap_prepare_data.exit

mmc_omap_prepare_data.exit:                       ; preds = %mmc_omap_sg_to_buf.exit.i, %cleanup102.i, %if.then.i
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %168 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %cmd, align 4
  call fastcc void @mmc_omap_start_command(ptr noundef %host, ptr noundef %169)
  %dma_in_use = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 31
  %170 = ptrtoint ptr %dma_in_use to i32
  call void @__asan_load1_noabort(i32 %170)
  %bf.load = load i8, ptr %dma_in_use, align 4
  %171 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool7.not = icmp eq i8 %171, 0
  br i1 %tobool7.not, label %mmc_omap_prepare_data.exit.if.end10_crit_edge, label %if.then8

mmc_omap_prepare_data.exit.if.end10_crit_edge:    ; preds = %mmc_omap_prepare_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %mmc_omap_prepare_data.exit
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data2.i, align 4
  %flags = getelementptr inbounds %struct.mmc_data, ptr %173, i32 0, i32 6
  %174 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %flags, align 4
  %and = and i32 %175, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %dma_tx = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 11
  %dma_rx = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 9
  %cond.in = select i1 %tobool9.not, ptr %dma_rx, ptr %dma_tx
  %176 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %176)
  %cond = load ptr, ptr %cond.in, align 4
  %177 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %cond, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %178, i32 0, i32 50
  %179 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %device_issue_pending.i, align 4
  call void %180(ptr noundef %cond) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %mmc_omap_prepare_data.exit.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_start_command(ptr noundef %host, ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd, ptr %cmd1, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 31
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 21, label %entry.sw.bb_crit_edge
    i32 29, label %entry.sw.bb_crit_edge101
    i32 7, label %sw.bb2
    i32 1, label %sw.bb3
  ]

entry.sw.bb_crit_edge101:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge101
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmc = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 4
  %4 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, i32 noundef %and) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %resptype.0 = phi i32 [ 0, %do.end ], [ 768, %sw.bb3 ], [ 512, %sw.bb2 ], [ 256, %sw.bb ], [ %and, %entry.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and7 = and i32 %9, 96
  %10 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %and7, label %if.else17 [
    i32 32, label %sw.epilog.if.end19_crit_edge
    i32 64, label %if.then11
    i32 96, label %if.then16
  ]

sw.epilog.if.end19_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else17:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then16, %if.then11, %sw.epilog.if.end19_crit_edge
  %cmdtype.0 = phi i32 [ 0, %if.then11 ], [ 4096, %if.then16 ], [ 8192, %if.else17 ], [ 12288, %sw.epilog.if.end19_crit_edge ]
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  %or = or i32 %cmdtype.0, %resptype.0
  %or21 = or i32 %or, %12
  %current_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 34
  %13 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %current_slot, align 4
  %bus_mode = getelementptr inbounds %struct.mmc_omap_slot, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bus_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp22 = icmp eq i16 %16, 1
  %or25 = or i32 %or21, 64
  %spec.select = select i1 %cmp22, i32 %or25, i32 %or21
  %and28 = shl i32 %9, 8
  %17 = and i32 %and28, 2048
  %18 = or i32 %spec.select, %17
  %data = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 3
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.end19.if.end39_crit_edge, label %land.lhs.true

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %flags34 = getelementptr inbounds %struct.mmc_data, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %flags34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags34, align 4
  %and35 = shl i32 %22, 7
  %23 = and i32 %and35, 32768
  %24 = xor i32 %23, 32768
  %25 = or i32 %24, %18
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %if.end19.if.end39_crit_edge
  %cmdreg.2 = phi i32 [ %18, %if.end19.if.end39_crit_edge ], [ %25, %land.lhs.true ]
  %cmd_abort_timer = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 50
  %call = tail call i32 @mod_timer(ptr noundef %cmd_abort_timer, i32 noundef %add) #8
  %virt_base = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 13
  %27 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %virt_base, align 4
  %reg_shift = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 17
  %29 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_shift, align 4
  %shl40 = shl i32 6, %30
  %add.ptr = getelementptr i8, ptr %28, i32 %shl40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 200) #8, !srcloc !188
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %31 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arg, align 4
  %conv42 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virt_base, align 4
  %35 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_shift, align 4
  %shl45 = shl nuw i32 1, %36
  %add.ptr46 = getelementptr i8, ptr %34, i32 %shl45
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr46, i16 %conv42) #8, !srcloc !188
  %37 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arg, align 4
  %shr = lshr i32 %38, 16
  %conv48 = trunc i32 %shr to i16
  %39 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %virt_base, align 4
  %41 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_shift, align 4
  %shl51 = shl i32 2, %42
  %add.ptr52 = getelementptr i8, ptr %40, i32 %shl51
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr52, i16 %conv48) #8, !srcloc !188
  %43 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %44)
  %cmp54 = icmp eq i32 %44, 38
  %spec.select100 = select i1 %cmp54, i16 19913, i16 19945
  %45 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virt_base, align 4
  %47 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_shift, align 4
  %shl63 = shl i32 5, %48
  %add.ptr64 = getelementptr i8, ptr %46, i32 %shl63
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr64, i16 %spec.select100) #8, !srcloc !188
  %conv65 = trunc i32 %cmdreg.2 to i16
  %49 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virt_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %conv65) #8, !srcloc !188
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_dma_callback(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.mmc_omap_host, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blksz, align 4
  %mul = mul i32 %5, %3
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bytes_xfered, align 4
  %add = add i32 %7, %mul
  store i32 %add, ptr %bytes_xfered, align 4
  %dma_lock.i = getelementptr inbounds %struct.mmc_omap_host, ptr %priv, i32 0, i32 32
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %dma_lock.i) #8
  %brs_received.i = getelementptr inbounds %struct.mmc_omap_host, ptr %priv, i32 0, i32 31
  %8 = ptrtoint ptr %brs_received.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %brs_received.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.critedge.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, 64
  %9 = ptrtoint ptr %brs_received.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.set.i, ptr %brs_received.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_lock.i, i32 noundef %call2.i) #8
  br label %mmc_omap_dma_done.exit

if.then8.critedge.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %dma_lock.i, i32 noundef %call2.i) #8
  tail call fastcc void @mmc_omap_xfer_done(ptr noundef %priv, ptr noundef %1) #8
  br label %mmc_omap_dma_done.exit

mmc_omap_dma_done.exit:                           ; preds = %if.then8.critedge.i, %if.else.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_xfer_done(ptr noundef %host, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_in_use = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 31
  %0 = ptrtoint ptr %dma_in_use to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dma_in_use, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mmc.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 4
  %2 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %dma_tx.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 11
  %dma_rx.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 9
  %c.0.in.i = select i1 %tobool.not.i, ptr %dma_rx.i, ptr %dma_tx.i
  %6 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %c.0.i = load ptr, ptr %c.0.in.i, align 4
  %tobool1.not.i = icmp eq ptr %c.0.i, null
  br i1 %tobool1.not.i, label %if.then.mmc_omap_release_dma.exit_crit_edge, label %if.then2.i

if.then.mmc_omap_release_dma.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_release_dma.exit

if.then2.i:                                       ; preds = %if.then
  %error.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end5.i_crit_edge, label %if.then4.i

if.then2.i.if.end5.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.then2.i
  %9 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c.0.i, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i, label %if.then4.i.dmaengine_terminate_all.exit.i_crit_edge, label %if.then.i.i

if.then4.i.dmaengine_terminate_all.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit.i

if.then.i.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 %12(ptr noundef nonnull %c.0.i) #8
  br label %dmaengine_terminate_all.exit.i

dmaengine_terminate_all.exit.i:                   ; preds = %if.then.i.i, %if.then4.i.dmaengine_terminate_all.exit.i_crit_edge
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 7
  %13 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bytes_xfered.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %dmaengine_terminate_all.exit.i, %if.then2.i.if.end5.i_crit_edge
  %14 = ptrtoint ptr %c.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c.0.i, align 4
  %dev6.i = getelementptr inbounds %struct.dma_device, ptr %15, i32 0, i32 15
  br label %mmc_omap_release_dma.exit

mmc_omap_release_dma.exit:                        ; preds = %if.end5.i, %if.then.mmc_omap_release_dma.exit_crit_edge
  %dev.0.in.i = phi ptr [ %dev6.i, %if.end5.i ], [ %3, %if.then.mmc_omap_release_dma.exit_crit_edge ]
  %16 = ptrtoint ptr %dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %dev.0.i = load ptr, ptr %dev.0.in.i, align 4
  %dma_data_dir.0.i = select i1 %tobool.not.i, i32 2, i32 1
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 12
  %17 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %19 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_len.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.0.i, ptr noundef %18, i32 noundef %20, i32 noundef %dma_data_dir.0.i, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %mmc_omap_release_dma.exit, %entry.if.end_crit_edge
  %data1 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 3
  %21 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %data1, align 4
  %sg_len = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %22 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sg_len, align 4
  %stop = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 8
  %23 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stop, align 4
  %tobool2.not = icmp eq ptr %24, null
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mrq = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 1
  %25 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %mrq, align 4
  %mmc4 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 4
  %26 = ptrtoint ptr %mmc4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc4, align 4
  %current_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 34
  %28 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %current_slot, align 4
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %29, i32 noundef 1)
  %mrq5 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 9
  %30 = ptrtoint ptr %mrq5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mrq5, align 4
  tail call void @mmc_request_done(ptr noundef %27, ptr noundef %31) #8
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %stop_data = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 24
  %32 = ptrtoint ptr %stop_data to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %data, ptr %stop_data, align 4
  %mmc_omap_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 41
  %33 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc_omap_wq, align 4
  %send_stop_work = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 23
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %send_stop_work) #8
  br label %return

return:                                           ; preds = %if.end6, %if.then3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_release_slot(ptr noundef readonly %slot, i32 noundef %clk_enabled) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 10
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %cmp = icmp eq ptr %slot, null
  br i1 %cmp, label %entry.do.body4_crit_edge, label %lor.rhs, !prof !184

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

lor.rhs:                                          ; preds = %entry
  %mmc = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.rhs.do.body4_crit_edge, label %do.end9, !prof !184

lor.rhs.do.body4_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

do.body4:                                         ; preds = %lor.rhs.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #8, !srcloc !193
  unreachable

do.end9:                                          ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_enabled)
  %tobool10.not = icmp eq i32 %clk_enabled, 0
  %clk_timer12 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 38
  br i1 %tobool10.not, label %land.lhs.true.i, label %if.then11

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 10
  %call = tail call i32 @mod_timer(ptr noundef %clk_timer12, i32 noundef %add) #8
  br label %do.body16

land.lhs.true.i:                                  ; preds = %do.end9
  %call13 = tail call i32 @del_timer(ptr noundef %clk_timer12) #8
  %5 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host1, align 4
  %fclk_enabled.i = getelementptr inbounds %struct.mmc_omap_host, ptr %6, i32 0, i32 40
  %7 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %fclk_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.mmc_omap_fclk_offdelay.exit_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.mmc_omap_fclk_offdelay.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_offdelay.exit

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %fclk_freq.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %slot, i32 0, i32 5
  %8 = ptrtoint ptr %fclk_freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fclk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.not.i = icmp eq i32 %9, 0
  br i1 %cmp2.not.i, label %land.lhs.true1.i.mmc_omap_fclk_offdelay.exit_crit_edge, label %cond.false8.i.i

land.lhs.true1.i.mmc_omap_fclk_offdelay.exit_crit_edge: ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_offdelay.exit

cond.false8.i.i:                                  ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %9, 999999999
  %div.i = udiv i32 %sub.i, %9
  %mul.i = shl i32 %div.i, 3
  %sub.i.i = add i32 %mul.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %div.i.i) #8
  br label %mmc_omap_fclk_offdelay.exit

mmc_omap_fclk_offdelay.exit:                      ; preds = %cond.false8.i.i, %land.lhs.true1.i.mmc_omap_fclk_offdelay.exit_crit_edge, %land.lhs.true.i.mmc_omap_fclk_offdelay.exit_crit_edge
  %clk_lock.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 39
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %clk_lock.i) #8
  %fclk_enabled.i112 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 40
  %11 = ptrtoint ptr %fclk_enabled.i112 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i113 = load i8, ptr %fclk_enabled.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i113)
  %cmp5.not.i = icmp sgt i8 %bf.load.i113, -1
  br i1 %cmp5.not.i, label %mmc_omap_fclk_offdelay.exit.mmc_omap_fclk_enable.exit_crit_edge, label %if.then.i114

mmc_omap_fclk_offdelay.exit.mmc_omap_fclk_enable.exit_crit_edge: ; preds = %mmc_omap_fclk_offdelay.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_enable.exit

if.then.i114:                                     ; preds = %mmc_omap_fclk_offdelay.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i = and i8 %bf.load.i113, 127
  %12 = ptrtoint ptr %fclk_enabled.i112 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.clear.i, ptr %fclk_enabled.i112, align 4
  %fclk11.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %fclk11.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fclk11.i, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  br label %mmc_omap_fclk_enable.exit

mmc_omap_fclk_enable.exit:                        ; preds = %if.then.i114, %mmc_omap_fclk_offdelay.exit.mmc_omap_fclk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %clk_lock.i, i32 noundef %call2.i) #8
  br label %do.body16

do.body16:                                        ; preds = %mmc_omap_fclk_enable.exit, %if.then11
  %slot_lock = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 35
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slot_lock) #8
  %nr_slots = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 37
  %15 = ptrtoint ptr %nr_slots to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24115 = icmp sgt i32 %16, 0
  br i1 %cmp24115, label %do.body16.for.body_crit_edge, label %do.body16.for.end_crit_edge

do.body16.for.end_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body16.for.body_crit_edge:                     ; preds = %do.body16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body16.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.body16.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmc_omap_host, ptr %1, i32 0, i32 33, i32 %i.0116
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %cmp26 = icmp eq ptr %18, null
  br i1 %cmp26, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %mrq = getelementptr inbounds %struct.mmc_omap_slot, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mrq, align 4
  %cmp30 = icmp eq ptr %20, null
  br i1 %cmp30, label %lor.lhs.false.for.inc_crit_edge, label %do.body34

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body34:                                        ; preds = %lor.lhs.false
  %next_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 22
  %21 = ptrtoint ptr %next_slot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %next_slot, align 4
  %cmp35.not = icmp eq ptr %22, null
  br i1 %cmp35.not, label %do.end52, label %do.body44, !prof !182

do.body44:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 280, 0\0A.popsection", ""() #8, !srcloc !194
  unreachable

do.end52:                                         ; preds = %do.body34
  %current_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 34
  %23 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_slot, align 4
  %cmp56 = icmp eq ptr %18, %24
  br i1 %cmp56, label %do.body65, label %do.end73, !prof !184

do.body65:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #8, !srcloc !195
  unreachable

do.end73:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %next_slot to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %18, ptr %next_slot, align 4
  %mmc75 = getelementptr inbounds %struct.mmc_omap_slot, ptr %18, i32 0, i32 11
  %26 = ptrtoint ptr %mmc75 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmc75, align 4
  %28 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %mmc, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %call19) #8
  %mmc_omap_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 41
  %29 = ptrtoint ptr %mmc_omap_wq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmc_omap_wq, align 4
  %slot_release_work = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 21
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %slot_release_work) #8
  br label %cleanup81

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.body16.for.end_crit_edge
  %31 = ptrtoint ptr %mmc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %mmc, align 4
  %slot_wq = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 36
  tail call void @__wake_up(ptr noundef %slot_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %call19) #8
  br label %cleanup81

cleanup81:                                        ; preds = %for.end, %do.end73
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_cmd_done(ptr noundef %host, ptr nocapture noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cmd1, align 4
  %cmd_abort_timer = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 20
  %call = tail call i32 @del_timer(ptr noundef %cmd_abort_timer) #8
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end78_crit_edge, label %if.then

entry.if.end78_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then:                                          ; preds = %entry
  %and3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %virt_base62 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 13
  %3 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_base62, align 4
  %reg_shift63 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 17
  %5 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_shift63, align 4
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 16, %6
  %add.ptr = getelementptr i8, ptr %4, i32 %shl
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !189
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_base62, align 4
  %10 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_shift63, align 4
  %shl9 = shl i32 17, %11
  %add.ptr10 = getelementptr i8, ptr %9, i32 %shl9
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #8, !srcloc !189
  %conv12 = zext i16 %12 to i32
  %shl13 = shl nuw i32 %conv12, 16
  %or = or i32 %shl13, %conv
  %resp = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %arrayidx = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base62, align 4
  %16 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_shift63, align 4
  %shl16 = shl i32 18, %17
  %add.ptr17 = getelementptr i8, ptr %15, i32 %shl16
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17) #8, !srcloc !189
  %conv19 = zext i16 %18 to i32
  %19 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %virt_base62, align 4
  %21 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_shift63, align 4
  %shl22 = shl i32 19, %22
  %add.ptr23 = getelementptr i8, ptr %20, i32 %shl22
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr23) #8, !srcloc !189
  %conv25 = zext i16 %23 to i32
  %shl26 = shl nuw i32 %conv25, 16
  %or27 = or i32 %shl26, %conv19
  %arrayidx29 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or27, ptr %arrayidx29, align 4
  %25 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_base62, align 4
  %27 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_shift63, align 4
  %shl32 = shl i32 20, %28
  %add.ptr33 = getelementptr i8, ptr %26, i32 %shl32
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr33) #8, !srcloc !189
  %conv35 = zext i16 %29 to i32
  %30 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt_base62, align 4
  %32 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_shift63, align 4
  %shl38 = shl i32 21, %33
  %add.ptr39 = getelementptr i8, ptr %31, i32 %shl38
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr39) #8, !srcloc !189
  %conv41 = zext i16 %34 to i32
  %shl42 = shl nuw i32 %conv41, 16
  %or43 = or i32 %shl42, %conv35
  %arrayidx45 = getelementptr %struct.mmc_command, ptr %cmd, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or43, ptr %arrayidx45, align 4
  %36 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt_base62, align 4
  %38 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_shift63, align 4
  %shl48 = shl i32 22, %39
  %add.ptr49 = getelementptr i8, ptr %37, i32 %shl48
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr49) #8, !srcloc !189
  %conv51 = zext i16 %40 to i32
  %41 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt_base62, align 4
  %43 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %reg_shift63, align 4
  %shl54 = shl i32 23, %44
  %add.ptr55 = getelementptr i8, ptr %42, i32 %shl54
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr55) #8, !srcloc !189
  %conv57 = zext i16 %45 to i32
  %shl58 = shl nuw i32 %conv57, 16
  %or59 = or i32 %shl58, %conv51
  %46 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or59, ptr %resp, align 4
  br label %if.end78

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %shl64 = shl i32 22, %6
  %add.ptr65 = getelementptr i8, ptr %4, i32 %shl64
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr65) #8, !srcloc !189
  %conv67 = zext i16 %47 to i32
  %48 = ptrtoint ptr %virt_base62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virt_base62, align 4
  %50 = ptrtoint ptr %reg_shift63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %reg_shift63, align 4
  %shl70 = shl i32 23, %51
  %add.ptr71 = getelementptr i8, ptr %49, i32 %shl70
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr71) #8, !srcloc !189
  %conv73 = zext i16 %52 to i32
  %shl74 = shl nuw i32 %conv73, 16
  %or75 = or i32 %shl74, %conv67
  %resp76 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %53 = ptrtoint ptr %resp76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or75, ptr %resp76, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then5, %entry.if.end78_crit_edge
  %data = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 3
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %cmp = icmp eq ptr %55, null
  br i1 %cmp, label %if.end78.if.end87_crit_edge, label %lor.lhs.false

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

lor.lhs.false:                                    ; preds = %if.end78
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %56 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool80.not = icmp eq i32 %57, 0
  br i1 %tobool80.not, label %lor.lhs.false.if.end90_crit_edge, label %if.then85

lor.lhs.false.if.end90_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then85:                                        ; preds = %lor.lhs.false
  %dma_in_use.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 31
  %58 = ptrtoint ptr %dma_in_use.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %dma_in_use.i, align 4
  %59 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i, label %if.then85.if.end.i_crit_edge, label %if.then.i

if.then85.if.end.i_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then85
  %mmc.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 4
  %60 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmc.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 6
  %62 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %dma_tx.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 11
  %dma_rx.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 9
  %c.0.in.i.i = select i1 %tobool.not.i.i, ptr %dma_rx.i.i, ptr %dma_tx.i.i
  %64 = ptrtoint ptr %c.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %c.0.i.i = load ptr, ptr %c.0.in.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %c.0.i.i, null
  br i1 %tobool1.not.i.i, label %if.then.i.mmc_omap_release_dma.exit.i_crit_edge, label %if.then2.i.i

if.then.i.mmc_omap_release_dma.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_release_dma.exit.i

if.then2.i.i:                                     ; preds = %if.then.i
  %error.i.i = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 5
  %65 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool3.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool3.not.i.i, label %if.then2.i.i.if.end5.i.i_crit_edge, label %if.then4.i.i

if.then2.i.i.if.end5.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.then2.i.i
  %67 = ptrtoint ptr %c.0.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %c.0.i.i, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %68, i32 0, i32 47
  %69 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.i, label %if.then4.i.i.dmaengine_terminate_all.exit.i.i_crit_edge, label %if.then.i.i.i

if.then4.i.i.dmaengine_terminate_all.exit.i.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_terminate_all.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call i32 %70(ptr noundef nonnull %c.0.i.i) #8
  br label %dmaengine_terminate_all.exit.i.i

dmaengine_terminate_all.exit.i.i:                 ; preds = %if.then.i.i.i, %if.then4.i.i.dmaengine_terminate_all.exit.i.i_crit_edge
  %bytes_xfered.i.i = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 7
  %71 = ptrtoint ptr %bytes_xfered.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %bytes_xfered.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %dmaengine_terminate_all.exit.i.i, %if.then2.i.i.if.end5.i.i_crit_edge
  %72 = ptrtoint ptr %c.0.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %c.0.i.i, align 4
  %dev6.i.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 15
  br label %mmc_omap_release_dma.exit.i

mmc_omap_release_dma.exit.i:                      ; preds = %if.end5.i.i, %if.then.i.mmc_omap_release_dma.exit.i_crit_edge
  %dev.0.in.i.i = phi ptr [ %dev6.i.i, %if.end5.i.i ], [ %61, %if.then.i.mmc_omap_release_dma.exit.i_crit_edge ]
  %74 = ptrtoint ptr %dev.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %dev.0.i.i = load ptr, ptr %dev.0.in.i.i, align 4
  %dma_data_dir.0.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 12
  %75 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %sg.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %77 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sg_len.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev.0.i.i, ptr noundef %76, i32 noundef %78, i32 noundef %dma_data_dir.0.i.i, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %mmc_omap_release_dma.exit.i, %if.then85.if.end.i_crit_edge
  %79 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %data, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %80 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %sg_len.i, align 4
  %current_slot.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 34
  %81 = ptrtoint ptr %current_slot.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %current_slot.i.i, align 4
  %fclk_freq.i.i = getelementptr inbounds %struct.mmc_omap_slot, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %fclk_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %fclk_freq.i.i, align 4
  %sub.i.i = add i32 %84, 119999999
  %div.i.i = udiv i32 %sub.i.i, %84
  %virt_base.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 13
  %reg_shift.i.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -120000000, i32 %84)
  %cmp74.not.i.i = icmp ugt i32 %84, -120000000
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.end.i.i.while.body.i.i_crit_edge, %if.end.i
  %stat.07.i.i = phi i16 [ 0, %if.end.i ], [ %stat.1.lcssa.i.i, %while.end.i.i.while.body.i.i_crit_edge ]
  %restarts.06.i.i = phi i32 [ 0, %if.end.i ], [ %inc13.i.i, %while.end.i.i.while.body.i.i_crit_edge ]
  %85 = ptrtoint ptr %virt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %virt_base.i.i, align 4
  %87 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg_shift.i.i, align 4
  %shl.i.i = shl i32 4, %88
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 %shl.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -1) #8, !srcloc !188
  %89 = ptrtoint ptr %virt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %virt_base.i.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 12416) #8, !srcloc !188
  br i1 %cmp74.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body8.i.i_crit_edge

while.body.i.i.while.body8.i.i_crit_edge:         ; preds = %while.body.i.i
  br label %while.body8.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body8.i.i:                                  ; preds = %if.end.i.i.while.body8.i.i_crit_edge, %while.body.i.i.while.body8.i.i_crit_edge
  %passes.05.i.i = phi i32 [ %inc.i.i, %if.end.i.i.while.body8.i.i_crit_edge ], [ 0, %while.body.i.i.while.body8.i.i_crit_edge ]
  %91 = ptrtoint ptr %virt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %virt_base.i.i, align 4
  %93 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg_shift.i.i, align 4
  %shl11.i.i = shl i32 4, %94
  %add.ptr12.i.i = getelementptr i8, ptr %92, i32 %shl11.i.i
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i.i) #8, !srcloc !189
  %96 = and i16 %95, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool.not.i6.i = icmp eq i16 %96, 0
  br i1 %tobool.not.i6.i, label %if.end.i.i, label %while.body8.i.i.mmc_omap_abort_xfer.exit_crit_edge

while.body8.i.i.mmc_omap_abort_xfer.exit_crit_edge: ; preds = %while.body8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_abort_xfer.exit

if.end.i.i:                                       ; preds = %while.body8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748) #8
  %inc.i.i = add nuw i32 %passes.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end.i.i.while.body8.i.i_crit_edge

if.end.i.i.while.body8.i.i_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge
  %stat.1.lcssa.i.i = phi i16 [ %stat.07.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %95, %if.end.i.i.while.end.i.i_crit_edge ]
  %inc13.i.i = add nuw nsw i32 %restarts.06.i.i, 1
  %exitcond10.not.i.i = icmp eq i32 %inc13.i.i, 10000
  br i1 %exitcond10.not.i.i, label %while.end.i.i.mmc_omap_abort_xfer.exit_crit_edge, label %while.end.i.i.while.body.i.i_crit_edge

while.end.i.i.while.body.i.i_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i.mmc_omap_abort_xfer.exit_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_abort_xfer.exit

mmc_omap_abort_xfer.exit:                         ; preds = %while.end.i.i.mmc_omap_abort_xfer.exit_crit_edge, %while.body8.i.i.mmc_omap_abort_xfer.exit_crit_edge
  %stat.2.i.i = phi i16 [ %95, %while.body8.i.i.mmc_omap_abort_xfer.exit_crit_edge ], [ %stat.1.lcssa.i.i, %while.end.i.i.mmc_omap_abort_xfer.exit_crit_edge ]
  %98 = ptrtoint ptr %virt_base.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virt_base.i.i, align 4
  %100 = ptrtoint ptr %reg_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %reg_shift.i.i, align 4
  %shl17.i.i = shl i32 4, %101
  %add.ptr18.i.i = getelementptr i8, ptr %99, i32 %shl17.i.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18.i.i, i16 %stat.2.i.i) #8, !srcloc !188
  br label %if.end87

if.end87:                                         ; preds = %mmc_omap_abort_xfer.exit, %if.end78.if.end87_crit_edge
  %mrq = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 1
  %102 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %mrq, align 4
  %mmc88 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 4
  %103 = ptrtoint ptr %mmc88 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmc88, align 4
  %current_slot = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 34
  %105 = ptrtoint ptr %current_slot to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %current_slot, align 4
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %106, i32 noundef 1)
  %mrq89 = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 8
  %107 = ptrtoint ptr %mrq89 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mrq89, align 4
  tail call void @mmc_request_done(ptr noundef %104, ptr noundef %108) #8
  br label %if.end90

if.end90:                                         ; preds = %if.end87, %lor.lhs.false.if.end90_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_omap_xfer_data(ptr nocapture noundef %host, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_bytes_left = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 28
  %0 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_bytes_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  %sg_idx = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 26
  %2 = ptrtoint ptr %sg_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_idx, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %sg_idx, align 4
  %sg_len = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 25
  %4 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %5)
  %cmp2 = icmp eq i32 %inc, %5
  br i1 %cmp2, label %do.body5, label %do.end10, !prof !184

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 670, 0\0A.popsection", ""() #8, !srcloc !196
  unreachable

do.end10:                                         ; preds = %if.then
  %data.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %sg1.i = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg1.i, align 4
  %add.ptr.i = getelementptr %struct.scatterlist, ptr %9, i32 %inc
  %length.i = getelementptr %struct.scatterlist, ptr %9, i32 %inc, i32 2
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %12 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buffer_bytes_left, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !182

do.body2.i.i.i:                                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !192
  unreachable

sg_virt.exit.i:                                   ; preds = %do.end10
  %and.i.i.i = and i32 %14, -4
  %15 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %15) #8
  %offset.i.i = getelementptr %struct.scatterlist, ptr %9, i32 %inc, i32 1
  %16 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %17
  %buffer.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 27
  %18 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %buffer.i, align 4
  %19 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_bytes_left, align 4
  %total_bytes_left.i = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 29
  %21 = ptrtoint ptr %total_bytes_left.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %total_bytes_left.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i = icmp ugt i32 %20, %22
  br i1 %cmp.i, label %if.then.i, label %sg_virt.exit.i.if.end11_crit_edge

sg_virt.exit.i.if.end11_crit_edge:                ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buffer_bytes_left, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %sg_virt.exit.i.if.end11_crit_edge, %entry.if.end11_crit_edge
  %24 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buffer_bytes_left, align 4
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 64)
  %div53.lhs.trunc = add nuw nsw i32 %26, 1
  %div535455 = lshr i32 %div53.lhs.trunc, 1
  %sub18 = sub i32 %25, %26
  %27 = ptrtoint ptr %buffer_bytes_left to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub18, ptr %buffer_bytes_left, align 4
  %total_bytes_left = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 29
  %28 = ptrtoint ptr %total_bytes_left to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %total_bytes_left, align 4
  %sub19 = sub i32 %29, %26
  store i32 %sub19, ptr %total_bytes_left, align 4
  %data = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 3
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bytes_xfered, align 4
  %add20 = add i32 %33, %26
  store i32 %add20, ptr %bytes_xfered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool21.not = icmp eq i32 %write, 0
  %virt_base23 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 13
  %34 = ptrtoint ptr %virt_base23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_base23, align 4
  %reg_shift24 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 17
  %36 = ptrtoint ptr %reg_shift24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg_shift24, align 4
  %shl25 = shl i32 8, %37
  %add.ptr26 = getelementptr i8, ptr %35, i32 %shl25
  %buffer27 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 27
  %38 = ptrtoint ptr %buffer27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buffer27, align 4
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__raw_writesw(ptr noundef %add.ptr26, ptr noundef %39, i32 noundef %div535455) #8
  br label %if.end28

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__raw_readsw(ptr noundef %add.ptr26, ptr noundef %39, i32 noundef %div535455) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then22
  %buffer29 = getelementptr inbounds %struct.mmc_omap_host, ptr %host, i32 0, i32 27
  %40 = ptrtoint ptr %buffer29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer29, align 4
  %add.ptr30 = getelementptr i16, ptr %41, i32 %div535455
  store ptr %add.ptr30, ptr %buffer29, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_cover_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr i8, ptr %t, i32 -20
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cover_tasklet = getelementptr i8, ptr %t, i32 -24
  tail call void @__tasklet_schedule(ptr noundef %cover_tasklet) #8
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_cover_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr i8, ptr %t, i32 88
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %get_cover_state.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %get_cover_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_cover_state.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %mmc_omap_cover_is_open.exit.thread, label %mmc_omap_cover_is_open.exit

mmc_omap_cover_is_open.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mmc11 = getelementptr i8, ptr %t, i32 84
  %4 = ptrtoint ptr %mmc11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc11, align 4
  tail call void @mmc_detect_change(ptr noundef %5, i32 noundef 0) #8
  br label %cleanup

mmc_omap_cover_is_open.exit:                      ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -20
  %mmc.i = getelementptr i8, ptr %t, i32 84
  %6 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmc.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %call.i = tail call i32 %3(ptr noundef %9, i32 noundef %11) #8
  %12 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i, align 4
  tail call void @mmc_detect_change(ptr noundef %13, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mmc_omap_cover_is_open.exit.cleanup_crit_edge, label %if.end

mmc_omap_cover_is_open.exit.cleanup_crit_edge:    ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mmc_omap_cover_is_open.exit
  %14 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmc.i, align 4
  %card = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 37
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %cmp = icmp eq ptr %17, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cover_timer = getelementptr i8, ptr %t, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 50
  %call5 = tail call i32 @mod_timer(ptr noundef %cover_timer, i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %mmc_omap_cover_is_open.exit.cleanup_crit_edge, %mmc_omap_cover_is_open.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_request(ptr noundef %mmc, ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  %slot_lock = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 35
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slot_lock) #8
  %mmc7 = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mmc7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc7, align 4
  %cmp8.not = icmp eq ptr %3, null
  br i1 %cmp8.not, label %if.else, label %do.body10

do.body10:                                        ; preds = %entry
  %mrq = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %4 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq, align 4
  %cmp11.not = icmp eq ptr %5, null
  br i1 %cmp11.not, label %do.end22, label %do.body15, !prof !182

do.body15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/omap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #8, !srcloc !197
  unreachable

do.end22:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %req, ptr %mrq, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %call4) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %7 = ptrtoint ptr %mmc7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mmc, ptr %mmc7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slot_lock, i32 noundef %call4) #8
  tail call fastcc void @mmc_omap_select_slot(ptr noundef %private.i, i32 noundef 1)
  tail call fastcc void @mmc_omap_start_request(ptr noundef %1, ptr noundef %req)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_omap_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %host1 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host1, align 4
  tail call fastcc void @mmc_omap_select_slot(ptr noundef %private.i, i32 noundef 0)
  %2 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host1, align 4
  %fclk.i = getelementptr inbounds %struct.mmc_omap_host, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fclk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %6 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %entry.mmc_omap_calc_divisor.exit_crit_edge, label %if.end.i

entry.mmc_omap_calc_divisor.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_calc_divisor.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %call2.i, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 1) #8
  %div7.i = sdiv i32 %call2.i, %8
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %7)
  %cmp9.i = icmp ugt i32 %div7.i, %7
  %inc.i = zext i1 %cmp9.i to i32
  %spec.select.i = add nuw i32 %8, %inc.i
  %9 = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 250) #8
  %div15.i = sdiv i32 %call2.i, %9
  %fclk_freq.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %fclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div15.i, ptr %fclk_freq.i, align 4
  %bus_width.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %11 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bus_width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp16.i = icmp eq i8 %12, 2
  %or.i = or i32 %9, 32768
  %dsor.1.i = select i1 %cmp16.i, i32 %or.i, i32 %9
  br label %mmc_omap_calc_divisor.exit

mmc_omap_calc_divisor.exit:                       ; preds = %if.end.i, %entry.mmc_omap_calc_divisor.exit_crit_edge
  %retval.0.i = phi i32 [ %dsor.1.i, %if.end.i ], [ 0, %entry.mmc_omap_calc_divisor.exit_crit_edge ]
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %13 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdd, align 4
  %conv = zext i16 %14 to i32
  %vdd3 = getelementptr inbounds %struct.mmc_omap_slot, ptr %private.i, i32 0, i32 1
  %15 = ptrtoint ptr %vdd3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vdd3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp.not = icmp eq i32 %16, %conv
  br i1 %cmp.not, label %mmc_omap_calc_divisor.exit.if.end_crit_edge, label %if.then

mmc_omap_calc_divisor.exit.if.end_crit_edge:      ; preds = %mmc_omap_calc_divisor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %mmc_omap_calc_divisor.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %vdd3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %vdd3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %mmc_omap_calc_divisor.exit.if.end_crit_edge
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %18 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %power_mode, align 2
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %19, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb11
    i8 2, label %sw.bb17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %21 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host1, align 4
  %pdata.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %23 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i, align 4
  %set_power.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %set_power.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_power.i, align 4
  %cmp.not.i = icmp eq ptr %26, null
  br i1 %cmp.not.i, label %sw.bb.if.end.i122_crit_edge, label %if.then.i

sw.bb.if.end.i122_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i122

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vdd, align 4
  %conv10 = zext i16 %28 to i32
  %mmc.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %29 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmc.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 128
  %33 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %private.i, align 4
  %call.i = tail call i32 %26(ptr noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %conv10) #8
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i, %sw.bb.if.end.i122_crit_edge
  %features.i = getelementptr inbounds %struct.mmc_omap_host, ptr %22, i32 0, i32 30
  %35 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %features.i, align 4
  %and.i = and i32 %36, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.i, label %if.end.i122.sw.epilog_crit_edge

if.end.i122.sw.epilog_crit_edge:                  ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4.i:                                       ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  %virt_base13.i = getelementptr inbounds %struct.mmc_omap_host, ptr %22, i32 0, i32 13
  %37 = ptrtoint ptr %virt_base13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt_base13.i, align 4
  %reg_shift14.i = getelementptr inbounds %struct.mmc_omap_host, ptr %22, i32 0, i32 17
  %39 = ptrtoint ptr %reg_shift14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_shift14.i, align 4
  %shl15.i = shl i32 3, %40
  %add.ptr16.i = getelementptr i8, ptr %38, i32 %shl15.i
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i) #8
  %42 = and i16 %41, -2049
  %43 = ptrtoint ptr %virt_base13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %virt_base13.i, align 4
  %45 = ptrtoint ptr %reg_shift14.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %reg_shift14.i, align 4
  %shl23.i = shl i32 3, %46
  %add.ptr24.i = getelementptr i8, ptr %44, i32 %shl23.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24.i, i16 %42) #8, !srcloc !188
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %47 = ptrtoint ptr %host1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %host1, align 4
  %pdata.i124 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %49 = ptrtoint ptr %pdata.i124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdata.i124, align 4
  %set_power.i125 = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %set_power.i125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set_power.i125, align 4
  %cmp.not.i126 = icmp eq ptr %52, null
  br i1 %cmp.not.i126, label %sw.bb11.if.end.i133_crit_edge, label %if.then.i129

sw.bb11.if.end.i133_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i133

if.then.i129:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vdd, align 4
  %conv13 = zext i16 %54 to i32
  %mmc.i127 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %55 = ptrtoint ptr %mmc.i127 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmc.i127, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 128
  %59 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %private.i, align 4
  %call.i128 = tail call i32 %52(ptr noundef %58, i32 noundef %60, i32 noundef 1, i32 noundef %conv13) #8
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.then.i129, %sw.bb11.if.end.i133_crit_edge
  %features.i130 = getelementptr inbounds %struct.mmc_omap_host, ptr %48, i32 0, i32 30
  %61 = ptrtoint ptr %features.i130 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %features.i130, align 4
  %and.i131 = and i32 %62, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool.not.i132 = icmp eq i32 %and.i131, 0
  br i1 %tobool.not.i132, label %if.then4.i138, label %if.end.i133.mmc_omap_set_power.exit139_crit_edge

if.end.i133.mmc_omap_set_power.exit139_crit_edge: ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_set_power.exit139

if.then4.i138:                                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  %virt_base13.i134 = getelementptr inbounds %struct.mmc_omap_host, ptr %48, i32 0, i32 13
  %63 = ptrtoint ptr %virt_base13.i134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virt_base13.i134, align 4
  %reg_shift14.i135 = getelementptr inbounds %struct.mmc_omap_host, ptr %48, i32 0, i32 17
  %65 = ptrtoint ptr %reg_shift14.i135 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %reg_shift14.i135, align 4
  %shl15.i136 = shl i32 3, %66
  %add.ptr16.i137 = getelementptr i8, ptr %64, i32 %shl15.i136
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr16.i137) #8
  %68 = or i16 %67, 2048
  %69 = ptrtoint ptr %virt_base13.i134 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt_base13.i134, align 4
  %71 = ptrtoint ptr %reg_shift14.i135 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reg_shift14.i135, align 4
  %shl11.i = shl i32 3, %72
  %add.ptr12.i = getelementptr i8, ptr %70, i32 %shl11.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i, i16 %68) #8, !srcloc !188
  br label %mmc_omap_set_power.exit139

mmc_omap_set_power.exit139:                       ; preds = %if.then4.i138, %if.end.i133.mmc_omap_set_power.exit139_crit_edge
  %73 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %power_mode, align 2
  %conv15 = zext i8 %74 to i16
  %power_mode16 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %power_mode16 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv15, ptr %power_mode16, align 4
  br label %exit

sw.bb17:                                          ; preds = %if.end
  %clk_lock.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 39
  %call2.i140 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %clk_lock.i) #8
  %fclk_enabled.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 40
  %76 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %bf.load.i = load i8, ptr %fclk_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %cmp5.not.i = icmp slt i8 %bf.load.i, 0
  br i1 %cmp5.not.i, label %sw.bb17.mmc_omap_fclk_enable.exit_crit_edge, label %if.then.i141

sw.bb17.mmc_omap_fclk_enable.exit_crit_edge:      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_fclk_enable.exit

if.then.i141:                                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i = or i8 %bf.load.i, -128
  %77 = ptrtoint ptr %fclk_enabled.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %bf.set.i, ptr %fclk_enabled.i, align 4
  %fclk11.i = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 8
  %78 = ptrtoint ptr %fclk11.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fclk11.i, align 4
  %call10.i = tail call i32 @clk_enable(ptr noundef %79) #8
  br label %mmc_omap_fclk_enable.exit

mmc_omap_fclk_enable.exit:                        ; preds = %if.then.i141, %sw.bb17.mmc_omap_fclk_enable.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %clk_lock.i, i32 noundef %call2.i140) #8
  %or = or i32 %retval.0.i, 2048
  %power_mode18 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %power_mode18 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %power_mode18, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %81)
  %cmp20.not = icmp eq i16 %81, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %mmc_omap_fclk_enable.exit, %if.then4.i, %if.end.i122.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %dsor.0 = phi i32 [ %retval.0.i, %if.end.sw.epilog_crit_edge ], [ %or, %mmc_omap_fclk_enable.exit ], [ %retval.0.i, %if.end.i122.sw.epilog_crit_edge ], [ %retval.0.i, %if.then4.i ]
  %clk_enabled.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ 1, %mmc_omap_fclk_enable.exit ], [ 0, %if.end.i122.sw.epilog_crit_edge ], [ 0, %if.then4.i ]
  %tobool.not = phi i1 [ true, %if.end.sw.epilog_crit_edge ], [ %cmp20.not, %mmc_omap_fclk_enable.exit ], [ true, %if.end.i122.sw.epilog_crit_edge ], [ true, %if.then4.i ]
  %82 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %power_mode, align 2
  %conv25 = zext i8 %83 to i16
  %power_mode26 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %power_mode26 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv25, ptr %power_mode26, align 4
  %bus_mode = getelementptr inbounds %struct.mmc_omap_slot, ptr %private.i, i32 0, i32 3
  %85 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %bus_mode, align 2
  %bus_mode28 = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 3
  %87 = ptrtoint ptr %bus_mode28 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bus_mode28, align 4
  %conv29 = zext i8 %88 to i32
  %89 = zext i8 %88 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %86, i16 %89)
  %cmp30.not = icmp eq i16 %86, %89
  br i1 %cmp30.not, label %sw.epilog.if.end45_crit_edge, label %if.then32

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then32:                                        ; preds = %sw.epilog
  %pdata = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %90 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdata, align 4
  %set_bus_mode = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %91, i32 0, i32 7
  %92 = ptrtoint ptr %set_bus_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %set_bus_mode, align 4
  %cmp33.not = icmp eq ptr %93, null
  br i1 %cmp33.not, label %if.then32.if.end41_crit_edge, label %if.then35

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmc, align 128
  %96 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %private.i, align 4
  %call40 = tail call i32 %93(ptr noundef %95, i32 noundef %97, i32 noundef %conv29) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.then32.if.end41_crit_edge
  %98 = ptrtoint ptr %bus_mode28 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bus_mode28, align 4
  %conv43 = zext i8 %99 to i16
  %100 = ptrtoint ptr %bus_mode to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv43, ptr %bus_mode, align 2
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %sw.epilog.if.end45_crit_edge
  %conv48 = trunc i32 %dsor.0 to i16
  %virt_base = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 13
  %reg_shift = getelementptr inbounds %struct.mmc_omap_host, ptr %1, i32 0, i32 17
  %101 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virt_base, align 4
  %103 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg_shift, align 4
  %shl = shl i32 3, %104
  %add.ptr = getelementptr i8, ptr %102, i32 %shl
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %conv48) #8, !srcloc !188
  %105 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %virt_base, align 4
  %107 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %reg_shift, align 4
  %shl.1 = shl i32 3, %108
  %add.ptr.1 = getelementptr i8, ptr %106, i32 %shl.1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.1, i16 %conv48) #8, !srcloc !188
  %saved_con = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %109 = ptrtoint ptr %saved_con to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv48, ptr %saved_con, align 4
  br i1 %tobool.not, label %if.end45.exit_crit_edge, label %if.then50

if.end45.exit_crit_edge:                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then50:                                        ; preds = %if.end45
  %110 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %virt_base, align 4
  %112 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg_shift, align 4
  %shl53 = shl i32 5, %113
  %add.ptr54 = getelementptr i8, ptr %111, i32 %shl53
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr54, i16 0) #8, !srcloc !188
  %114 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %virt_base, align 4
  %116 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %reg_shift, align 4
  %shl57 = shl i32 4, %117
  %add.ptr58 = getelementptr i8, ptr %115, i32 %shl57
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58, i16 -1) #8, !srcloc !188
  %118 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %virt_base, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %119, i16 128) #8, !srcloc !188
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then50
  %usecs.0143 = phi i32 [ 250, %if.then50 ], [ %dec, %while.body.land.rhs_crit_edge ]
  %120 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %virt_base, align 4
  %122 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %reg_shift, align 4
  %shl67 = shl i32 4, %123
  %add.ptr68 = getelementptr i8, ptr %121, i32 %shl67
  %124 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr68) #8, !srcloc !189
  %125 = and i16 %124, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %cmp71 = icmp eq i16 %125, 0
  br i1 %cmp71, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748) #8
  %dec = add nsw i32 %usecs.0143, -1
  %cmp63 = icmp ugt i32 %usecs.0143, 1
  br i1 %cmp63, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %127 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %virt_base, align 4
  %129 = ptrtoint ptr %reg_shift to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %reg_shift, align 4
  %shl75 = shl i32 4, %130
  %add.ptr76 = getelementptr i8, ptr %128, i32 %shl75
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr76, i16 1) #8, !srcloc !188
  br label %exit

exit:                                             ; preds = %while.end, %if.end45.exit_crit_edge, %mmc_omap_set_power.exit139
  %clk_enabled.1 = phi i32 [ %clk_enabled.0, %while.end ], [ %clk_enabled.0, %if.end45.exit_crit_edge ], [ 0, %mmc_omap_set_power.exit139 ]
  tail call fastcc void @mmc_omap_release_slot(ptr noundef %private.i, i32 noundef %clk_enabled.1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_omap_show_slot_name(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr i8, ptr %dev, i32 2020
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %name = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_omap_show_cover_switch(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata.i = getelementptr i8, ptr %dev, i32 2020
  %0 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata.i, align 4
  %get_cover_state.i = getelementptr inbounds %struct.omap_mmc_slot_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %get_cover_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_cover_state.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mmc_omap_cover_is_open.exit.thread_crit_edge, label %mmc_omap_cover_is_open.exit

entry.mmc_omap_cover_is_open.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_cover_is_open.exit.thread

mmc_omap_cover_is_open.exit:                      ; preds = %entry
  %private.i = getelementptr i8, ptr %dev, i32 1912
  %mmc.i = getelementptr i8, ptr %dev, i32 2016
  %4 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private.i, align 4
  %call.i = tail call i32 %3(ptr noundef %7, i32 noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %mmc_omap_cover_is_open.exit.mmc_omap_cover_is_open.exit.thread_crit_edge, label %mmc_omap_cover_is_open.exit._crit_edge

mmc_omap_cover_is_open.exit._crit_edge:           ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %10

mmc_omap_cover_is_open.exit.mmc_omap_cover_is_open.exit.thread_crit_edge: ; preds = %mmc_omap_cover_is_open.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_omap_cover_is_open.exit.thread

mmc_omap_cover_is_open.exit.thread:               ; preds = %mmc_omap_cover_is_open.exit.mmc_omap_cover_is_open.exit.thread_crit_edge, %entry.mmc_omap_cover_is_open.exit.thread_crit_edge
  br label %10

10:                                               ; preds = %mmc_omap_cover_is_open.exit.thread, %mmc_omap_cover_is_open.exit._crit_edge
  %11 = phi ptr [ @.str.82, %mmc_omap_cover_is_open.exit.thread ], [ @.str.81, %mmc_omap_cover_is_open.exit._crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, ptr noundef nonnull %11)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !160, !162, !163, !165, !167, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/omap.c", i32 869, i32 50}
!2 = !{ptr @__initcall__kmod_omap__281_1511_mmc_omap_driver_init6, !3, !"__initcall__kmod_omap__281_1511_mmc_omap_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/omap.c", i32 1511, i32 1}
!4 = !{ptr @__exitcall_mmc_omap_driver_exit, !3, !"__exitcall_mmc_omap_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description282, !6, !"__UNIQUE_ID_description282", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/omap.c", i32 1512, i32 1}
!7 = !{ptr @__UNIQUE_ID_file283, !8, !"__UNIQUE_ID_file283", i1 false, i1 false}
!8 = !{!"../drivers/mmc/host/omap.c", i32 1513, i32 1}
!9 = !{ptr @__UNIQUE_ID_license284, !8, !"__UNIQUE_ID_license284", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias285, !11, !"__UNIQUE_ID_alias285", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/omap.c", i32 1514, i32 1}
!12 = !{ptr @__UNIQUE_ID_author286, !13, !"__UNIQUE_ID_author286", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/omap.c", i32 1515, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/omap.c", i32 1505, i32 11}
!16 = !{ptr @mmc_omap_driver, !17, !"mmc_omap_driver", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/omap.c", i32 1501, i32 31}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/omap.c", i32 1331, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mmc_omap_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mmc_omap_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/host/omap.c", i32 1335, i32 3}
!28 = !{ptr @mmc_omap_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mmc_omap_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mmc_omap_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/omap.c", i32 1353, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mmc_omap_probe.__key.11, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/omap.c", i32 1354, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mmc_omap_probe.__key.13, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/omap.c", i32 1356, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mmc_omap_probe.__key.15, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/mmc/host/omap.c", i32 1357, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mmc_omap_probe.__key.17, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/omap.c", i32 1359, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mmc_omap_probe.__key.19, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/omap.c", i32 1360, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mmc_omap_probe.__key.21, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/omap.c", i32 1362, i32 2}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @mmc_omap_probe.__key.23, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/omap.c", i32 1363, i32 2}
!53 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mmc_omap_probe.__key.25, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/omap.c", i32 1364, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/omap.c", i32 1374, i32 35}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/omap.c", i32 1379, i32 35}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/omap.c", i32 1388, i32 46}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/omap.c", i32 1397, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mmc_omap_probe._entry.30, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mmc_omap_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/host/omap.c", i32 1400, i32 46}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/omap.c", i32 1411, i32 3}
!72 = !{ptr @mmc_omap_probe._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mmc_omap_probe._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/omap.c", i32 1427, i32 38}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/omap.c", i32 360, i32 3}
!78 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @mmc_omap_start_command._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @mmc_omap_start_command._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/omap.c", i32 600, i32 2}
!83 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mmc_omap_abort_command.__UNIQUE_ID_ddebug273, !82, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/host/omap.c", i32 729, i32 3}
!88 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mmc_omap_irq._entry, !87, !"_entry", i1 false, i1 false}
!91 = !{ptr @mmc_omap_irq._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/omap.c", i32 751, i32 3}
!94 = !{ptr @mmc_omap_irq.__UNIQUE_ID_ddebug274, !93, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mmc/host/omap.c", i32 767, i32 4}
!97 = !{ptr @mmc_omap_irq.__UNIQUE_ID_ddebug275, !96, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/omap.c", i32 778, i32 5}
!100 = !{ptr @mmc_omap_irq.__UNIQUE_ID_ddebug276, !99, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/omap.c", i32 783, i32 5}
!103 = !{ptr @mmc_omap_irq.__UNIQUE_ID_ddebug277, !102, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/omap.c", i32 794, i32 6}
!106 = !{ptr @mmc_omap_irq._entry.51, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mmc_omap_irq._entry_ptr.53, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/omap.c", i32 805, i32 5}
!110 = !{ptr @mmc_omap_irq._entry.54, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mmc_omap_irq._entry_ptr.56, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/host/omap.c", i32 812, i32 5}
!114 = !{ptr @mmc_omap_irq._entry.57, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mmc_omap_irq._entry_ptr.59, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/omap.c", i32 817, i32 4}
!118 = !{ptr @mmc_omap_irq.__UNIQUE_ID_ddebug278, !117, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 3}
!121 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 10}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 16}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 22}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 29}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 37}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 44}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mmc/host/omap.c", i32 699, i32 52}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 3}
!137 = !{ptr @.str.70, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 11}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 18}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 24}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 30}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 38}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mmc/host/omap.c", i32 700, i32 46}
!149 = !{ptr @mmc_omap_report_irq.mmc_omap_status_bits, !150, !"mmc_omap_status_bits", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/omap.c", i32 698, i32 21}
!151 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/mmc/host/omap.c", i32 705, i32 22}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/omap.c", i32 709, i32 24}
!155 = !{ptr @mmc_omap_new_slot.__key, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/mmc/host/omap.c", i32 1271, i32 3}
!157 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @mmc_omap_ops, !159, !"mmc_omap_ops", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/omap.c", i32 1221, i32 34}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mmc/host/omap.c", i32 329, i32 8}
!162 = !{ptr @dev_attr_slot_name, !161, !"dev_attr_slot_name", i1 false, i1 false}
!163 = !{ptr @.str.80, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/mmc/host/omap.c", i32 326, i32 22}
!165 = !{ptr @dev_attr_cover_switch, !166, !"dev_attr_cover_switch", i1 false, i1 false}
!166 = !{!"../drivers/mmc/host/omap.c", i32 317, i32 8}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/host/omap.c", i32 313, i32 61}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/omap.c", i32 314, i32 10}
!171 = !{ptr @mmc_omap_match, !172, !"mmc_omap_match", i1 false, i1 false}
!172 = !{!"../drivers/mmc/host/omap.c", i32 1494, i32 34}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"branch_weights", i32 2000, i32 1}
!183 = !{i64 2154864606, i64 2154865094, i64 2154864643, i64 2154864699, i64 2154864733, i64 2154864757, i64 2154864798, i64 2154864819, i64 2154864847, i64 2154864881}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 2154890399, i64 2154890888, i64 2154890436, i64 2154890492, i64 2154890526, i64 2154890550, i64 2154890591, i64 2154890612, i64 2154890640, i64 2154890674}
!186 = !{i64 2154833778, i64 2154834266, i64 2154833815, i64 2154833871, i64 2154833905, i64 2154833929, i64 2154833970, i64 2154833991, i64 2154834019, i64 2154834053}
!187 = !{i64 2148988871, i64 2148988876, i64 2148988889, i64 2148988933, i64 2148988967, i64 2148988988}
!188 = !{i64 4907049}
!189 = !{i64 4907249}
!190 = !{i64 2154871863, i64 2154872352, i64 2154871900, i64 2154871956, i64 2154871990, i64 2154872014, i64 2154872055, i64 2154872076, i64 2154872104, i64 2154872138}
!191 = !{!"auto-init"}
!192 = !{i64 2154161052, i64 2154161544, i64 2154161089, i64 2154161145, i64 2154161179, i64 2154161203, i64 2154161244, i64 2154161265, i64 2154161293, i64 2154161327}
!193 = !{i64 2154807915, i64 2154808403, i64 2154807952, i64 2154808008, i64 2154808042, i64 2154808066, i64 2154808107, i64 2154808128, i64 2154808156, i64 2154808190}
!194 = !{i64 2154809957, i64 2154810445, i64 2154809994, i64 2154810050, i64 2154810084, i64 2154810108, i64 2154810149, i64 2154810170, i64 2154810198, i64 2154810232}
!195 = !{i64 2154811585, i64 2154812073, i64 2154811622, i64 2154811678, i64 2154811712, i64 2154811736, i64 2154811777, i64 2154811798, i64 2154811826, i64 2154811860}
!196 = !{i64 2154840931, i64 2154841419, i64 2154840968, i64 2154841024, i64 2154841058, i64 2154841082, i64 2154841123, i64 2154841144, i64 2154841172, i64 2154841206}
!197 = !{i64 2154873952, i64 2154874441, i64 2154873989, i64 2154874045, i64 2154874079, i64 2154874103, i64 2154874144, i64 2154874165, i64 2154874193, i64 2154874227}
