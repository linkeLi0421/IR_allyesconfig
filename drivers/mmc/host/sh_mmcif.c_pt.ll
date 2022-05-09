; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sh_mmcif.c_pt.bc'
source_filename = "../drivers/mmc/host/sh_mmcif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sh_mmcif_host = type { ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, %struct.spinlock, i32, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i8, %struct.mutex, i32, ptr, ptr, %struct.completion, i8 }
%struct.sh_mmcif_plat_data = type { i32, i32, i8, i32, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_sh_mmcif__302_1574_sh_mmcif_driver_init6 = internal global ptr @sh_mmcif_driver_init, section ".initcall6.init", align 4
@sh_mmcif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_mmcif_probe, ptr @sh_mmcif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sh_mmcif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mmcif_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sh_mmcif_driver_exit = internal global ptr @sh_mmcif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description303 = internal constant [62 x i8] c"sh_mmcif.description=SuperH on-chip MMC/eMMC interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [40 x i8] c"sh_mmcif.file=drivers/mmc/host/sh_mmcif\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [24 x i8] c"sh_mmcif.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [33 x i8] c"sh_mmcif.alias=platform:sh_mmcif\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [57 x i8] c"sh_mmcif.author=Yusuke Goda <yusuke.goda.sx@renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sh_mmcif\00", [23 x i8] zeroinitializer }, align 32
@sh_mmcif_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,sh-mmcif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sh_mmcif_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_mmcif_suspend, ptr @sh_mmcif_resume, ptr @sh_mmcif_suspend, ptr @sh_mmcif_resume, ptr @sh_mmcif_suspend, ptr @sh_mmcif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_mmcif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@sh_mmcif_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @sh_mmcif_request, ptr null, ptr @sh_mmcif_set_ios, ptr null, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1449, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot get clock: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sh_mmcif_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/host/sh_mmcif.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry_ptr = internal global ptr @sh_mmcif_probe._entry, section ".printk_index", align 4
@sh_mmcif_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&host->timeout_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@sh_mmcif_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&host->timeout_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_mmc:error\00", [19 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request_irq error (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry_ptr.14 = internal global ptr @sh_mmcif_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sh_mmc:int\00", [21 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request_irq error (sh_mmc:int)\0A\00", [32 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry_ptr.18 = internal global ptr @sh_mmcif_probe._entry.16, section ".printk_index", align 4
@sh_mmcif_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&host->thread_lock\00", [45 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1498, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chip version 0x%04x, clock rate %luMHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sh_mmcif_probe._entry_ptr.24 = internal global ptr @sh_mmcif_probe._entry.21, section ".printk_index", align 4
@sh_mmcif_request.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_mmcif_request\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() rejected, state %u\0A\00", [39 x i8] zeroinitializer }, align 32
@sh_mmcif_set_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 828, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported response type.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_mmcif_set_cmd\00", [47 x i8] zeroinitializer }, align 32
@sh_mmcif_set_cmd._entry_ptr = internal global ptr @sh_mmcif_set_cmd._entry, section ".printk_index", align 4
@sh_mmcif_set_cmd._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported bus width.\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_mmcif_set_cmd._entry_ptr.31 = internal global ptr @sh_mmcif_set_cmd._entry.29, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@sh_mmcif_set_ios.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.4, ptr @.str.26, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_mmcif_set_ios\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@sh_mmcif_request_dma.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_mmcif_request_dma\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: got channel TX %p RX %p\0A\00", [35 x i8] zeroinitializer }, align 32
@sh_mmcif_clock_control.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_mmcif_clock_control\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk %u/%u (%u, 0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@sh_mmcif_init_ocr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 1388, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Platform OCR mask is ignored\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_mmcif_init_ocr\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sh_mmcif_init_ocr._entry_ptr = internal global ptr @sh_mmcif_init_ocr._entry, section ".printk_index", align 4
@sh_mmcif_clk_setup.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.4, ptr @.str.43, i8 1, i8 0, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sh_mmcif_clk_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk max/min = %d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@sh_mmcif_timeout_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 1340, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Timeout waiting for %u on CMD%u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mmcif_timeout_work\00", [42 x i8] zeroinitializer }, align 32
@sh_mmcif_timeout_work._entry_ptr = internal global ptr @sh_mmcif_timeout_work._entry, section ".printk_index", align 4
@sh_mmcif_error_manage.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mmcif_error_manage\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ERR HOST_STS1 = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@sh_mmcif_error_manage.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ERR HOST_STS2 = %08x\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sh_mmcif_error_manage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.4, i32 581, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Forced end of command sequence timeout err\0A\00", [52 x i8] zeroinitializer }, align 32
@sh_mmcif_error_manage._entry_ptr = internal global ptr @sh_mmcif_error_manage._entry, section ".printk_index", align 4
@sh_mmcif_error_manage.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.50, i8 0, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Forced end of command sequence\0A\00", [32 x i8] zeroinitializer }, align 32
@sh_mmcif_error_manage._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.4, i32 591, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" CRC error: state %u, wait %u\0A\00", [33 x i8] zeroinitializer }, align 32
@sh_mmcif_error_manage._entry_ptr.53 = internal global ptr @sh_mmcif_error_manage._entry.51, section ".printk_index", align 4
@sh_mmcif_error_manage._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str.4, i32 595, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" Timeout: state %u, wait %u\0A\00", [35 x i8] zeroinitializer }, align 32
@sh_mmcif_error_manage._entry_ptr.56 = internal global ptr @sh_mmcif_error_manage._entry.54, section ".printk_index", align 4
@sh_mmcif_error_manage.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.57, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c" End/Index error: state %u, wait %u\0A\00", [59 x i8] zeroinitializer }, align 32
@sh_mmcif_intr.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.59, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh_mmcif_intr\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IRQ state = 0x%08x incompletely cleared\0A\00", [55 x i8] zeroinitializer }, align 32
@sh_mmcif_intr.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.60, i8 1, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"int err state = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_mmcif_intr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.61, i8 1, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NULL IRQ state = 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@sh_mmcif_intr.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.4, ptr @.str.62, i8 1, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unexpected IRQ 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@sh_mmcif_dma_complete.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.4, ptr @.str.64, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mmcif_dma_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Command completed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: NULL data in DMA completion!\0A\00", [62 x i8] zeroinitializer }, align 32
@sh_mmcif_irqt.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.67, i8 1, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sh_mmcif_irqt\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IRQ thread state %u, wait %u: NULL mrq!\0A\00", [55 x i8] zeroinitializer }, align 32
@sh_mmcif_irqt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 1, i8 52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s(): %d\0A\00", [22 x i8] zeroinitializer }, align 32
@sh_mmcif_irqt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sh_mmcif_end_cmd.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.4, ptr @.str.70, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_mmcif_end_cmd\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMD%d error %d\0A\00", [16 x i8] zeroinitializer }, align 32
@sh_mmcif_end_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.4, i32 1151, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Error IRQ while waiting for DMA completion!\0A\00", [51 x i8] zeroinitializer }, align 32
@sh_mmcif_end_cmd._entry_ptr = internal global ptr @sh_mmcif_end_cmd._entry, section ".printk_index", align 4
@sh_mmcif_end_cmd._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.4, i32 1155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA timeout!\0A\00", [18 x i8] zeroinitializer }, align 32
@sh_mmcif_end_cmd._entry_ptr.74 = internal global ptr @sh_mmcif_end_cmd._entry.72, section ".printk_index", align 4
@sh_mmcif_end_cmd._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.69, ptr @.str.4, i32 1159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"wait_for_completion_...() error %ld!\0A\00", [58 x i8] zeroinitializer }, align 32
@sh_mmcif_end_cmd._entry_ptr.77 = internal global ptr @sh_mmcif_end_cmd._entry.75, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.80, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mmcif_start_dma_rx\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): mapped %d -> %d, cookie %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sh_mmcif_start_dma_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 329, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DMA failed: %d, falling back to PIO\0A\00", [59 x i8] zeroinitializer }, align 32
@sh_mmcif_start_dma_rx._entry_ptr = internal global ptr @sh_mmcif_start_dma_rx._entry, section ".printk_index", align 4
@sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.82, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(): desc %p, cookie %d, sg[%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.80, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mmcif_start_dma_tx\00", [42 x i8] zeroinitializer }, align 32
@sh_mmcif_start_dma_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.83, ptr @.str.4, i32 379, ptr @.str.41, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sh_mmcif_start_dma_tx._entry_ptr = internal global ptr @sh_mmcif_start_dma_tx._entry, section ".printk_index", align 4
@sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.4, ptr @.str.84, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(): desc %p, cookie %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sh_mmcif_data_trans._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.4, i32 906, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unsupported CMD%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_mmcif_data_trans\00", [44 x i8] zeroinitializer }, align 32
@sh_mmcif_data_trans._entry_ptr = internal global ptr @sh_mmcif_data_trans._entry, section ".printk_index", align 4
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@sh_mmcif_mread_block.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.4, ptr @.str.68, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_mmcif_mread_block\00", [43 x i8] zeroinitializer }, align 32
@sh_mmcif_read_block.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.4, ptr @.str.68, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_mmcif_read_block\00", [44 x i8] zeroinitializer }, align 32
@sh_mmcif_mwrite_block.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.90, ptr @.str.4, ptr @.str.68, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sh_mmcif_mwrite_block\00", [42 x i8] zeroinitializer }, align 32
@sh_mmcif_write_block.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.4, ptr @.str.68, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_mmcif_write_block\00", [43 x i8] zeroinitializer }, align 32
@sh_mmcif_stop_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.4, i32 963, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported stop cmd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_mmcif_stop_cmd\00", [46 x i8] zeroinitializer }, align 32
@sh_mmcif_stop_cmd._entry_ptr = internal global ptr @sh_mmcif_stop_cmd._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.94 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 7, i64 21, i64 29]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 9, i64 10]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 7, i64 55]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 17, i64 18, i64 24, i64 25]
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"sh_mmcif_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1563, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1567, i32 11 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"sh_mmcif_of_match\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 252, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"sh_mmcif_dev_pm_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1559, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1427, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"sh_mmcif_ops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1078, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1449, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1466, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1471, i32 38 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1475, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1481, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1483, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1488, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1496, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 979, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 828, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 846, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1036, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 438, i32 41 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 441, i32 41 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 445, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 523, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1388, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1024, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1339, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 567, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 568, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 580, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 585, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 590, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 594, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 598, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1300, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1305, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1309, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1315, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 278, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 280, i32 6 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1197, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1235, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1102, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1150, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1155, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 1158, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 87, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 312, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 328, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 333, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 362, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 378, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 383, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 906, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1169, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 688, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 646, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 768, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 726, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.407 = private constant [31 x i8] c"../drivers/mmc/host/sh_mmcif.c\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.407, i32 963, i32 3 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_sh_mmcif_driver_exit, ptr @__initcall__kmod_sh_mmcif__302_1574_sh_mmcif_driver_init6, ptr @sh_mmcif_data_trans._entry, ptr @sh_mmcif_data_trans._entry_ptr, ptr @sh_mmcif_driver_exit, ptr @sh_mmcif_end_cmd._entry, ptr @sh_mmcif_end_cmd._entry.72, ptr @sh_mmcif_end_cmd._entry.75, ptr @sh_mmcif_end_cmd._entry_ptr, ptr @sh_mmcif_end_cmd._entry_ptr.74, ptr @sh_mmcif_end_cmd._entry_ptr.77, ptr @sh_mmcif_error_manage._entry, ptr @sh_mmcif_error_manage._entry.51, ptr @sh_mmcif_error_manage._entry.54, ptr @sh_mmcif_error_manage._entry_ptr, ptr @sh_mmcif_error_manage._entry_ptr.53, ptr @sh_mmcif_error_manage._entry_ptr.56, ptr @sh_mmcif_init_ocr._entry, ptr @sh_mmcif_init_ocr._entry_ptr, ptr @sh_mmcif_probe._entry, ptr @sh_mmcif_probe._entry.12, ptr @sh_mmcif_probe._entry.16, ptr @sh_mmcif_probe._entry.21, ptr @sh_mmcif_probe._entry_ptr, ptr @sh_mmcif_probe._entry_ptr.14, ptr @sh_mmcif_probe._entry_ptr.18, ptr @sh_mmcif_probe._entry_ptr.24, ptr @sh_mmcif_set_cmd._entry, ptr @sh_mmcif_set_cmd._entry.29, ptr @sh_mmcif_set_cmd._entry_ptr, ptr @sh_mmcif_set_cmd._entry_ptr.31, ptr @sh_mmcif_start_dma_rx._entry, ptr @sh_mmcif_start_dma_rx._entry_ptr, ptr @sh_mmcif_start_dma_tx._entry, ptr @sh_mmcif_start_dma_tx._entry_ptr, ptr @sh_mmcif_stop_cmd._entry, ptr @sh_mmcif_stop_cmd._entry_ptr, ptr @sh_mmcif_timeout_work._entry, ptr @sh_mmcif_timeout_work._entry_ptr, ptr @sh_mmcif_driver, ptr @.str, ptr @sh_mmcif_of_match, ptr @sh_mmcif_dev_pm_ops, ptr @sh_mmcif_probe.__key, ptr @.str.1, ptr @sh_mmcif_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sh_mmcif_probe.__key.7, ptr @.str.8, ptr @sh_mmcif_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @sh_mmcif_probe.__key.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @init_completion.__key, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_set_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_set_cmd._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_init_ocr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_timeout_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_error_manage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_error_manage._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_error_manage._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_end_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_end_cmd._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_end_cmd._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_start_dma_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_start_dma_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_data_trans._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_mmcif_stop_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mmcif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mmcif_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sh_mmcif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mmcif_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mmcif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %call2 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @mmc_alloc_host(i32 noundef 368, ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %call13 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.err_host_crit_edge, label %if.end16

if.end12.err_host_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_host

if.end16:                                         ; preds = %if.end12
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 70
  %3 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %private.i, align 4
  %addr = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %addr, align 4
  %timeout = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1000, ptr %timeout, align 4
  %ccs_enable = getelementptr inbounds %struct.sh_mmcif_host, ptr %private.i, i32 0, i32 19
  %6 = ptrtoint ptr %ccs_enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ccs_enable, align 1
  %clk_ctrl2_enable = getelementptr inbounds %struct.sh_mmcif_host, ptr %private.i, i32 0, i32 20
  %7 = ptrtoint ptr %clk_ctrl2_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %clk_ctrl2_enable, align 2
  %pd20 = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1
  %8 = ptrtoint ptr %pd20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %pd20, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sh_mmcif_probe.__key, i16 noundef signext 3) #7
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sh_mmcif_ops, ptr %ops, align 4
  %10 = ptrtoint ptr %pd20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd20, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data.i, align 8
  %14 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private.i, align 4
  %call.i = tail call i32 @mmc_regulator_get_supply(ptr noundef %15) #7
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end16.sh_mmcif_init_ocr.exit_crit_edge, label %if.end.i

if.end16.sh_mmcif_init_ocr.exit_crit_edge:        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_init_ocr.exit

if.end.i:                                         ; preds = %if.end16
  %ocr_avail.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ocr_avail.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i = icmp eq i32 %17, 0
  %ocr.i = getelementptr inbounds %struct.sh_mmcif_plat_data, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %ocr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ocr.i, align 4
  br i1 %tobool4.not.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ocr_avail.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ocr_avail.i, align 64
  br label %sh_mmcif_init_ocr.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not.i = icmp eq i32 %19, 0
  br i1 %tobool8.not.i, label %if.else.i.sh_mmcif_init_ocr.exit_crit_edge, label %do.end.i

if.else.i.sh_mmcif_init_ocr.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_init_ocr.exit

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %15, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.39) #10
  br label %sh_mmcif_init_ocr.exit

sh_mmcif_init_ocr.exit:                           ; preds = %do.end.i, %if.else.i.sh_mmcif_init_ocr.exit_crit_edge, %if.then5.i, %if.end16.sh_mmcif_init_ocr.exit_crit_edge
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 16
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps, align 32
  %or = or i32 %24, 514
  store i32 %or, ptr %caps, align 32
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 17
  %25 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caps2, align 4
  %or22 = or i32 %26, 2621440
  store i32 %or22, ptr %caps2, align 4
  %max_busy_timeout = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 26
  %27 = ptrtoint ptr %max_busy_timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 10000, ptr %max_busy_timeout, align 4
  %tobool23.not = icmp eq ptr %1, null
  br i1 %tobool23.not, label %sh_mmcif_init_ocr.exit.if.end30_crit_edge, label %land.lhs.true

sh_mmcif_init_ocr.exit.if.end30_crit_edge:        ; preds = %sh_mmcif_init_ocr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

land.lhs.true:                                    ; preds = %sh_mmcif_init_ocr.exit
  %caps24 = getelementptr inbounds %struct.sh_mmcif_plat_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %caps24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %caps24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end30_crit_edge, label %if.then26

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %or29 = or i32 %29, %or
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or29, ptr %caps, align 32
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true.if.end30_crit_edge, %sh_mmcif_init_ocr.exit.if.end30_crit_edge
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 21
  %31 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 32, ptr %max_segs, align 4
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 24
  %32 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 512, ptr %max_blk_size, align 4
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 23
  %33 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 131072, ptr %max_req_size, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 25
  %34 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %max_blk_count, align 128
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 0, i32 20
  %35 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 131072, ptr %max_seg_size, align 16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call35, ptr %clk, align 4
  %cmp.i214 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %call35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %38) #10
  br label %err_host

if.end44:                                         ; preds = %if.end30
  %call.i215 = tail call i32 @clk_prepare(ptr noundef %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %if.end.i217, label %if.end44.clk_prepare_enable.exit_crit_edge

if.end44.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i217:                                      ; preds = %if.end44
  %call1.i = tail call i32 @clk_enable(ptr noundef %call35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i217.if.end50_crit_edge, label %if.then3.i

if.end.i217.if.end50_crit_edge:                   ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then3.i:                                       ; preds = %if.end.i217
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call35) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end44.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i215, %if.end44.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp47 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp47, label %clk_prepare_enable.exit.err_host_crit_edge, label %clk_prepare_enable.exit.if.end50_crit_edge

clk_prepare_enable.exit.if.end50_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

clk_prepare_enable.exit.err_host_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_host

if.end50:                                         ; preds = %clk_prepare_enable.exit.if.end50_crit_edge, %if.end.i217.if.end50_crit_edge
  tail call fastcc void @sh_mmcif_clk_setup(ptr noundef %private.i)
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %power = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %39 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %power, align 4
  %call.i218 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp52 = icmp slt i32 %call.i218, 0
  br i1 %cmp52, label %if.end50.err_clk_crit_edge, label %do.body57

if.end50.err_clk_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

do.body57:                                        ; preds = %if.end50
  %timeout_work = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  tail call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #7
  %40 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @sh_mmcif_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry64 = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %41 = ptrtoint ptr %entry64 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry64, ptr %entry64, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry64, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @sh_mmcif_timeout_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 0, i32 7, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @sh_mmcif_probe.__key.9) #7
  tail call fastcc void @sh_mmcif_sync_reset(ptr noundef %private.i)
  %44 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp77 = icmp slt i32 %call2, 0
  br i1 %cmp77, label %cond.true, label %do.body57.cond.end_crit_edge

do.body57.cond.end_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.body57
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i219 = icmp eq ptr %47, null
  br i1 %tobool.not.i219, label %if.end.i220, label %cond.true.cond.end_crit_edge

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end.i220:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i220, %cond.true.cond.end_crit_edge, %do.body57.cond.end_crit_edge
  %cond = phi ptr [ @.str.11, %do.body57.cond.end_crit_edge ], [ %49, %if.end.i220 ], [ %47, %cond.true.cond.end_crit_edge ]
  %call81 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call, ptr noundef nonnull @sh_mmcif_intr, ptr noundef nonnull @sh_mmcif_irqt, i32 noundef 0, ptr noundef %cond, ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end87, label %do.end86

do.end86:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %cond) #10
  br label %err_clk

if.end87:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp89 = icmp sgt i32 %call2, -1
  br i1 %cmp89, label %if.then91, label %if.end87.do.body101_crit_edge

if.end87.do.body101_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

if.then91:                                        ; preds = %if.end87
  %call93 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call2, ptr noundef nonnull @sh_mmcif_intr, ptr noundef nonnull @sh_mmcif_irqt, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %private.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.then91.do.body101_crit_edge, label %do.end98

if.then91.do.body101_crit_edge:                   ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

do.end98:                                         ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %err_clk

do.body101:                                       ; preds = %if.then91.do.body101_crit_edge, %if.end87.do.body101_crit_edge
  %thread_lock = getelementptr inbounds %struct.mmc_host, ptr %call10, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %thread_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @sh_mmcif_probe.__key.19) #7
  %call104 = tail call i32 @mmc_add_host(ptr noundef nonnull %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %do.body101.err_clk_crit_edge, label %if.end108

do.body101.err_clk_crit_edge:                     ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end108:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %call109 = tail call i32 @dev_pm_qos_expose_latency_limit(ptr noundef %dev1, i32 noundef 100) #7
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr, align 4
  %add.ptr.i222 = getelementptr i8, ptr %51, i32 124
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #7, !srcloc !227
  %and = and i32 %52, 65535
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  %call116 = tail call i32 @clk_get_rate(ptr noundef %54) #7
  %div117 = udiv i32 %call116, 1000000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %and, i32 noundef %div117) #10
  %call.i223 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  %55 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %56) #7
  tail call void @clk_unprepare(ptr noundef %56) #7
  br label %cleanup

err_clk:                                          ; preds = %do.body101.err_clk_crit_edge, %do.end98, %do.end86, %if.end50.err_clk_crit_edge
  %ret.0 = phi i32 [ %call.i218, %if.end50.err_clk_crit_edge ], [ %call81, %do.end86 ], [ %call93, %do.end98 ], [ %call104, %do.body101.err_clk_crit_edge ]
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %58) #7
  tail call void @clk_unprepare(ptr noundef %58) #7
  %call.i224 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %err_host

err_host:                                         ; preds = %err_clk, %clk_prepare_enable.exit.err_host_crit_edge, %if.then38, %if.end12.err_host_crit_edge
  %ret.1 = phi i32 [ %call13, %if.end12.err_host_crit_edge ], [ %38, %if.then38 ], [ %retval.0.i, %clk_prepare_enable.exit.err_host_crit_edge ], [ %ret.0, %err_clk ]
  tail call void @mmc_free_host(ptr noundef nonnull %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %err_host, %if.end108, %if.end9.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then7 ], [ %ret.1, %err_host ], [ %call104, %if.end108 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mmcif_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dying = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dying to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dying, align 2
  %clk = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i20 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  tail call void @dev_pm_qos_hide_latency_limit(ptr noundef %dev) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @mmc_remove_host(ptr noundef %6) #7
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !226
  %timeout_work = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 14
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #7
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @mmc_free_host(ptr noundef %12) #7
  %call.i21 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_clk_setup(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_max, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %clk18 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 3
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp62 = icmp ugt i32 %5, 2
  br i1 %cmp62, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %f_min_old.063 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %clk18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk18, align 4
  %div60 = lshr i32 %f_min_old.063, 1
  %call = tail call i32 @clk_round_rate(ptr noundef %7, i32 noundef %div60) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %f_min_old.063)
  %cmp5 = icmp ne i32 %call, %f_min_old.063
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp ugt i32 %call, 2
  %or.cond = and i1 %cmp5, %cmp
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %f_min.1 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ]
  %clkdiv_map = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 22
  %8 = ptrtoint ptr %clkdiv_map to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1023, ptr %clkdiv_map, align 4
  %div858 = lshr i32 %5, 1
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %f_max10 = getelementptr inbounds %struct.mmc_host, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %f_max10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div858, ptr %f_max10, align 8
  %12 = load i32, ptr %clkdiv_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #7, !range !228
  %sub.i = sub nuw nsw i32 32, %13
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %div1459 = lshr i32 %f_min.1, %cond.i
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %clk18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk18, align 4
  %call19 = tail call i32 @clk_get_rate(ptr noundef %15) #7
  %div2056 = lshr i32 %call19, 1
  %16 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %host, align 4
  %f_max22 = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %f_max22 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div2056, ptr %f_max22, align 8
  %div2357 = lshr i32 %call19, 9
  br label %do.body

do.body:                                          ; preds = %if.else, %for.end
  %div1459.sink = phi i32 [ %div1459, %for.end ], [ %div2357, %if.else ]
  %19 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %host, align 4
  %f_min16 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %f_min16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1459.sink, ptr %f_min16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_clk_setup.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_clk_setup, %if.then31)) #7
          to label %do.end [label %if.then31], !srcloc !229

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %host, align 4
  %f_max33 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %f_max33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %f_max33, align 8
  %f_min35 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %f_min35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f_min35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_clk_setup.__UNIQUE_ID_ddebug292, ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %25, i32 noundef %27) #7
  br label %do.end

do.end:                                           ; preds = %if.then31, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mmcif_timeout_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -88
  %mrq1 = getelementptr i8, ptr %work, i32 -84
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %pd = getelementptr i8, ptr %work, i32 -80
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %dying = getelementptr i8, ptr %work, i32 -66
  %4 = ptrtoint ptr %dying to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dying, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %entry
  %lock = getelementptr i8, ptr %work, i32 -52
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then11, label %do.end16

if.then11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  br label %cleanup

do.end16:                                         ; preds = %do.body3
  %wait_for = getelementptr i8, ptr %work, i32 -4
  %8 = ptrtoint ptr %wait_for to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wait_for, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.44, i32 noundef %9, i32 noundef %13) #10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %15 = ptrtoint ptr %wait_for to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wait_for, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.body28 [
    i32 1, label %sw.bb
    i32 8, label %sw.bb22
    i32 2, label %do.end16.sw.bb25_crit_edge
    i32 3, label %do.end16.sw.bb25_crit_edge62
    i32 4, label %do.end16.sw.bb25_crit_edge63
    i32 5, label %do.end16.sw.bb25_crit_edge64
    i32 6, label %do.end16.sw.bb25_crit_edge65
    i32 7, label %do.end16.sw.bb25_crit_edge66
  ]

do.end16.sw.bb25_crit_edge66:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

do.end16.sw.bb25_crit_edge65:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

do.end16.sw.bb25_crit_edge64:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

do.end16.sw.bb25_crit_edge63:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

do.end16.sw.bb25_crit_edge62:                     ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

do.end16.sw.bb25_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb25

sw.bb:                                            ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %add.ptr)
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call20, ptr %error, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %add.ptr)
  %stop = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop, align 4
  %error24 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %error24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call23, ptr %error24, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.end16.sw.bb25_crit_edge, %do.end16.sw.bb25_crit_edge62, %do.end16.sw.bb25_crit_edge63, %do.end16.sw.bb25_crit_edge64, %do.end16.sw.bb25_crit_edge65, %do.end16.sw.bb25_crit_edge66
  %call26 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %add.ptr)
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %error27 = getelementptr inbounds %struct.mmc_data, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %error27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call26, ptr %error27, align 4
  br label %sw.epilog

do.body28:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1365, 0\0A.popsection", ""() #7, !srcloc !231
  unreachable

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb22, %sw.bb
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 4
  %28 = ptrtoint ptr %wait_for to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %wait_for, align 4
  %29 = ptrtoint ptr %mrq1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %mrq1, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_request_done(ptr noundef %31, ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_sync_reset(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr, align 4
  %add.ptr.i18 = getelementptr i8, ptr %4, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 -2147483648) #7, !srcloc !226
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %add.ptr.i19 = getelementptr i8, ptr %6, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 0) #7, !srcloc !226
  %ccs_enable = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 19
  %7 = ptrtoint ptr %ccs_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ccs_enable, align 1, !range !230
  %clk_ctrl2_enable = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 20
  %9 = ptrtoint ptr %clk_ctrl2_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %clk_ctrl2_enable, align 2, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %entry.if.end6_crit_edge, label %if.then4

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr, align 4
  %add.ptr.i20 = getelementptr i8, ptr %12, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 252641280) #7, !srcloc !226
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %and = and i32 %2, 17760256
  %or = or i32 %and, 15
  %spec.select = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 24
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #7, !srcloc !227
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %or9 = or i32 %spec.select, %16
  %or.i = or i32 %or9, 12272
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr, align 4
  %add.ptr3.i = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %17) #7, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr.i23 = getelementptr i8, ptr %21, i32 28
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %23 = or i32 %22, 256
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %addr, align 4
  %add.ptr3.i25 = getelementptr i8, ptr %25, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i25, i32 %23) #7, !srcloc !226
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mmcif_intr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 9
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %add.ptr.i126 = getelementptr i8, ptr %6, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #7, !srcloc !227
  %ccs_enable = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 19
  %8 = ptrtoint ptr %ccs_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ccs_enable, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %and6 = and i32 %7, %4
  %neg7 = xor i32 %and6, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i127 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %neg7) #7, !srcloc !226
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %neg7, 537395232
  %add.ptr.i128 = getelementptr i8, ptr %11, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %or) #7, !srcloc !226
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %and8 = and i32 %4, 133418815
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %neg.i = xor i32 %and8, -1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr, align 4
  %add.ptr.i129 = getelementptr i8, ptr %13, i32 68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #7, !srcloc !227
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %and.i = and i32 %15, %neg.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  %add.ptr3.i = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %16) #7, !srcloc !226
  %and9 = and i32 %4, -133418816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end18_crit_edge, label %do.body

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_intr, %if.then16)) #7
          to label %if.end18 [label %if.then16], !srcloc !229

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_intr.__UNIQUE_ID_ddebug298, ptr noundef %dev1, ptr noundef nonnull @.str.59, i32 noundef %4) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body, %if.end.if.end18_crit_edge
  %19 = and i32 %4, -133365761
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %if.end18.if.end40_crit_edge, label %if.then23

if.end18.if.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 6
  %21 = ptrtoint ptr %sd_error to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sd_error, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_intr, %if.then36)) #7
          to label %if.end40 [label %if.then36], !srcloc !229

if.then36:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_intr.__UNIQUE_ID_ddebug299, ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %4) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.then23, %if.end18.if.end40_crit_edge
  %and41 = and i32 %4, -50331649
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body72, label %if.then43

if.then43:                                        ; preds = %if.end40
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 1
  %22 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mrq, align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %do.body46, label %if.then43.if.end62_crit_edge

if.then43.if.end62_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.body46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_intr, %if.then58)) #7
          to label %if.end62 [label %if.then58], !srcloc !229

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_intr.__UNIQUE_ID_ddebug300, ptr noundef %dev1, ptr noundef nonnull @.str.61, i32 noundef %4) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %do.body46, %if.then43.if.end62_crit_edge
  %dma_active = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 26
  %24 = ptrtoint ptr %dma_active to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dma_active, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool63.not = icmp eq i8 %25, 0
  br i1 %tobool63.not, label %if.end62.cleanup_crit_edge, label %if.else65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else65:                                        ; preds = %if.end62
  %sd_error66 = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 6
  %26 = ptrtoint ptr %sd_error66 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %sd_error66, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool67.not = icmp eq i8 %27, 0
  br i1 %tobool67.not, label %if.else65.cleanup_crit_edge, label %if.then68

if.else65.cleanup_crit_edge:                      ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %if.else65
  %28 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mrq, align 4
  %30 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_dma_complete.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_intr, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !229

if.then.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_dma_complete.__UNIQUE_ID_ddebug276, ptr noundef %dev2.i, ptr noundef nonnull @.str.64) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then68
  %tobool5.not.i = icmp eq ptr %29, null
  br i1 %tobool5.not.i, label %do.end.i.do.end24.i_crit_edge, label %lor.rhs.i

do.end.i.do.end24.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

lor.rhs.i:                                        ; preds = %do.end.i
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %tobool6.not.i = icmp eq ptr %33, null
  br i1 %tobool6.not.i, label %lor.rhs.i.do.end24.i_crit_edge, label %if.end41.i, !prof !236

lor.rhs.i.do.end24.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

do.end24.i:                                       ; preds = %lor.rhs.i.do.end24.i_crit_edge, %do.end.i.do.end24.i_crit_edge
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end24.i.dev_name.exit.i_crit_edge

do.end24.i.dev_name.exit.i_crit_edge:             ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end24.i.dev_name.exit.i_crit_edge
  %retval.0.i49.i = phi ptr [ %37, %if.end.i.i ], [ %35, %do.end24.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i49.i) #7
  br label %cleanup

if.end41.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_complete.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 25
  tail call void @complete(ptr noundef %dma_complete.i) #7
  br label %cleanup

do.body72:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_intr, %if.then84)) #7
          to label %cleanup [label %if.then84], !srcloc !229

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_intr.__UNIQUE_ID_ddebug301, ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %if.end41.i, %dev_name.exit.i, %if.else65.cleanup_crit_edge, %if.end62.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end62.cleanup_crit_edge ], [ 1, %if.then84 ], [ 1, %if.else65.cleanup_crit_edge ], [ 1, %dev_name.exit.i ], [ 1, %if.end41.i ], [ 1, %do.body72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mmcif_irqt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %lock = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %wait_for = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 13
  %2 = ptrtoint ptr %wait_for to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wait_for, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  %timeout_work = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 14
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work) #7
  %thread_lock = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %thread_lock, i32 noundef 0) #7
  %mrq8 = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %mrq8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mrq8, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body9, label %if.end20

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_irqt.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_irqt, %if.then15)) #7
          to label %cleanup140 [label %if.then15], !srcloc !229

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %8 = ptrtoint ptr %wait_for to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wait_for, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_irqt.__UNIQUE_ID_ddebug295, ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %7, i32 noundef %9) #7
  br label %cleanup140

if.end20:                                         ; preds = %entry
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %3, label %do.body88 [
    i32 0, label %if.end20.cleanup140_crit_edge
    i32 1, label %sw.epilog
    i32 2, label %sw.bb25
    i32 4, label %sw.bb28
    i32 3, label %sw.bb31
    i32 5, label %sw.bb34
    i32 8, label %sw.bb37
    i32 6, label %if.end20.sw.bb63_crit_edge
    i32 7, label %if.end20.sw.bb63_crit_edge217
  ]

if.end20.sw.bb63_crit_edge217:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb63

if.end20.sw.bb63_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb63

if.end20.cleanup140_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup140

sw.bb25:                                          ; preds = %if.end20
  %call26 = tail call fastcc zeroext i1 @sh_mmcif_mread_block(ptr noundef %dev_id)
  br i1 %call26, label %sw.bb25.if.then95_crit_edge, label %sw.bb25.if.end99_crit_edge

sw.bb25.if.end99_crit_edge:                       ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

sw.bb25.if.then95_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

sw.bb28:                                          ; preds = %if.end20
  %call29 = tail call fastcc zeroext i1 @sh_mmcif_read_block(ptr noundef %dev_id)
  br i1 %call29, label %sw.bb28.if.then95_crit_edge, label %sw.bb28.if.end99_crit_edge

sw.bb28.if.end99_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

sw.bb28.if.then95_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

sw.bb31:                                          ; preds = %if.end20
  %call32 = tail call fastcc zeroext i1 @sh_mmcif_mwrite_block(ptr noundef %dev_id)
  br i1 %call32, label %sw.bb31.if.then95_crit_edge, label %sw.bb31.if.end99_crit_edge

sw.bb31.if.end99_crit_edge:                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

sw.bb31.if.then95_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

sw.bb34:                                          ; preds = %if.end20
  %call35 = tail call fastcc zeroext i1 @sh_mmcif_write_block(ptr noundef %dev_id)
  br i1 %call35, label %sw.bb34.if.then95_crit_edge, label %sw.bb34.if.end99_crit_edge

sw.bb34.if.end99_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

sw.bb34.if.then95_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

sw.bb37:                                          ; preds = %if.end20
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 6
  %11 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool38.not = icmp eq i8 %12, 0
  br i1 %tobool38.not, label %if.end59, label %if.then39

if.then39:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %dev_id)
  %stop = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stop, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call40, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_irqt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_irqt, %if.then53)) #7
          to label %if.end99 [label %if.then53], !srcloc !229

if.then53:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop, align 4
  %error55 = getelementptr inbounds %struct.mmc_command, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %error55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_irqt.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %19) #7
  br label %if.end99

if.end59:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #9
  %stop60 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %stop60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stop60, align 4
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 9
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !227
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %resp.i, align 4
  %26 = ptrtoint ptr %stop60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop60, align 4
  %error62 = getelementptr inbounds %struct.mmc_command, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %error62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %error62, align 4
  br label %if.end99

sw.bb63:                                          ; preds = %if.end20.sw.bb63_crit_edge, %if.end20.sw.bb63_crit_edge217
  %sd_error64 = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 6
  %29 = ptrtoint ptr %sd_error64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %sd_error64, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool65.not = icmp eq i8 %30, 0
  br i1 %tobool65.not, label %sw.bb63.if.end99_crit_edge, label %if.then66

sw.bb63.if.end99_crit_edge:                       ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then66:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %dev_id)
  %data = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %error68 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %error68 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call67, ptr %error68, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_irqt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_irqt, %if.then81)) #7
          to label %if.end99 [label %if.then81], !srcloc !229

if.then81:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %error83 = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %error83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_irqt.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %37) #7
  br label %if.end99

do.body88:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1249, 0\0A.popsection", ""() #7, !srcloc !237
  unreachable

sw.epilog:                                        ; preds = %if.end20
  %call23 = tail call fastcc zeroext i1 @sh_mmcif_end_cmd(ptr noundef %dev_id)
  br i1 %call23, label %sw.epilog.if.then95_crit_edge, label %sw.epilog.if.end99_crit_edge

sw.epilog.if.end99_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

sw.epilog.if.then95_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then95

if.then95:                                        ; preds = %sw.epilog.if.then95_crit_edge, %sw.bb34.if.then95_crit_edge, %sw.bb31.if.then95_crit_edge, %sw.bb28.if.then95_crit_edge, %sw.bb25.if.then95_crit_edge
  %timeout = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 8
  %38 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %timeout_work, i32 noundef %39) #7
  br label %cleanup140

if.end99:                                         ; preds = %sw.epilog.if.end99_crit_edge, %if.then81, %if.then66, %sw.bb63.if.end99_crit_edge, %if.end59, %if.then53, %if.then39, %sw.bb34.if.end99_crit_edge, %sw.bb31.if.end99_crit_edge, %sw.bb28.if.end99_crit_edge, %sw.bb25.if.end99_crit_edge
  %41 = ptrtoint ptr %wait_for to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wait_for, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %42)
  %cmp101.not = icmp eq i32 %42, 8
  br i1 %cmp101.not, label %if.end99.if.end135_crit_edge, label %if.then103

if.end99.if.end135_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then103:                                       ; preds = %if.end99
  %data105 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 2
  %43 = ptrtoint ptr %data105 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data105, align 4
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmd, align 4
  %error106 = getelementptr inbounds %struct.mmc_command, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %error106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %error106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool107.not = icmp ne i32 %48, 0
  %tobool108.not = icmp eq ptr %44, null
  %or.cond = select i1 %tobool107.not, i1 true, i1 %tobool108.not
  br i1 %or.cond, label %if.then103.if.end113_crit_edge, label %land.lhs.true109

if.then103.if.end113_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

land.lhs.true109:                                 ; preds = %if.then103
  %error110 = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 5
  %49 = ptrtoint ptr %error110 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %error110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool111.not = icmp eq i32 %50, 0
  br i1 %tobool111.not, label %if.then112, label %land.lhs.true109.if.end113_crit_edge

land.lhs.true109.if.end113_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then112:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 3
  %51 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blocks, align 4
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 2
  %53 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %blksz, align 4
  %mul = mul i32 %54, %52
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 7
  %55 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul, ptr %bytes_xfered, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %land.lhs.true109.if.end113_crit_edge, %if.then103.if.end113_crit_edge
  %stop114 = getelementptr inbounds %struct.mmc_request, ptr %5, i32 0, i32 3
  %56 = ptrtoint ptr %stop114 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %stop114, align 4
  %tobool115.not = icmp eq ptr %57, null
  br i1 %tobool115.not, label %if.end113.if.end135_crit_edge, label %land.lhs.true116

if.end113.if.end135_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

land.lhs.true116:                                 ; preds = %if.end113
  %58 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cmd, align 4
  %error118 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %error118 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %error118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool119.not = icmp eq i32 %61, 0
  br i1 %tobool119.not, label %land.lhs.true120, label %land.lhs.true116.if.end135_crit_edge

land.lhs.true116.if.end135_crit_edge:             ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

land.lhs.true120:                                 ; preds = %land.lhs.true116
  br i1 %tobool108.not, label %land.lhs.true120.if.then124_crit_edge, label %lor.lhs.false

land.lhs.true120.if.then124_crit_edge:            ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

lor.lhs.false:                                    ; preds = %land.lhs.true120
  %error122 = getelementptr inbounds %struct.mmc_data, ptr %44, i32 0, i32 5
  %62 = ptrtoint ptr %error122 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool123.not = icmp eq i32 %63, 0
  br i1 %tobool123.not, label %lor.lhs.false.if.then124_crit_edge, label %lor.lhs.false.if.end135_crit_edge

lor.lhs.false.if.end135_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

lor.lhs.false.if.then124_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then124

if.then124:                                       ; preds = %lor.lhs.false.if.then124_crit_edge, %land.lhs.true120.if.then124_crit_edge
  %64 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %59, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %65, label %do.end.i [
    i32 18, label %sw.bb.i
    i32 25, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 9
  %67 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i212 = getelementptr i8, ptr %68, i32 68
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i212) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %70 = or i32 %69, 4
  %71 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %addr.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %72, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %70) #7, !srcloc !226
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i8.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 9
  %73 = ptrtoint ptr %addr.i8.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %addr.i8.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %74, i32 68
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %76 = or i32 %75, 2
  %77 = ptrtoint ptr %addr.i8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr.i8.i, align 4
  %add.ptr3.i11.i = getelementptr i8, ptr %78, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i11.i, i32 %76) #7, !srcloc !226
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pd, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.92) #10
  %call.i = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %dev_id) #7
  %81 = ptrtoint ptr %stop114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %stop114, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call.i, ptr %error.i, align 4
  br label %sh_mmcif_stop_cmd.exit

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %84 = ptrtoint ptr %wait_for to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 8, ptr %wait_for, align 4
  br label %sh_mmcif_stop_cmd.exit

sh_mmcif_stop_cmd.exit:                           ; preds = %sw.epilog.i, %do.end.i
  %85 = ptrtoint ptr %stop114 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %stop114, align 4
  %error126 = getelementptr inbounds %struct.mmc_command, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %error126 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %error126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool127.not = icmp eq i32 %88, 0
  br i1 %tobool127.not, label %if.then128, label %sh_mmcif_stop_cmd.exit.if.end135_crit_edge

sh_mmcif_stop_cmd.exit.if.end135_crit_edge:       ; preds = %sh_mmcif_stop_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

if.then128:                                       ; preds = %sh_mmcif_stop_cmd.exit
  call void @__sanitizer_cov_trace_pc() #9
  %timeout130 = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 8
  %89 = ptrtoint ptr %timeout130 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %timeout130, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %91 = load ptr, ptr @system_wq, align 4
  %call.i.i213 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %91, ptr noundef %timeout_work, i32 noundef %90) #7
  br label %cleanup140

if.end135:                                        ; preds = %sh_mmcif_stop_cmd.exit.if.end135_crit_edge, %lor.lhs.false.if.end135_crit_edge, %land.lhs.true116.if.end135_crit_edge, %if.end113.if.end135_crit_edge, %if.end99.if.end135_crit_edge
  %92 = ptrtoint ptr %wait_for to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %wait_for, align 4
  %state137 = getelementptr inbounds %struct.sh_mmcif_host, ptr %dev_id, i32 0, i32 12
  %93 = ptrtoint ptr %state137 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %state137, align 4
  %94 = ptrtoint ptr %mrq8 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %mrq8, align 4
  %95 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev_id, align 4
  tail call void @mmc_request_done(ptr noundef %96, ptr noundef nonnull %5) #7
  br label %cleanup140

cleanup140:                                       ; preds = %if.end135, %if.then128, %if.then95, %if.end20.cleanup140_crit_edge, %if.then15, %do.body9
  tail call void @mutex_unlock(ptr noundef %thread_lock) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_expose_latency_limit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mmcif_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end19, label %do.body9

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_request.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_request, %if.then14)) #7
          to label %do.end17 [label %if.then14], !srcloc !229

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_request.__UNIQUE_ID_ddebug291, ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %5) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -11, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #7
  br label %cleanup

if.end19:                                         ; preds = %entry
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %mrq22 = getelementptr inbounds %struct.sh_mmcif_host, ptr %private.i, i32 0, i32 1
  %10 = ptrtoint ptr %mrq22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mrq, ptr %mrq22, align 4
  %cmd1.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %11 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd1.i, align 4
  %flags2.i = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags2.i, align 4
  %ccs_enable.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %private.i, i32 0, i32 19
  %15 = ptrtoint ptr %ccs_enable.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ccs_enable.i, align 1, !range !230
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %if.end19.if.end10.i_crit_edge, label %if.then7.i

if.end19.if.end10.i_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %addr.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !226
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i, align 4
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blksz.i, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i, i32 %26) #7, !srcloc !226
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr.i = load ptr, ptr %data.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end19.if.end10.i_crit_edge
  %28 = phi ptr [ %.pr.i, %if.then7.i ], [ null, %if.end19.if.end10.i_crit_edge ]
  %29 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pd, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cmd1.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_command, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %36, 31
  %37 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %and.i.i, label %do.end.i.i [
    i32 0, label %if.end10.i.sw.epilog.i.i_crit_edge
    i32 21, label %if.end10.i.sw.bb4.i.i_crit_edge
    i32 1, label %if.end10.i.sw.bb4.i.i_crit_edge39
    i32 29, label %sw.bb6.i.i
    i32 7, label %sw.bb8.i.i
  ]

if.end10.i.sw.bb4.i.i_crit_edge39:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i.i

if.end10.i.sw.bb4.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i.i

if.end10.i.sw.epilog.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.end10.i.sw.bb4.i.i_crit_edge, %if.end10.i.sw.bb4.i.i_crit_edge39
  br label %sw.epilog.i.i

sw.bb6.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb8.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.27) #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end.i.i, %sw.bb8.i.i, %sw.bb6.i.i, %sw.bb4.i.i, %if.end10.i.sw.epilog.i.i_crit_edge
  %tmp.0.i.i = phi i32 [ 0, %do.end.i.i ], [ 8388608, %sw.bb8.i.i ], [ 6291456, %sw.bb6.i.i ], [ 4194304, %sw.bb4.i.i ], [ %and.i.i, %if.end10.i.sw.epilog.i.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.i.if.end.i.i_crit_edge, label %if.then.i.i

sw.epilog.i.i.if.end.i.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  %or10.i.i = or i32 %tmp.0.i.i, 524288
  %bus_width.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_width.i.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %39, label %do.end20.i.i [
    i32 0, label %if.then.i.i.sw.epilog21.i.i_crit_edge
    i32 2, label %sw.bb13.i.i
    i32 3, label %sw.bb15.i.i
  ]

if.then.i.i.sw.epilog21.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21.i.i

sw.bb13.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or14.i.i = or i32 %tmp.0.i.i, 524289
  br label %sw.epilog21.i.i

sw.bb15.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or16.i.i = or i32 %tmp.0.i.i, 524290
  br label %sw.epilog21.i.i

do.end20.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.30) #10
  br label %sw.epilog21.i.i

sw.epilog21.i.i:                                  ; preds = %do.end20.i.i, %sw.bb15.i.i, %sw.bb13.i.i, %if.then.i.i.sw.epilog21.i.i_crit_edge
  %tmp.1.i.i = phi i32 [ %or10.i.i, %do.end20.i.i ], [ %or16.i.i, %sw.bb15.i.i ], [ %or14.i.i, %sw.bb13.i.i ], [ %or10.i.i, %if.then.i.i.sw.epilog21.i.i_crit_edge ]
  %timing.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %timing.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %timing.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %42)
  %cond.i.i = icmp eq i8 %42, 8
  %or23.i.i = or i32 %tmp.1.i.i, 4
  %spec.select.i.i = select i1 %cond.i.i, i32 %or23.i.i, i32 %tmp.1.i.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %sw.epilog21.i.i, %sw.epilog.i.i.if.end.i.i_crit_edge
  %tmp.2.i.i = phi i32 [ %tmp.0.i.i, %sw.epilog.i.i.if.end.i.i_crit_edge ], [ %spec.select.i.i, %sw.epilog21.i.i ]
  %43 = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %43)
  %switch.i.i = icmp eq i32 %43, 24
  %or29.i.i = or i32 %tmp.2.i.i, 262144
  %spec.select106.i.i = select i1 %switch.i.i, i32 %or29.i.i, i32 %tmp.2.i.i
  %44 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %34, label %if.end.i.i.if.end38.i.i_crit_edge [
    i32 18, label %if.end.i.i.if.then36.i.i_crit_edge
    i32 25, label %if.end.i.i.if.then36.i.i_crit_edge40
  ]

if.end.i.i.if.then36.i.i_crit_edge40:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i.i

if.end.i.i.if.then36.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36.i.i

if.end.i.i.if.end38.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i

if.then36.i.i:                                    ; preds = %if.end.i.i.if.then36.i.i_crit_edge, %if.end.i.i.if.then36.i.i_crit_edge40
  %or37.i.i = or i32 %spec.select106.i.i, 196608
  %blocks.i.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 3
  %45 = ptrtoint ptr %blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blocks.i.i, align 4
  %shl.i.i = shl i32 %46, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 20
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !227
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %or.i.i.i = or i32 %50, %shl.i.i
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %52 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %53, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %51) #7, !srcloc !226
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.then36.i.i, %if.end.i.i.if.end38.i.i_crit_edge
  %tmp.4.i.i = phi i32 [ %or37.i.i, %if.then36.i.i ], [ %spec.select106.i.i, %if.end.i.i.if.end38.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp39.i.i = icmp eq i32 %34, 1
  %54 = and i32 %34, -9
  %55 = add i32 %54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %56 = icmp ult i32 %55, 2
  %or51.i.i = or i32 %tmp.4.i.i, 16384
  %tmp.5.i.i = select i1 %56, i32 %or51.i.i, i32 %tmp.4.i.i
  %or56.i.i = or i32 %tmp.5.i.i, 4096
  %tmp.6.i.i = select i1 %cmp39.i.i, i32 %or56.i.i, i32 %tmp.5.i.i
  %57 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %34, label %if.end38.i.i.sh_mmcif_set_cmd.exit.i_crit_edge [
    i32 2, label %if.end38.i.i.if.then66.i.i_crit_edge
    i32 9, label %if.end38.i.i.if.then66.i.i_crit_edge41
    i32 10, label %if.end38.i.i.if.then66.i.i_crit_edge42
  ]

if.end38.i.i.if.then66.i.i_crit_edge42:           ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66.i.i

if.end38.i.i.if.then66.i.i_crit_edge41:           ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66.i.i

if.end38.i.i.if.then66.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then66.i.i

if.end38.i.i.sh_mmcif_set_cmd.exit.i_crit_edge:   ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_set_cmd.exit.i

if.then66.i.i:                                    ; preds = %if.end38.i.i.if.then66.i.i_crit_edge, %if.end38.i.i.if.then66.i.i_crit_edge41, %if.end38.i.i.if.then66.i.i_crit_edge42
  %or67.i.i = or i32 %tmp.6.i.i, 8192
  br label %sh_mmcif_set_cmd.exit.i

sh_mmcif_set_cmd.exit.i:                          ; preds = %if.then66.i.i, %if.end38.i.i.sh_mmcif_set_cmd.exit.i_crit_edge
  %tmp.7.i.i = phi i32 [ %or67.i.i, %if.then66.i.i ], [ %tmp.6.i.i, %if.end38.i.i.sh_mmcif_set_cmd.exit.i_crit_edge ]
  %58 = ptrtoint ptr %ccs_enable.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ccs_enable.i, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool12.not.i = icmp eq i8 %59, 0
  %addr16.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %60 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %addr16.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %61, i32 64
  br i1 %tobool12.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %sh_mmcif_set_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 -670814016) #7, !srcloc !226
  br label %sh_mmcif_start_cmd.exit

if.else15.i:                                      ; preds = %sh_mmcif_set_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 -133418784) #7, !srcloc !226
  br label %sh_mmcif_start_cmd.exit

sh_mmcif_start_cmd.exit:                          ; preds = %if.else15.i, %if.then13.i
  %shl69.i.i = shl i32 %34, 24
  %or70.i.i = or i32 %tmp.7.i.i, %shl69.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not.i = icmp eq i8 %16, 0
  %and.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %..i = select i1 %tobool.not.i, i32 118559, i32 184095
  %or.i = or i32 %..i, 32
  %mask.1.i = select i1 %tobool3.not.i, i32 %..i, i32 %or.i
  %62 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr16.i, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %63, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %mask.1.i) #7, !srcloc !226
  %64 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %addr16.i, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 1
  %66 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arg.i, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %65, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i, i32 %67) #7, !srcloc !226
  %call22.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %68 = ptrtoint ptr %addr16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %addr16.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %or70.i.i) #7, !srcloc !226
  %wait_for.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %wait_for.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %wait_for.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %timeout.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 3
  %71 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %timeout.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %73 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %timeout_work.i, i32 noundef %72) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22.i) #7
  br label %cleanup

cleanup:                                          ; preds = %sh_mmcif_start_cmd.exit, %do.end17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mmcif_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %pd = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %state = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end19, label %do.body9

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_set_ios.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_set_ios, %if.then14)) #7
          to label %do.end17 [label %if.then14], !srcloc !229

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_set_ios.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.32, i32 noundef %5) #7
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  br label %cleanup

if.end19:                                         ; preds = %entry
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %7 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %power_mode, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %8, label %if.end19.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb35
    i8 2, label %sw.bb51
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end19
  %supply = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %10 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.bb.if.end28_crit_edge, label %if.then24

sw.bb.if.end28_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %12 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdd, align 4
  %call27 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %11, i16 noundef zeroext %13) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %sw.bb.if.end28_crit_edge
  %power = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %14 = ptrtoint ptr %power to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %power, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool29.not = icmp eq i8 %15, 0
  br i1 %tobool29.not, label %if.then30, label %if.end28.sw.epilog_crit_edge

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then30:                                        ; preds = %if.end28
  %clk = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then30.clk_prepare_enable.exit_crit_edge

if.then30.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then30
  %call1.i = tail call i32 @clk_enable(ptr noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then30.clk_prepare_enable.exit_crit_edge
  %call.i92 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  tail call fastcc void @sh_mmcif_sync_reset(ptr noundef %private.i)
  tail call fastcc void @sh_mmcif_request_dma(ptr noundef %private.i)
  %18 = ptrtoint ptr %power to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %power, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end19
  %supply36 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54
  %19 = ptrtoint ptr %supply36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %supply36, align 16
  %cmp.i93 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %sw.bb35.if.end43_crit_edge, label %if.then39

sw.bb35.if.end43_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then39:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %mmc, ptr noundef %20, i16 noundef zeroext 0) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %sw.bb35.if.end43_crit_edge
  %power44 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 9, i32 1, i32 4, i32 1
  %21 = ptrtoint ptr %power44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %power44, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool45.not = icmp eq i8 %22, 0
  br i1 %tobool45.not, label %if.end43.sw.epilog_crit_edge, label %if.then46

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then46:                                        ; preds = %if.end43
  %clk4.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %clk4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk4.i, align 4
  %call.i95 = tail call i32 @clk_get_rate(ptr noundef %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %addr.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %28 = and i32 %27, -2
  %29 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %28) #7, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %32, i32 24
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %34 = and i32 %33, -3841
  %35 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %addr.i.i, align 4
  %add.ptr3.i100.i = getelementptr i8, ptr %36, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i100.i, i32 %34) #7, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %addr.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %38, i32 28
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %40 = and i32 %39, -4
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i.i, align 4
  %add.ptr3.i.i98 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i98, i32 %40) #7, !srcloc !226
  %chan_tx.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 3
  %43 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_tx.i, align 4
  %tobool.not.i99 = icmp eq ptr %44, null
  br i1 %tobool.not.i99, label %if.then46.if.end.i100_crit_edge, label %if.then.i

if.then46.if.end.i100_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i100

if.then.i:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %chan_tx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %44) #7
  br label %if.end.i100

if.end.i100:                                      ; preds = %if.then.i, %if.then46.if.end.i100_crit_edge
  %chan_rx.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 2
  %46 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chan_rx.i, align 4
  %tobool3.not.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i, label %if.end.i100.sh_mmcif_release_dma.exit_crit_edge, label %if.then4.i

if.end.i100.sh_mmcif_release_dma.exit_crit_edge:  ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_release_dma.exit

if.then4.i:                                       ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %chan_rx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %chan_rx.i, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %47) #7
  br label %sh_mmcif_release_dma.exit

sh_mmcif_release_dma.exit:                        ; preds = %if.then4.i, %if.end.i100.sh_mmcif_release_dma.exit_crit_edge
  %dma_active.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 11, i32 0, i32 1
  %49 = ptrtoint ptr %dma_active.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %dma_active.i, align 4
  %call.i101 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  %50 = ptrtoint ptr %clk4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk4.i, align 4
  tail call void @clk_disable(ptr noundef %51) #7
  tail call void @clk_unprepare(ptr noundef %51) #7
  %52 = ptrtoint ptr %power44 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %power44, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ios, align 4
  tail call fastcc void @sh_mmcif_clock_control(ptr noundef %private.i, i32 noundef %54)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb51, %sh_mmcif_release_dma.exit, %if.end43.sw.epilog_crit_edge, %clk_prepare_enable.exit, %if.end28.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %55 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %timing, align 4
  %timing52 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 2
  %57 = ptrtoint ptr %timing52 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %timing52, align 4
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %58 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bus_width, align 1
  %conv53 = zext i8 %59 to i32
  %bus_width54 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %bus_width54 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv53, ptr %bus_width54, align 4
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_request_dma(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  %cfg.i71 = alloca %struct.dma_slave_config, align 4
  %cfg.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %dma_active = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 26
  %2 = ptrtoint ptr %dma_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dma_active, align 4
  %call = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.33) #7
  %chan_tx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 24
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call
  %3 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.store.select, ptr %chan_tx, align 4
  %call5 = tail call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.34) #7
  %chan_rx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 23
  %cmp.i69 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %spec.store.select91 = select i1 %cmp.i69, ptr null, ptr %call5
  %4 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spec.store.select91, ptr %chan_rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_request_dma.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_request_dma, %if.then14)) #7
          to label %do.end [label %if.then14], !srcloc !229

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_tx, align 4
  %7 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan_rx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_request_dma.__UNIQUE_ID_ddebug281, ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef %6, ptr noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %entry
  %9 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan_tx, align 4
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %do.end.if.end36_crit_edge, label %lor.lhs.false

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

lor.lhs.false:                                    ; preds = %do.end
  %11 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan_rx, align 4
  %tobool21.not = icmp eq ptr %12, null
  br i1 %tobool21.not, label %lor.lhs.false.if.then34_crit_edge, label %lor.lhs.false22

lor.lhs.false.if.then34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i) #7
  %13 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 44)
  %15 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd, align 4
  %call.i = tail call ptr @platform_get_resource(ptr noundef %16, i32 noundef 512, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %lor.lhs.false22.sh_mmcif_dma_slave_config.exit.thread_crit_edge, label %if.end.i

lor.lhs.false22.sh_mmcif_dma_slave_config.exit.thread_crit_edge: ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_dma_slave_config.exit.thread

if.end.i:                                         ; preds = %lor.lhs.false22
  %17 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %cfg.i, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i, align 4
  %add.i = add i32 %19, 52
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 2
  %20 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i, i32 0, i32 4
  %21 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %dst_addr_width.i, align 4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %10, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.sh_mmcif_dma_slave_config.exit.thread_crit_edge, label %sh_mmcif_dma_slave_config.exit

if.end.i.sh_mmcif_dma_slave_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_dma_slave_config.exit.thread

sh_mmcif_dma_slave_config.exit.thread:            ; preds = %if.end.i.sh_mmcif_dma_slave_config.exit.thread_crit_edge, %lor.lhs.false22.sh_mmcif_dma_slave_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #7
  br label %error

sh_mmcif_dma_slave_config.exit:                   ; preds = %if.end.i
  %call.i.i = call i32 %25(ptr noundef nonnull %10, ptr noundef nonnull %cfg.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %sh_mmcif_dma_slave_config.exit.error_crit_edge

sh_mmcif_dma_slave_config.exit.error_crit_edge:   ; preds = %sh_mmcif_dma_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

lor.lhs.false26:                                  ; preds = %sh_mmcif_dma_slave_config.exit
  %26 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan_rx, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg.i71) #7
  %28 = getelementptr inbounds i8, ptr %cfg.i71, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd, align 4
  %call.i73 = call ptr @platform_get_resource(ptr noundef %31, i32 noundef 512, i32 noundef 0) #7
  %tobool.not.i74 = icmp eq ptr %call.i73, null
  br i1 %tobool.not.i74, label %lor.lhs.false26.sh_mmcif_dma_slave_config.exit82.thread_crit_edge, label %if.end.i76

lor.lhs.false26.sh_mmcif_dma_slave_config.exit82.thread_crit_edge: ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_dma_slave_config.exit82.thread

if.end.i76:                                       ; preds = %lor.lhs.false26
  %32 = getelementptr inbounds i8, ptr %cfg.i71, i32 4
  %33 = ptrtoint ptr %cfg.i71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %cfg.i71, align 4
  %34 = ptrtoint ptr %call.i73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i73, align 4
  %add.i75 = add i32 %35, 52
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add.i75, ptr %32, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %cfg.i71, i32 0, i32 3
  %37 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %src_addr_width.i, align 4
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %27, align 4
  %device_config.i.i77 = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i.i77 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i.i77, align 4
  %tobool.not.i.i78 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i78, label %if.end.i76.sh_mmcif_dma_slave_config.exit82.thread_crit_edge, label %sh_mmcif_dma_slave_config.exit82

if.end.i76.sh_mmcif_dma_slave_config.exit82.thread_crit_edge: ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_dma_slave_config.exit82.thread

sh_mmcif_dma_slave_config.exit82.thread:          ; preds = %if.end.i76.sh_mmcif_dma_slave_config.exit82.thread_crit_edge, %lor.lhs.false26.sh_mmcif_dma_slave_config.exit82.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i71) #7
  br label %error

sh_mmcif_dma_slave_config.exit82:                 ; preds = %if.end.i76
  %call.i.i79 = call i32 %41(ptr noundef %27, ptr noundef nonnull %cfg.i71) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg.i71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i79)
  %tobool29.not = icmp eq i32 %call.i.i79, 0
  br i1 %tobool29.not, label %sh_mmcif_dma_slave_config.exit82.cleanup_crit_edge, label %sh_mmcif_dma_slave_config.exit82.error_crit_edge

sh_mmcif_dma_slave_config.exit82.error_crit_edge: ; preds = %sh_mmcif_dma_slave_config.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

sh_mmcif_dma_slave_config.exit82.cleanup_crit_edge: ; preds = %sh_mmcif_dma_slave_config.exit82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error:                                            ; preds = %sh_mmcif_dma_slave_config.exit82.error_crit_edge, %sh_mmcif_dma_slave_config.exit82.thread, %sh_mmcif_dma_slave_config.exit.error_crit_edge, %sh_mmcif_dma_slave_config.exit.thread
  %42 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load ptr, ptr %chan_tx, align 4
  %tobool33.not = icmp eq ptr %.pr, null
  br i1 %tobool33.not, label %error.if.end36_crit_edge, label %error.if.then34_crit_edge

error.if.then34_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

error.if.end36_crit_edge:                         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %error.if.then34_crit_edge, %lor.lhs.false.if.then34_crit_edge
  %43 = phi ptr [ %.pr, %error.if.then34_crit_edge ], [ %10, %lor.lhs.false.if.then34_crit_edge ]
  call void @dma_release_channel(ptr noundef nonnull %43) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %error.if.end36_crit_edge, %do.end.if.end36_crit_edge
  %44 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan_rx, align 4
  %tobool38.not = icmp eq ptr %45, null
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_release_channel(ptr noundef nonnull %45) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %46 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %chan_rx, align 4
  %47 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %chan_tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %sh_mmcif_dma_slave_config.exit82.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_clock_control(ptr nocapture noundef readonly %host, i32 noundef %clk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sup_pclk2 = getelementptr inbounds %struct.sh_mmcif_plat_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sup_pclk2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sup_pclk2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %phi.cmp = icmp ne i8 %5, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ false, %entry.cond.end_crit_edge ]
  %clk4 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 3
  %6 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk4, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %11 = and i32 %10, -2
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %13, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #7, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %17 = and i32 %16, -3841
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i100 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i100, i32 %17) #7, !srcloc !226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk)
  %tobool5.not = icmp eq i32 %clk, 0
  br i1 %tobool5.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %clkdiv_map = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 22
  %20 = ptrtoint ptr %clkdiv_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clkdiv_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not = icmp eq i32 %21, 0
  br i1 %tobool6.not, label %if.else, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0112 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 31, %if.end.for.body_crit_edge ]
  %diff_min.0111 = phi i32 [ %diff_min.1, %for.inc.for.body_crit_edge ], [ -1, %if.end.for.body_crit_edge ]
  %best_freq.0110 = phi i32 [ %best_freq.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %clkdiv.0109 = phi i32 [ %clkdiv.1, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0112
  %22 = ptrtoint ptr %clkdiv_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clkdiv_map, align 4
  %and = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %add = add nuw nsw i32 %i.0112, 1
  %24 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk4, align 4
  %mul = shl i32 %clk, %add
  %call15 = tail call i32 @clk_round_rate(ptr noundef %25, i32 noundef %mul) #7
  %div1696 = lshr i32 %call15, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %div1696, i32 %clk)
  %cmp17 = icmp ugt i32 %div1696, %clk
  %sub = sub i32 %div1696, %clk
  %sub21 = sub i32 %clk, %div1696
  %cond23 = select i1 %cmp17, i32 %sub, i32 %sub21
  call void @__sanitizer_cov_trace_cmp4(i32 %cond23, i32 %diff_min.0111)
  %cmp24.not = icmp ugt i32 %cond23, %diff_min.0111
  br i1 %cmp24.not, label %if.end12.for.inc_crit_edge, label %if.then26

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %clkdiv.1 = phi i32 [ %i.0112, %if.then26 ], [ %clkdiv.0109, %if.end12.for.inc_crit_edge ], [ %clkdiv.0109, %for.body.for.inc_crit_edge ]
  %best_freq.1 = phi i32 [ %call15, %if.then26 ], [ %best_freq.0110, %if.end12.for.inc_crit_edge ], [ %best_freq.0110, %for.body.for.inc_crit_edge ]
  %diff_min.1 = phi i32 [ %cond23, %if.then26 ], [ %diff_min.0111, %if.end12.for.inc_crit_edge ], [ %diff_min.0111, %for.body.for.inc_crit_edge ]
  %dec = add nsw i32 %i.0112, -1
  %cmp.not = icmp eq i32 %i.0112, 0
  br i1 %cmp.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body:                                          ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_clock_control.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_clock_control, %if.then33)) #7
          to label %do.end [label %if.then33], !srcloc !229

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add34 = add i32 %clkdiv.1, 1
  %div3695 = lshr i32 %best_freq.1, %add34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_clock_control.__UNIQUE_ID_ddebug282, ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %div3695, i32 noundef %clk, i32 noundef %best_freq.1, i32 noundef %clkdiv.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %26 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk4, align 4
  %call39 = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %best_freq.1) #7
  %shl40 = shl i32 %clkdiv.1, 16
  br label %if.end55

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %clk)
  %cmp43 = icmp eq i32 %call, %clk
  %or.cond = select i1 %cond, i1 %cmp43, i1 false
  br i1 %or.cond, label %if.else.if.end55_crit_edge, label %if.else46

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add47 = add i32 %clk, -1
  %sub48 = add i32 %add47, %call
  %div49 = udiv i32 %sub48, %clk
  %sub50 = add i32 %div49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub50)
  %tobool.not.i = icmp eq i32 %sub50, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %sub50, i1 true) #7, !range !228
  %.neg = mul nsw i32 %28, -65536
  %sub.i.op.op = add nsw i32 %.neg, 2031616
  %shl53 = select i1 %tobool.not.i, i32 -65536, i32 %sub.i.op.op
  br label %if.end55

if.end55:                                         ; preds = %if.else46, %if.else.if.end55_crit_edge, %do.end
  %clkdiv.2 = phi i32 [ %shl40, %do.end ], [ %shl53, %if.else46 ], [ 983040, %if.else.if.end55_crit_edge ]
  %and56 = and i32 %clkdiv.2, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #7, !srcloc !227
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %or.i = or i32 %32, %and56
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i103 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i103, i32 %33) #7, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %37, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %39 = or i32 %38, 1
  %40 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i107 = getelementptr i8, ptr %41, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i107, i32 %39) #7, !srcloc !226
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_mmcif_error_manage(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 6
  %2 = ptrtoint ptr %sd_error to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %sd_error, align 1
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr.i127 = getelementptr i8, ptr %7, i32 76
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #7, !srcloc !227
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_error_manage, %if.then)) #7
          to label %do.body7 [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_error_manage.__UNIQUE_ID_ddebug283, ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef %5) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_error_manage, %if.then19)) #7
          to label %do.end22 [label %if.then19], !srcloc !229

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_error_manage.__UNIQUE_ID_ddebug284, ptr noundef %dev1, ptr noundef nonnull @.str.48, i32 noundef %8) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool23.not = icmp sgt i32 %5, -1
  br i1 %tobool23.not, label %if.end54, label %if.then24

if.then24:                                        ; preds = %do.end22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %add.ptr.i128 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #7, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %addr, align 4
  %add.ptr.i130 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #7, !srcloc !227
  %18 = lshr i32 %17, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %or.i131 = or i32 %18, -2
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i131) #7
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr3.i132 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i132, i32 %19) #7, !srcloc !226
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %if.then24
  %timeout.0138 = phi i32 [ 10000, %if.then24 ], [ %dec, %if.end31.for.body_crit_edge ]
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr, align 4
  %add.ptr.i133 = getelementptr i8, ptr %23, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #7, !srcloc !227
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool29.not = icmp sgt i32 %24, -1
  br i1 %tobool29.not, label %if.end37, label %if.end31

if.end31:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #7
  %dec = add nsw i32 %timeout.0138, -1
  %tobool25.not = icmp eq i32 %dec, 0
  br i1 %tobool25.not, label %do.end36.critedge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end36.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end37:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sh_mmcif_sync_reset(ptr noundef %host)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_error_manage, %if.then50)) #7
          to label %cleanup [label %if.then50], !srcloc !229

if.then50:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_error_manage.__UNIQUE_ID_ddebug285, ptr noundef %dev1, ptr noundef nonnull @.str.50) #7
  br label %cleanup

if.end54:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %8)
  %tobool56.not = icmp ult i32 %8, 134217728
  br i1 %tobool56.not, label %if.else, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 12
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %wait_for = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %28 = ptrtoint ptr %wait_for to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wait_for, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.52, i32 noundef %27, i32 noundef %29) #10
  br label %cleanup

if.else:                                          ; preds = %if.end54
  %and61 = and i32 %8, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body70, label %do.end66

do.end66:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %state67 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 12
  %30 = ptrtoint ptr %state67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state67, align 4
  %wait_for68 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %32 = ptrtoint ptr %wait_for68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wait_for68, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %31, i32 noundef %33) #10
  br label %cleanup

do.body70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_error_manage, %if.then82)) #7
          to label %cleanup [label %if.then82], !srcloc !229

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %state83 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 12
  %34 = ptrtoint ptr %state83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state83, align 4
  %wait_for84 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %36 = ptrtoint ptr %wait_for84 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wait_for84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_error_manage.__UNIQUE_ID_ddebug286, ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef %35, i32 noundef %37) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %do.body70, %do.end66, %do.end60, %if.then50, %if.end37, %do.end36.critedge
  %retval.0 = phi i32 [ -5, %do.end36.critedge ], [ -5, %if.then50 ], [ -5, %do.end60 ], [ -110, %do.end66 ], [ -5, %if.then82 ], [ -5, %if.end37 ], [ -5, %do.body70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_mmcif_dma_complete(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq1 = getelementptr inbounds %struct.sh_mmcif_host, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %mrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq1, align 4
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_dma_complete.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_dma_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !229

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_dma_complete.__UNIQUE_ID_ddebug276, ptr noundef %dev2, ptr noundef nonnull @.str.64) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.do.end24_crit_edge, label %lor.rhs

do.end.do.end24_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

lor.rhs:                                          ; preds = %do.end
  %data = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %lor.rhs.do.end24_crit_edge, label %if.end41, !prof !236

lor.rhs.do.end24_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end24:                                         ; preds = %lor.rhs.do.end24_crit_edge, %do.end.do.end24_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end24.dev_name.exit_crit_edge

do.end24.dev_name.exit_crit_edge:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end24.dev_name.exit_crit_edge
  %retval.0.i49 = phi ptr [ %9, %if.end.i ], [ %7, %do.end24.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 281, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i49) #7
  br label %cleanup

if.end41:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %dma_complete = getelementptr inbounds %struct.sh_mmcif_host, ptr %arg, i32 0, i32 25
  tail call void @complete(ptr noundef %dma_complete) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %dev_name.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sh_mmcif_end_cmd(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd1, align 4
  %data3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data3, align 4
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %6 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 6
  %8 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %11, label %sw.default [
    i32 2, label %if.then.do.body_crit_edge
    i32 7, label %if.then.do.body_crit_edge179
    i32 55, label %if.then.do.body_crit_edge180
  ]

if.then.do.body_crit_edge180:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.do.body_crit_edge179:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %host)
  br label %do.body

do.body:                                          ; preds = %sw.default, %if.then.do.body_crit_edge, %if.then.do.body_crit_edge179, %if.then.do.body_crit_edge180
  %.sink = phi i32 [ %call, %sw.default ], [ -110, %if.then.do.body_crit_edge ], [ -110, %if.then.do.body_crit_edge179 ], [ -110, %if.then.do.body_crit_edge180 ]
  %error = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_end_cmd.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_end_cmd, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !229

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %error12 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %error12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_end_cmd.__UNIQUE_ID_ddebug294, ptr noundef %dev4, ptr noundef nonnull @.str.70, i32 noundef %15, i32 noundef %17) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %18 = ptrtoint ptr %sd_error to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %sd_error, align 1
  br label %cleanup

if.end14:                                         ; preds = %entry
  %flags = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %error17 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %error17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %error17, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %and.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %addr13.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %22 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %addr13.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !227
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %resp.i, align 4
  %26 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %27, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #7, !srcloc !227
  %arrayidx4.i = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx4.i, align 4
  %30 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %31, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27.i) #7, !srcloc !227
  %arrayidx8.i = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx8.i, align 4
  %34 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %35, i32 44
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #7, !srcloc !227
  %arrayidx12.i = getelementptr %struct.mmc_command, ptr %3, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx12.i, align 4
  br label %sh_mmcif_get_response.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i29.i = getelementptr i8, ptr %23, i32 44
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #7, !srcloc !227
  %resp15.i = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %resp15.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %resp15.i, align 4
  br label %sh_mmcif_get_response.exit

sh_mmcif_get_response.exit:                       ; preds = %if.else.i, %if.then.i
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %sh_mmcif_get_response.exit.cleanup_crit_edge, label %if.end21

sh_mmcif_get_response.exit.cleanup_crit_edge:     ; preds = %sh_mmcif_get_response.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %sh_mmcif_get_response.exit
  %dma_complete = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 25
  %40 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 25, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @init_completion.__key) #7
  %flags22 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %41 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags22, align 4
  %and23 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end21
  %chan_rx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 23
  %43 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_rx, align 4
  %tobool26.not = icmp eq ptr %44, null
  br i1 %tobool26.not, label %if.then25.if.end32_crit_edge, label %if.then27

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sh_mmcif_start_dma_rx(ptr noundef %host)
  br label %if.end32

if.else:                                          ; preds = %if.end21
  %chan_tx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 24
  %45 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan_tx, align 4
  %tobool29.not = icmp eq ptr %46, null
  br i1 %tobool29.not, label %if.else.if.end32_crit_edge, label %if.then30

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @sh_mmcif_start_dma_tx(ptr noundef %host)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else.if.end32_crit_edge, %if.then27, %if.then25.if.end32_crit_edge
  %dma_active = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 26
  %47 = ptrtoint ptr %dma_active to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dma_active, align 4, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool33.not = icmp eq i8 %48, 0
  br i1 %tobool33.not, label %if.then34, label %if.end43

if.then34:                                        ; preds = %if.end32
  %49 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mrq, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %52, label %do.end.i [
    i32 18, label %sw.bb.i
    i32 25, label %sw.bb2.i
    i32 24, label %sw.bb3.i
    i32 17, label %if.then34.sw.bb4.i_crit_edge
    i32 8, label %if.then34.sw.bb4.i_crit_edge181
  ]

if.then34.sw.bb4.i_crit_edge181:                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i

if.then34.sw.bb4.i_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i

sw.bb.i:                                          ; preds = %if.then34
  %data1.i.i = getelementptr inbounds %struct.mmc_request, ptr %50, i32 0, i32 2
  %54 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data1.i.i, align 4
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sg_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.sh_mmcif_data_trans.exit_crit_edge, label %lor.lhs.false.i.i

sw.bb.i.sh_mmcif_data_trans.exit_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_data_trans.exit

lor.lhs.false.i.i:                                ; preds = %sw.bb.i
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %55, i32 0, i32 12
  %58 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sg.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool2.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.sh_mmcif_data_trans.exit_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.sh_mmcif_data_trans.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_data_trans.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %62 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 20
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !227
  %and.i.i = and i32 %64, 65535
  %blocksize.i.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %65 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and.i.i, ptr %blocksize.i.i, align 4
  %wait_for.i.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %66 = ptrtoint ptr %wait_for.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %wait_for.i.i, align 4
  %sg_idx.i.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 16
  %67 = ptrtoint ptr %sg_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %sg_idx.i.i, align 4
  %sg_blkidx.i.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 17
  %68 = ptrtoint ptr %sg_blkidx.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sg_blkidx.i.i, align 4
  %69 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sg.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %and.i.i.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !238

do.body2.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sg_virt.exit.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i.i = and i32 %72, -4
  %73 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %73) #7
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %70, i32 0, i32 1
  %74 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i13.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %75
  %pio_ptr.i.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 10
  %76 = ptrtoint ptr %pio_ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr.i13.i.i, ptr %pio_ptr.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %78, i32 68
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %80 = or i32 %79, 4096
  %81 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr13.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %82, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %80) #7, !srcloc !226
  br label %sh_mmcif_data_trans.exit

sw.bb2.i:                                         ; preds = %if.then34
  %data1.i13.i = getelementptr inbounds %struct.mmc_request, ptr %50, i32 0, i32 2
  %83 = ptrtoint ptr %data1.i13.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data1.i13.i, align 4
  %sg_len.i14.i = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 10
  %85 = ptrtoint ptr %sg_len.i14.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sg_len.i14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i15.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i15.i, label %sw.bb2.i.sh_mmcif_data_trans.exit_crit_edge, label %lor.lhs.false.i19.i

sw.bb2.i.sh_mmcif_data_trans.exit_crit_edge:      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_data_trans.exit

lor.lhs.false.i19.i:                              ; preds = %sw.bb2.i
  %sg.i16.i = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 12
  %87 = ptrtoint ptr %sg.i16.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %sg.i16.i, align 4
  %length.i17.i = getelementptr inbounds %struct.scatterlist, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %length.i17.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length.i17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool2.not.i18.i = icmp eq i32 %90, 0
  br i1 %tobool2.not.i18.i, label %lor.lhs.false.i19.i.sh_mmcif_data_trans.exit_crit_edge, label %if.end.i29.i

lor.lhs.false.i19.i.sh_mmcif_data_trans.exit_crit_edge: ; preds = %lor.lhs.false.i19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_data_trans.exit

if.end.i29.i:                                     ; preds = %lor.lhs.false.i19.i
  %91 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %92, i32 20
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i) #7, !srcloc !227
  %and.i22.i = and i32 %93, 65535
  %blocksize.i23.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %94 = ptrtoint ptr %blocksize.i23.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and.i22.i, ptr %blocksize.i23.i, align 4
  %wait_for.i24.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %95 = ptrtoint ptr %wait_for.i24.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 3, ptr %wait_for.i24.i, align 4
  %sg_idx.i25.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 16
  %96 = ptrtoint ptr %sg_idx.i25.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %sg_idx.i25.i, align 4
  %sg_blkidx.i26.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 17
  %97 = ptrtoint ptr %sg_blkidx.i26.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %sg_blkidx.i26.i, align 4
  %98 = ptrtoint ptr %sg.i16.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sg.i16.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %and.i.i.i.i27.i = and i32 %101, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i27.i)
  %tobool.i.not.i.i.i28.i = icmp eq i32 %and.i.i.i.i27.i, 0
  br i1 %tobool.i.not.i.i.i28.i, label %sg_virt.exit.i38.i, label %do.body2.i.i.i30.i, !prof !238

do.body2.i.i.i30.i:                               ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sg_virt.exit.i38.i:                               ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i31.i = and i32 %101, -4
  %102 = inttoptr i32 %and.i.i.i31.i to ptr
  %call1.i.i32.i = tail call ptr @page_address(ptr noundef %102) #7
  %offset.i.i33.i = getelementptr inbounds %struct.scatterlist, ptr %99, i32 0, i32 1
  %103 = ptrtoint ptr %offset.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset.i.i33.i, align 4
  %add.ptr.i13.i34.i = getelementptr i8, ptr %call1.i.i32.i, i32 %104
  %pio_ptr.i35.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 10
  %105 = ptrtoint ptr %pio_ptr.i35.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i13.i34.i, ptr %pio_ptr.i35.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i14.i36.i = getelementptr i8, ptr %107, i32 68
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i36.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %109 = or i32 %108, 8192
  %110 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %addr13.i, align 4
  %add.ptr3.i.i37.i = getelementptr i8, ptr %111, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i37.i, i32 %109) #7, !srcloc !226
  br label %sh_mmcif_data_trans.exit

sw.bb3.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i.i40.i = getelementptr i8, ptr %113, i32 20
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i) #7, !srcloc !227
  %and.i41.i = and i32 %114, 65535
  %add.i.i = add nuw nsw i32 %and.i41.i, 3
  %blocksize.i42.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %115 = ptrtoint ptr %blocksize.i42.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add.i.i, ptr %blocksize.i42.i, align 4
  %wait_for.i43.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %116 = ptrtoint ptr %wait_for.i43.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 5, ptr %wait_for.i43.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %117 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i1.i.i = getelementptr i8, ptr %118, i32 68
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %120 = or i32 %119, 8192
  %121 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %addr13.i, align 4
  %add.ptr3.i.i44.i = getelementptr i8, ptr %122, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i44.i, i32 %120) #7, !srcloc !226
  br label %sh_mmcif_data_trans.exit

sw.bb4.i:                                         ; preds = %if.then34.sw.bb4.i_crit_edge, %if.then34.sw.bb4.i_crit_edge181
  %123 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i.i46.i = getelementptr i8, ptr %124, i32 20
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46.i) #7, !srcloc !227
  %and.i47.i = and i32 %125, 65535
  %add.i48.i = add nuw nsw i32 %and.i47.i, 3
  %blocksize.i49.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %126 = ptrtoint ptr %blocksize.i49.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add.i48.i, ptr %blocksize.i49.i, align 4
  %wait_for.i50.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %127 = ptrtoint ptr %wait_for.i50.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 4, ptr %wait_for.i50.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i1.i51.i = getelementptr i8, ptr %129, i32 68
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i51.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %131 = or i32 %130, 4096
  %132 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %addr13.i, align 4
  %add.ptr3.i.i52.i = getelementptr i8, ptr %133, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i52.i, i32 %131) #7, !srcloc !226
  br label %sh_mmcif_data_trans.exit

do.end.i:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  %134 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pd, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %135, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.85, i32 noundef %52) #10
  br label %sh_mmcif_data_trans.exit

sh_mmcif_data_trans.exit:                         ; preds = %do.end.i, %sw.bb4.i, %sw.bb3.i, %sg_virt.exit.i38.i, %lor.lhs.false.i19.i.sh_mmcif_data_trans.exit_crit_edge, %sw.bb2.i.sh_mmcif_data_trans.exit_crit_edge, %sg_virt.exit.i.i, %lor.lhs.false.i.i.sh_mmcif_data_trans.exit_crit_edge, %sw.bb.i.sh_mmcif_data_trans.exit_crit_edge
  %tobool40.not = phi i1 [ true, %sw.bb.i.sh_mmcif_data_trans.exit_crit_edge ], [ true, %lor.lhs.false.i.i.sh_mmcif_data_trans.exit_crit_edge ], [ true, %sg_virt.exit.i.i ], [ true, %sw.bb2.i.sh_mmcif_data_trans.exit_crit_edge ], [ true, %lor.lhs.false.i19.i.sh_mmcif_data_trans.exit_crit_edge ], [ true, %sg_virt.exit.i38.i ], [ true, %sw.bb3.i ], [ true, %sw.bb4.i ], [ false, %do.end.i ]
  %retval.0.i157 = phi i32 [ 0, %sw.bb.i.sh_mmcif_data_trans.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.sh_mmcif_data_trans.exit_crit_edge ], [ 0, %sg_virt.exit.i.i ], [ 0, %sw.bb2.i.sh_mmcif_data_trans.exit_crit_edge ], [ 0, %lor.lhs.false.i19.i.sh_mmcif_data_trans.exit_crit_edge ], [ 0, %sg_virt.exit.i38.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ -22, %do.end.i ]
  %error38 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %136 = ptrtoint ptr %error38 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i157, ptr %error38, align 4
  br label %cleanup

if.end43:                                         ; preds = %if.end32
  %timeout = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 8
  %137 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %timeout, align 4
  %call45 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %dma_complete, i32 noundef %138) #7
  %139 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flags22, align 4
  %and47 = and i32 %140, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %chan_tx53 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 24
  %chan_rx50 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 23
  %chan_tx53.sink = select i1 %tobool48.not, ptr %chan_tx53, ptr %chan_rx50
  %.sink175 = select i1 %tobool48.not, i32 1, i32 2
  %141 = ptrtoint ptr %chan_tx53.sink to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %chan_tx53.sink, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %dev55 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 15
  %145 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev55, align 4
  %sg56 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %147 = ptrtoint ptr %sg56 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sg56, align 4
  %sg_len57 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %149 = ptrtoint ptr %sg_len57 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %sg_len57, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %146, ptr noundef %148, i32 noundef %150, i32 noundef %.sink175, i32 noundef 0) #7
  %151 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool60.not = icmp eq i8 %152, 0
  br i1 %tobool60.not, label %if.else67, label %do.end64

do.end64:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %host, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.71) #10
  %call65 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %host)
  br label %if.end86.sink.split

if.else67:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool68.not = icmp eq i32 %call45, 0
  br i1 %tobool68.not, label %do.end72, label %if.else76

do.end72:                                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %host, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.73) #10
  br label %if.end86.sink.split

if.else76:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %do.end80, label %if.else76.if.end86_crit_edge

if.else76.if.end86_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.end80:                                         ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %host, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.76, i32 noundef %call45) #10
  br label %if.end86.sink.split

if.end86.sink.split:                              ; preds = %do.end80, %do.end72, %do.end64
  %.sink178 = phi i32 [ -110, %do.end72 ], [ %call45, %do.end80 ], [ %call65, %do.end64 ]
  %error75 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %165 = ptrtoint ptr %error75 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %.sink178, ptr %error75, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.end86.sink.split, %if.else76.if.end86_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %166 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %addr13.i, align 4
  %add.ptr.i = getelementptr i8, ptr %167, i32 28
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %169 = and i32 %168, -4
  %170 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %addr13.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %171, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %169) #7, !srcloc !226
  %172 = ptrtoint ptr %dma_active to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %dma_active, align 4
  %error88 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %173 = ptrtoint ptr %error88 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %error88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool89.not = icmp eq i32 %174, 0
  br i1 %tobool89.not, label %if.end86.cleanup_crit_edge, label %if.then90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then90:                                        ; preds = %if.end86
  %bytes_xfered = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  %175 = ptrtoint ptr %bytes_xfered to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %bytes_xfered, align 4
  %176 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %flags22, align 4
  %and92 = and i32 %177, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.else97, label %if.then94

if.then94:                                        ; preds = %if.then90
  %chan_rx95 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 23
  %178 = ptrtoint ptr %chan_rx95 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %chan_rx95, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %181, i32 0, i32 47
  %182 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i159 = icmp eq ptr %183, null
  br i1 %tobool.not.i.i159, label %if.then94.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %if.then94
  %call.i.i = tail call i32 %183(ptr noundef %179) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i160 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i160, label %if.end.i, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.87, i32 noundef 1169) #7
  %184 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %179, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %185, i32 0, i32 48
  %186 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %187, null
  br i1 %tobool.not.i1.i, label %if.end.i.cleanup_crit_edge, label %if.then.i2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %187(ptr noundef %179) #7
  br label %cleanup

if.else97:                                        ; preds = %if.then90
  %chan_tx98 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 24
  %188 = ptrtoint ptr %chan_tx98 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %chan_tx98, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %189, align 4
  %device_terminate_all.i.i161 = getelementptr inbounds %struct.dma_device, ptr %191, i32 0, i32 47
  %192 = ptrtoint ptr %device_terminate_all.i.i161 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %device_terminate_all.i.i161, align 4
  %tobool.not.i.i162 = icmp eq ptr %193, null
  br i1 %tobool.not.i.i162, label %if.else97.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i165

if.else97.cleanup_crit_edge:                      ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dmaengine_terminate_async.exit.i165:              ; preds = %if.else97
  %call.i.i163 = tail call i32 %193(ptr noundef %189) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %tobool.not.i164 = icmp eq i32 %call.i.i163, 0
  br i1 %tobool.not.i164, label %if.end.i168, label %dmaengine_terminate_async.exit.i165.cleanup_crit_edge

dmaengine_terminate_async.exit.i165.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i168:                                      ; preds = %dmaengine_terminate_async.exit.i165
  tail call void @__might_sleep(ptr noundef nonnull @.str.87, i32 noundef 1169) #7
  %194 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %189, align 4
  %device_synchronize.i.i166 = getelementptr inbounds %struct.dma_device, ptr %195, i32 0, i32 48
  %196 = ptrtoint ptr %device_synchronize.i.i166 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %device_synchronize.i.i166, align 4
  %tobool.not.i1.i167 = icmp eq ptr %197, null
  br i1 %tobool.not.i1.i167, label %if.end.i168.cleanup_crit_edge, label %if.then.i2.i169

if.end.i168.cleanup_crit_edge:                    ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i2.i169:                                  ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %197(ptr noundef %189) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i2.i169, %if.end.i168.cleanup_crit_edge, %dmaengine_terminate_async.exit.i165.cleanup_crit_edge, %if.else97.cleanup_crit_edge, %if.then.i2.i, %if.end.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %if.then94.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %sh_mmcif_data_trans.exit, %sh_mmcif_get_response.exit.cleanup_crit_edge, %if.then16, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ %tobool40.not, %sh_mmcif_data_trans.exit ], [ false, %if.then16 ], [ false, %sh_mmcif_get_response.exit.cleanup_crit_edge ], [ false, %if.end86.cleanup_crit_edge ], [ false, %if.then94.cleanup_crit_edge ], [ false, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.then.i2.i ], [ false, %if.else97.cleanup_crit_edge ], [ false, %dmaengine_terminate_async.exit.i165.cleanup_crit_edge ], [ false, %if.end.i168.cleanup_crit_edge ], [ false, %if.then.i2.i169 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sh_mmcif_mread_block(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %pio_ptr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 10
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 6
  %6 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body10, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %host)
  %error = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_mread_block.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_mread_block, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !229

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_mread_block.__UNIQUE_ID_ddebug288, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.88, i32 noundef %10) #7
  br label %cleanup

do.body10:                                        ; preds = %entry
  %11 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pio_ptr, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %do.body21, label %for.cond.preheader, !prof !236

for.cond.preheader:                               ; preds = %do.body10
  %blocksize = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %17 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp53.not = icmp ult i32 %18, 4
  br i1 %cmp53.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  br label %for.body

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 692, 0\0A.popsection", ""() #7, !srcloc !240
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %p.054 = phi ptr [ %12, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 52
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  %incdec.ptr = getelementptr i32, ptr %p.054, i32 1
  %22 = ptrtoint ptr %p.054 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %p.054, align 4
  %inc = add nuw nsw i32 %i.055, 1
  %23 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocksize, align 4
  %div49 = lshr i32 %24, 2
  %cmp = icmp ult i32 %inc, %div49
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %12, %for.cond.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %18, %for.cond.preheader.for.end_crit_edge ], [ %24, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mrq, align 4
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data1.i, align 4
  %sg_blkidx.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 17
  %29 = ptrtoint ptr %sg_blkidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_blkidx.i, align 4
  %add.i = add i32 %30, %.lcssa
  store i32 %add.i, ptr %sg_blkidx.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp.i = icmp ugt i32 %add.i, %34
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !236

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 612, 0\0A.popsection", ""() #7, !srcloc !241
  unreachable

do.end9.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp13.i = icmp eq i32 %add.i, %34
  br i1 %cmp13.i, label %if.then14.i, label %do.end9.i.if.end21.sink.split.i_crit_edge

do.end9.i.if.end21.sink.split.i_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.sink.split.i

if.then14.i:                                      ; preds = %do.end9.i
  %35 = ptrtoint ptr %sg_blkidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sg_blkidx.i, align 4
  %sg_idx.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 16
  %36 = ptrtoint ptr %sg_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_idx.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %sg_idx.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 10
  %38 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %39)
  %cmp16.i = icmp ult i32 %inc.i, %39
  br i1 %cmp16.i, label %if.then17.i, label %if.then14.i.sh_mmcif_next_block.exit_crit_edge

if.then14.i.sh_mmcif_next_block.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_next_block.exit

if.then17.i:                                      ; preds = %if.then14.i
  %40 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg.i, align 4
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %41, i32 1
  store ptr %incdec.ptr.i, ptr %sg.i, align 4
  %42 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr.i, align 4
  %and.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !238

do.body2.i.i.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i = and i32 %43, -4
  %44 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %44) #7
  %offset.i.i = getelementptr %struct.scatterlist, ptr %41, i32 1, i32 1
  %45 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %46
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %sg_virt.exit.i, %do.end9.i.if.end21.sink.split.i_crit_edge
  %add.ptr.i.sink.i = phi ptr [ %add.ptr.i.i, %sg_virt.exit.i ], [ %p.0.lcssa, %do.end9.i.if.end21.sink.split.i_crit_edge ]
  %47 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i.sink.i, ptr %pio_ptr, align 4
  br label %sh_mmcif_next_block.exit

sh_mmcif_next_block.exit:                         ; preds = %if.end21.sink.split.i, %if.then14.i.sh_mmcif_next_block.exit_crit_edge
  %sg_idx22.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 16
  %48 = ptrtoint ptr %sg_idx22.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_idx22.i, align 4
  %sg_len23.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 10
  %50 = ptrtoint ptr %sg_len23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg_len23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp24.i.not = icmp eq i32 %49, %51
  br i1 %cmp24.i.not, label %sh_mmcif_next_block.exit.cleanup_crit_edge, label %if.end33

sh_mmcif_next_block.exit.cleanup_crit_edge:       ; preds = %sh_mmcif_next_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %sh_mmcif_next_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %53, i32 68
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %55 = or i32 %54, 4096
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %55) #7, !srcloc !226
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %sh_mmcif_next_block.exit.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i1 [ true, %if.end33 ], [ false, %if.then7 ], [ false, %sh_mmcif_next_block.exit.cleanup_crit_edge ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sh_mmcif_read_block(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !238

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sg_virt.exit:                                     ; preds = %entry
  %and.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %10) #7
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %12
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 6
  %13 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %sg_virt.exit
  %blocksize = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %15 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp30.not = icmp ult i32 %16, 4
  br i1 %cmp30.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  br label %for.body

if.then:                                          ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %host)
  %error = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_read_block.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_read_block, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !229

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_read_block.__UNIQUE_ID_ddebug287, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.89, i32 noundef %19) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %p.031 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %add.ptr.i26 = getelementptr i8, ptr %21, i32 52
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #7, !srcloc !227
  %incdec.ptr = getelementptr i32, ptr %p.031, i32 1
  %23 = ptrtoint ptr %p.031 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %p.031, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %24 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blocksize, align 4
  %div25 = lshr i32 %25, 2
  %cmp = icmp ult i32 %inc, %div25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %27, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %29 = or i32 %28, 16384
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %29) #7, !srcloc !226
  %wait_for = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %32 = ptrtoint ptr %wait_for to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %wait_for, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then8, %if.then
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sh_mmcif_mwrite_block(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %pio_ptr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 10
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 6
  %6 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body10, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %host)
  %error = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_mwrite_block.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_mwrite_block, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !229

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_mwrite_block.__UNIQUE_ID_ddebug290, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.90, i32 noundef %10) #7
  br label %cleanup

do.body10:                                        ; preds = %entry
  %11 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pio_ptr, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %do.body21, label %for.cond.preheader, !prof !236

for.cond.preheader:                               ; preds = %do.body10
  %blocksize = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %17 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp52.not = icmp ult i32 %18, 4
  br i1 %cmp52.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  br label %for.body

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 772, 0\0A.popsection", ""() #7, !srcloc !242
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %p.053 = phi ptr [ %12, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %addr, align 4
  %incdec.ptr = getelementptr i32, ptr %p.053, i32 1
  %21 = ptrtoint ptr %p.053 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p.053, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #7, !srcloc !226
  %inc = add nuw nsw i32 %i.054, 1
  %23 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocksize, align 4
  %div48 = lshr i32 %24, 2
  %cmp = icmp ult i32 %inc, %div48
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %12, %for.cond.preheader.for.end_crit_edge ], [ %incdec.ptr, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %18, %for.cond.preheader.for.end_crit_edge ], [ %24, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mrq, align 4
  %data1.i = getelementptr inbounds %struct.mmc_request, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data1.i, align 4
  %sg_blkidx.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 17
  %29 = ptrtoint ptr %sg_blkidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sg_blkidx.i, align 4
  %add.i = add i32 %30, %.lcssa
  store i32 %add.i, ptr %sg_blkidx.i, align 4
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 12
  %31 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp.i = icmp ugt i32 %add.i, %34
  br i1 %cmp.i, label %do.body4.i, label %do.end9.i, !prof !236

do.body4.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sh_mmcif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 612, 0\0A.popsection", ""() #7, !srcloc !241
  unreachable

do.end9.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp13.i = icmp eq i32 %add.i, %34
  br i1 %cmp13.i, label %if.then14.i, label %do.end9.i.if.end21.sink.split.i_crit_edge

do.end9.i.if.end21.sink.split.i_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.sink.split.i

if.then14.i:                                      ; preds = %do.end9.i
  %35 = ptrtoint ptr %sg_blkidx.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %sg_blkidx.i, align 4
  %sg_idx.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 16
  %36 = ptrtoint ptr %sg_idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_idx.i, align 4
  %inc.i = add i32 %37, 1
  store i32 %inc.i, ptr %sg_idx.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 10
  %38 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %39)
  %cmp16.i = icmp ult i32 %inc.i, %39
  br i1 %cmp16.i, label %if.then17.i, label %if.then14.i.sh_mmcif_next_block.exit_crit_edge

if.then14.i.sh_mmcif_next_block.exit_crit_edge:   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sh_mmcif_next_block.exit

if.then17.i:                                      ; preds = %if.then14.i
  %40 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg.i, align 4
  %incdec.ptr.i = getelementptr %struct.scatterlist, ptr %41, i32 1
  store ptr %incdec.ptr.i, ptr %sg.i, align 4
  %42 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %incdec.ptr.i, align 4
  %and.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !238

do.body2.i.i.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sg_virt.exit.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i = and i32 %43, -4
  %44 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %44) #7
  %offset.i.i = getelementptr %struct.scatterlist, ptr %41, i32 1, i32 1
  %45 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %46
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %sg_virt.exit.i, %do.end9.i.if.end21.sink.split.i_crit_edge
  %add.ptr.i.sink.i = phi ptr [ %add.ptr.i.i, %sg_virt.exit.i ], [ %p.0.lcssa, %do.end9.i.if.end21.sink.split.i_crit_edge ]
  %47 = ptrtoint ptr %pio_ptr to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i.sink.i, ptr %pio_ptr, align 4
  br label %sh_mmcif_next_block.exit

sh_mmcif_next_block.exit:                         ; preds = %if.end21.sink.split.i, %if.then14.i.sh_mmcif_next_block.exit_crit_edge
  %sg_idx22.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 16
  %48 = ptrtoint ptr %sg_idx22.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_idx22.i, align 4
  %sg_len23.i = getelementptr inbounds %struct.mmc_data, ptr %28, i32 0, i32 10
  %50 = ptrtoint ptr %sg_len23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sg_len23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp24.i.not = icmp eq i32 %49, %51
  br i1 %cmp24.i.not, label %sh_mmcif_next_block.exit.cleanup_crit_edge, label %if.end32

sh_mmcif_next_block.exit.cleanup_crit_edge:       ; preds = %sh_mmcif_next_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %sh_mmcif_next_block.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %52 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %53, i32 68
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %55 = or i32 %54, 8192
  %56 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %55) #7, !srcloc !226
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sh_mmcif_next_block.exit.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i1 [ true, %if.end32 ], [ false, %if.then7 ], [ false, %sh_mmcif_next_block.exit.cleanup_crit_edge ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sh_mmcif_write_block(ptr nocapture noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrq, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %sg = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !238

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !239
  unreachable

sg_virt.exit:                                     ; preds = %entry
  %and.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %10) #7
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %12
  %sd_error = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 6
  %13 = ptrtoint ptr %sd_error to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sd_error, align 1, !range !230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %sg_virt.exit
  %blocksize = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 15
  %15 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocksize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp29.not = icmp ult i32 %16, 4
  br i1 %cmp29.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  br label %for.body

if.then:                                          ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @sh_mmcif_error_manage(ptr noundef %host)
  %error = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call3, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_write_block.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_write_block, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !229

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_write_block.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.91, i32 noundef %19) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %p.030 = phi ptr [ %add.ptr.i, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr, align 4
  %incdec.ptr = getelementptr i32, ptr %p.030, i32 1
  %22 = ptrtoint ptr %p.030 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p.030, align 4
  %add.ptr.i25 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %23) #7, !srcloc !226
  %inc = add nuw nsw i32 %i.031, 1
  %24 = ptrtoint ptr %blocksize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blocksize, align 4
  %div24 = lshr i32 %25, 2
  %cmp = icmp ult i32 %inc, %div24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %addr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %27, i32 68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %29 = or i32 %28, 32768
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %31, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %29) #7, !srcloc !226
  %wait_for = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 13
  %32 = ptrtoint ptr %wait_for to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %wait_for, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then8, %if.then
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_start_dma_rx(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %sg2 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg2, align 4
  %chan_rx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 23
  %6 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_rx, align 4
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %dev4 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %13, ptr noundef %5, i32 noundef %15, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %dma_active = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 26
  %16 = ptrtoint ptr %dma_active to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dma_active, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %lor.lhs.false.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.then
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 39
  %19 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body_crit_edge, label %if.end

lor.lhs.false2.i.do.body_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %20(ptr noundef nonnull %7, ptr noundef %5, i32 noundef %call, i32 noundef 2, i32 noundef 3, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then6

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sh_mmcif_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %host, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i, align 4
  %call.i83 = tail call i32 %24(ptr noundef nonnull %call.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %28 = or i32 %27, 1
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %28) #7, !srcloc !226
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 50
  %33 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %34(ptr noundef nonnull %7) #7
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end.do.body_crit_edge, %lor.lhs.false2.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %tobool.not90 = phi i1 [ false, %if.then6 ], [ true, %if.end.do.body_crit_edge ], [ true, %entry.do.body_crit_edge ], [ true, %lor.lhs.false2.i.do.body_crit_edge ], [ true, %lor.lhs.false.i.do.body_crit_edge ], [ true, %if.then.do.body_crit_edge ]
  %desc.089 = phi ptr [ %call.i, %if.then6 ], [ null, %if.end.do.body_crit_edge ], [ null, %entry.do.body_crit_edge ], [ null, %lor.lhs.false2.i.do.body_crit_edge ], [ null, %lor.lhs.false.i.do.body_crit_edge ], [ null, %if.then.do.body_crit_edge ]
  %cookie.0 = phi i32 [ %call.i83, %if.then6 ], [ -22, %if.end.do.body_crit_edge ], [ -22, %entry.do.body_crit_edge ], [ -22, %lor.lhs.false2.i.do.body_crit_edge ], [ -22, %lor.lhs.false.i.do.body_crit_edge ], [ -22, %if.then.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_start_dma_rx, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !229

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug277, ptr noundef %dev3, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, i32 noundef %36, i32 noundef %call, i32 noundef %cookie.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  br i1 %tobool.not90, label %if.then17, label %do.end.do.body31_crit_edge

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp18 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp18, i32 -5, i32 %call
  %37 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %chan_rx, align 4
  %dma_active22 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 26
  %38 = ptrtoint ptr %dma_active22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dma_active22, align 4
  tail call void @dma_release_channel(ptr noundef %7) #7
  %chan_tx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 24
  %39 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan_tx, align 4
  %tobool23.not = icmp eq ptr %40, null
  br i1 %tobool23.not, label %if.then17.do.end29_crit_edge, label %if.then24

if.then17.do.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

if.then24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %chan_tx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %40) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %if.then17.do.end29_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.81, i32 noundef %spec.store.select) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %addr.i84 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %42 = ptrtoint ptr %addr.i84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %43, i32 28
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %45 = and i32 %44, -4
  %46 = ptrtoint ptr %addr.i84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr.i84, align 4
  %add.ptr3.i86 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i86, i32 %45) #7, !srcloc !226
  br label %do.body31

do.body31:                                        ; preds = %do.end29, %do.end.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_start_dma_rx, %if.then43)) #7
          to label %do.end47 [label %if.then43], !srcloc !229

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sg_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug278, ptr noundef %dev3, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.79, ptr noundef %desc.089, i32 noundef %cookie.0, i32 noundef %49) #7
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_mmcif_start_dma_tx(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mrq, align 4
  %data1 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %sg2 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg2, align 4
  %chan_tx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 24
  %6 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_tx, align 4
  %pd = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 2
  %8 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %dev4 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_len, align 4
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %13, ptr noundef %5, i32 noundef %15, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  %dma_active = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 26
  %16 = ptrtoint ptr %dma_active to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %dma_active, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %lor.lhs.false.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.i:                                  ; preds = %if.then
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %7, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.body_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.body_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 39
  %19 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %20, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.body_crit_edge, label %if.end

lor.lhs.false2.i.do.body_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %20(ptr noundef nonnull %7, ptr noundef %5, i32 noundef %call, i32 noundef 1, i32 noundef 3, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then6

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @sh_mmcif_dma_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %22 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %host, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_submit.i, align 4
  %call.i81 = tail call i32 %24(ptr noundef nonnull %call.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %addr.i = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !233
  %28 = or i32 %27, 2
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %addr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %30, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %28) #7, !srcloc !226
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 50
  %33 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %34(ptr noundef nonnull %7) #7
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end.do.body_crit_edge, %lor.lhs.false2.i.do.body_crit_edge, %lor.lhs.false.i.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %tobool.not88 = phi i1 [ false, %if.then6 ], [ true, %if.end.do.body_crit_edge ], [ true, %entry.do.body_crit_edge ], [ true, %lor.lhs.false2.i.do.body_crit_edge ], [ true, %lor.lhs.false.i.do.body_crit_edge ], [ true, %if.then.do.body_crit_edge ]
  %desc.087 = phi ptr [ %call.i, %if.then6 ], [ null, %if.end.do.body_crit_edge ], [ null, %entry.do.body_crit_edge ], [ null, %lor.lhs.false2.i.do.body_crit_edge ], [ null, %lor.lhs.false.i.do.body_crit_edge ], [ null, %if.then.do.body_crit_edge ]
  %cookie.0 = phi i32 [ %call.i81, %if.then6 ], [ -22, %if.end.do.body_crit_edge ], [ -22, %entry.do.body_crit_edge ], [ -22, %lor.lhs.false2.i.do.body_crit_edge ], [ -22, %lor.lhs.false.i.do.body_crit_edge ], [ -22, %if.then.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_start_dma_tx, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !229

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug279, ptr noundef %dev3, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.83, i32 noundef %36, i32 noundef %call, i32 noundef %cookie.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  br i1 %tobool.not88, label %if.then17, label %do.end.do.body31_crit_edge

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp18 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp18, i32 -5, i32 %call
  %37 = ptrtoint ptr %chan_tx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %chan_tx, align 4
  %dma_active22 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 26
  %38 = ptrtoint ptr %dma_active22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %dma_active22, align 4
  tail call void @dma_release_channel(ptr noundef %7) #7
  %chan_rx = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 23
  %39 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan_rx, align 4
  %tobool23.not = icmp eq ptr %40, null
  br i1 %tobool23.not, label %if.then17.do.end29_crit_edge, label %if.then24

if.then17.do.end29_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end29

if.then24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %chan_rx, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %40) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %if.then17.do.end29_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev3, ptr noundef nonnull @.str.81, i32 noundef %spec.store.select) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %addr.i82 = getelementptr inbounds %struct.sh_mmcif_host, ptr %host, i32 0, i32 9
  %42 = ptrtoint ptr %addr.i82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %addr.i82, align 4
  %add.ptr.i83 = getelementptr i8, ptr %43, i32 28
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i83) #7, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !235
  %45 = and i32 %44, -4
  %46 = ptrtoint ptr %addr.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr.i82, align 4
  %add.ptr3.i84 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i84, i32 %45) #7, !srcloc !226
  br label %do.body31

do.body31:                                        ; preds = %do.end29, %do.end.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sh_mmcif_start_dma_tx, %if.then43)) #7
          to label %do.end46 [label %if.then43], !srcloc !229

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug280, ptr noundef %dev3, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, ptr noundef %desc.087, i32 noundef %cookie.0) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_qos_hide_latency_limit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_mmcif_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  %addr = getelementptr inbounds %struct.sh_mmcif_host, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !226
  %call.i5 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sh_mmcif_resume(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !139, !141, !143, !144, !145, !147, !148, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !193, !194, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !212, !213, !215}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @__initcall__kmod_sh_mmcif__302_1574_sh_mmcif_driver_init6, !1, !"__initcall__kmod_sh_mmcif__302_1574_sh_mmcif_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1574, i32 1}
!2 = !{ptr @__exitcall_sh_mmcif_driver_exit, !1, !"__exitcall_sh_mmcif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description303, !4, !"__UNIQUE_ID_description303", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1576, i32 1}
!5 = !{ptr @__UNIQUE_ID_file304, !6, !"__UNIQUE_ID_file304", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1577, i32 1}
!7 = !{ptr @__UNIQUE_ID_license305, !6, !"__UNIQUE_ID_license305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias306, !9, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1578, i32 1}
!10 = !{ptr @__UNIQUE_ID_author307, !11, !"__UNIQUE_ID_author307", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1579, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1567, i32 11}
!14 = !{ptr @sh_mmcif_driver, !15, !"sh_mmcif_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1563, i32 31}
!16 = !{ptr @sh_mmcif_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1427, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1449, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sh_mmcif_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @sh_mmcif_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @sh_mmcif_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1466, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sh_mmcif_probe.__key.9, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1471, i32 38}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1475, i32 3}
!36 = !{ptr @sh_mmcif_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sh_mmcif_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1481, i32 10}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1483, i32 4}
!42 = !{ptr @sh_mmcif_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sh_mmcif_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sh_mmcif_probe.__key.19, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1488, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1496, i32 2}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sh_mmcif_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sh_mmcif_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @sh_mmcif_ops, !53, !"sh_mmcif_ops", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1078, i32 34}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 979, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sh_mmcif_request.__UNIQUE_ID_ddebug291, !55, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 828, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sh_mmcif_set_cmd._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sh_mmcif_set_cmd._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 846, i32 4}
!65 = !{ptr @sh_mmcif_set_cmd._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sh_mmcif_set_cmd._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1036, i32 3}
!69 = !{ptr @sh_mmcif_set_ios.__UNIQUE_ID_ddebug293, !68, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 438, i32 41}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 441, i32 41}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 445, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sh_mmcif_request_dma.__UNIQUE_ID_ddebug281, !75, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 523, i32 3}
!80 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @sh_mmcif_clock_control.__UNIQUE_ID_ddebug282, !79, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1388, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sh_mmcif_init_ocr._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @sh_mmcif_init_ocr._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1024, i32 2}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sh_mmcif_clk_setup.__UNIQUE_ID_ddebug292, !89, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1339, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sh_mmcif_timeout_work._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sh_mmcif_timeout_work._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 567, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug283, !98, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 568, i32 2}
!103 = !{ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug284, !102, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 580, i32 4}
!106 = !{ptr @sh_mmcif_error_manage._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sh_mmcif_error_manage._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 585, i32 3}
!110 = !{ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug285, !109, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 590, i32 3}
!113 = !{ptr @sh_mmcif_error_manage._entry.51, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sh_mmcif_error_manage._entry_ptr.53, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 594, i32 3}
!117 = !{ptr @sh_mmcif_error_manage._entry.54, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @sh_mmcif_error_manage._entry_ptr.56, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 598, i32 3}
!121 = !{ptr @sh_mmcif_error_manage.__UNIQUE_ID_ddebug286, !120, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1300, i32 3}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug298, !123, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1305, i32 3}
!128 = !{ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug299, !127, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1309, i32 4}
!131 = !{ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug300, !130, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1315, i32 3}
!134 = !{ptr @sh_mmcif_intr.__UNIQUE_ID_ddebug301, !133, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 278, i32 2}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @sh_mmcif_dma_complete.__UNIQUE_ID_ddebug276, !136, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 280, i32 6}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1197, i32 3}
!143 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @sh_mmcif_irqt.__UNIQUE_ID_ddebug295, !142, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1235, i32 4}
!147 = !{ptr @sh_mmcif_irqt.__UNIQUE_ID_ddebug296, !146, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!148 = !{ptr @sh_mmcif_irqt.__UNIQUE_ID_ddebug297, !149, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1245, i32 4}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1102, i32 3}
!152 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @sh_mmcif_end_cmd.__UNIQUE_ID_ddebug294, !151, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1150, i32 3}
!156 = !{ptr @sh_mmcif_end_cmd._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sh_mmcif_end_cmd._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1155, i32 3}
!160 = !{ptr @sh_mmcif_end_cmd._entry.72, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sh_mmcif_end_cmd._entry_ptr.74, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1158, i32 3}
!164 = !{ptr @sh_mmcif_end_cmd._entry.75, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sh_mmcif_end_cmd._entry_ptr.77, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @init_completion.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../include/linux/completion.h", i32 87, i32 2}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 312, i32 2}
!171 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug277, !170, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 328, i32 3}
!175 = !{ptr @sh_mmcif_start_dma_rx._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @sh_mmcif_start_dma_rx._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 333, i32 2}
!179 = !{ptr @sh_mmcif_start_dma_rx.__UNIQUE_ID_ddebug278, !178, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 362, i32 2}
!182 = !{ptr @sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug279, !181, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!183 = !{ptr @sh_mmcif_start_dma_tx._entry, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 378, i32 3}
!185 = !{ptr @sh_mmcif_start_dma_tx._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 383, i32 2}
!188 = !{ptr @sh_mmcif_start_dma_tx.__UNIQUE_ID_ddebug280, !187, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 906, i32 3}
!191 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @sh_mmcif_data_trans._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @sh_mmcif_data_trans._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.87, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 688, i32 3}
!198 = !{ptr @sh_mmcif_mread_block.__UNIQUE_ID_ddebug288, !197, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!199 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 646, i32 3}
!201 = !{ptr @sh_mmcif_read_block.__UNIQUE_ID_ddebug287, !200, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 768, i32 3}
!204 = !{ptr @sh_mmcif_mwrite_block.__UNIQUE_ID_ddebug290, !203, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 726, i32 3}
!207 = !{ptr @sh_mmcif_write_block.__UNIQUE_ID_ddebug289, !206, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!208 = !{ptr @.str.92, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 963, i32 3}
!210 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @sh_mmcif_stop_cmd._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @sh_mmcif_stop_cmd._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @sh_mmcif_of_match, !214, !"sh_mmcif_of_match", i1 false, i1 false}
!214 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 252, i32 34}
!215 = !{ptr @sh_mmcif_dev_pm_ops, !216, !"sh_mmcif_dev_pm_ops", i1 false, i1 false}
!216 = !{!"../drivers/mmc/host/sh_mmcif.c", i32 1559, i32 32}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{i64 6295939}
!227 = !{i64 6296357}
!228 = !{i32 0, i32 33}
!229 = !{i64 2148761791, i64 2148761796, i64 2148761809, i64 2148761853, i64 2148761887, i64 2148761908}
!230 = !{i8 0, i8 2}
!231 = !{i64 2155101617, i64 2155102110, i64 2155101654, i64 2155101710, i64 2155101744, i64 2155101768, i64 2155101809, i64 2155101830, i64 2155101858, i64 2155101892}
!232 = !{i64 2154994356}
!233 = !{i64 2154995265}
!234 = !{i64 2154996391}
!235 = !{i64 2154997303}
!236 = !{!"branch_weights", i32 1, i32 2000}
!237 = !{i64 2155081763, i64 2155082256, i64 2155081800, i64 2155081856, i64 2155081890, i64 2155081914, i64 2155081955, i64 2155081976, i64 2155082004, i64 2155082038}
!238 = !{!"branch_weights", i32 2000, i32 1}
!239 = !{i64 2153857623, i64 2153858115, i64 2153857660, i64 2153857716, i64 2153857750, i64 2153857774, i64 2153857815, i64 2153857836, i64 2153857864, i64 2153857898}
!240 = !{i64 2155042655, i64 2155043147, i64 2155042692, i64 2155042748, i64 2155042782, i64 2155042806, i64 2155042847, i64 2155042868, i64 2155042896, i64 2155042930}
!241 = !{i64 2155036493, i64 2155036985, i64 2155036530, i64 2155036586, i64 2155036620, i64 2155036644, i64 2155036685, i64 2155036706, i64 2155036734, i64 2155036768}
!242 = !{i64 2155048849, i64 2155049341, i64 2155048886, i64 2155048942, i64 2155048976, i64 2155049000, i64 2155049041, i64 2155049062, i64 2155049090, i64 2155049124}
