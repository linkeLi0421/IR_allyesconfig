; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/sunxi-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/sunxi-mmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sunxi_mmc_cfg = type { i32, i32, ptr, i8, i8, i8, i8 }
%struct.sunxi_mmc_clk_delay = type { i32, i32 }
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
%struct.sunxi_mmc_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, ptr, i8, ptr, ptr, i32, i8, i8 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sunxi_idma_des = type { i32, i32, i32, i32 }

@__initcall__kmod_sunxi_mmc__313_1549_sunxi_mmc_driver_init6 = internal global ptr @sunxi_mmc_driver_init, section ".initcall6.init", align 4
@sunxi_mmc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_mmc_probe, ptr @sunxi_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sunxi_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_mmc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_mmc_driver_exit = internal global ptr @sunxi_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description314 = internal constant [64 x i8] c"sunxi_mmc.description=Allwinner's SD/MMC Card Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [42 x i8] c"sunxi_mmc.file=drivers/mmc/host/sunxi-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [25 x i8] c"sunxi_mmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author317 = internal constant [66 x i8] c"sunxi_mmc.author=David Lanzend\C3\B6rfer <david.lanzendoerfer@o2s.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias318 = internal constant [35 x i8] c"sunxi_mmc.alias=platform:sunxi-mmc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi-mmc\00", [22 x i8] zeroinitializer }, align 32
@sunxi_mmc_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_emmc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_emmc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_emmc_cfg }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@sunxi_mmc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_mmc_runtime_suspend, ptr @sunxi_mmc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1364, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmc alloc host failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_mmc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mmc/host/sunxi-mmc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry_ptr = internal global ptr @sunxi_mmc_probe._entry, section ".printk_index", align 4
@sunxi_mmc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate DMA descriptor mem\0A\00", [57 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry_ptr.9 = internal global ptr @sunxi_mmc_probe._entry.7, section ".printk_index", align 4
@sunxi_mmc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1400, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MMC clk timing mode unknown\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry_ptr.13 = internal global ptr @sunxi_mmc_probe._entry.10, section ".printk_index", align 4
@sunxi_mmc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @sunxi_mmc_request, ptr null, ptr @sunxi_mmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr @sunxi_mmc_enable_sdio_irq, ptr null, ptr null, ptr @sunxi_mmc_volt_switch, ptr @sunxi_mmc_card_busy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_mmc_hw_reset, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"allwinner,sun50i-h5-emmc\00", [39 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1468, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"initialized, max. request size: %u KB%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sunxi_mmc_probe._entry_ptr.18 = internal global ptr @sunxi_mmc_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c", uses new timings mode\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get ahb clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sunxi_mmc_resource_request\00", [37 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry_ptr = internal global ptr @sunxi_mmc_resource_request._entry, section ".printk_index", align 4
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmc\00", [28 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 1315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get mmc clock\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry_ptr.27 = internal global ptr @sunxi_mmc_resource_request._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.3, i32 1322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get output clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry_ptr.31 = internal global ptr @sunxi_mmc_resource_request._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sample\00", [25 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.3, i32 1328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get sample clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sunxi_mmc_resource_request._entry_ptr.35 = internal global ptr @sunxi_mmc_resource_request._entry.33, section ".printk_index", align 4
@sunxi_mmc_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't reset the MMC controller (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sunxi_mmc_enable\00", [47 x i8] zeroinitializer }, align 32
@sunxi_mmc_enable._entry_ptr = internal global ptr @sunxi_mmc_enable._entry, section ".printk_index", align 4
@sunxi_mmc_enable._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 1231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't enable the bus clocks (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@sunxi_mmc_enable._entry_ptr.40 = internal global ptr @sunxi_mmc_enable._entry.38, section ".printk_index", align 4
@sunxi_mmc_enable._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 1237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Enable mmc clk err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sunxi_mmc_enable._entry_ptr.43 = internal global ptr @sunxi_mmc_enable._entry.41, section ".printk_index", align 4
@sunxi_mmc_enable._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 1243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Enable output clk err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_mmc_enable._entry_ptr.46 = internal global ptr @sunxi_mmc_enable._entry.44, section ".printk_index", align 4
@sunxi_mmc_enable._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.3, i32 1249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Enable sample clk err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sunxi_mmc_enable._entry_ptr.49 = internal global ptr @sunxi_mmc_enable._entry.47, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sunxi_mmc_reset_host._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 317, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fatal err reset timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_mmc_reset_host\00", [43 x i8] zeroinitializer }, align 32
@sunxi_mmc_reset_host._entry_ptr = internal global ptr @sunxi_mmc_reset_host._entry, section ".printk_index", align 4
@sunxi_mmc_irq.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi_mmc\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sunxi_mmc_irq\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq: rq %p mi %08x idi %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@sunxi_mmc_dump_errinfo.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sunxi_mmc_dump_errinfo\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"smc %d err, cmd %d,%s%s%s%s%s%s%s%s%s%s !!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" WR\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" RD\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" RE\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" RCE\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DCE\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" RTO\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DTO\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" FE\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" HL\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" SBE\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" EBE\00", [27 x i8] zeroinitializer }, align 32
@sunxi_mmc_handle_manual_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no request for manual stop\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sunxi_mmc_handle_manual_stop\00", [35 x i8] zeroinitializer }, align 32
@sunxi_mmc_handle_manual_stop._entry_ptr = internal global ptr @sunxi_mmc_handle_manual_stop._entry, section ".printk_index", align 4
@sunxi_mmc_handle_manual_stop._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"data error, sending stop command\0A\00", [62 x i8] zeroinitializer }, align 32
@sunxi_mmc_handle_manual_stop._entry_ptr.72 = internal global ptr @sunxi_mmc_handle_manual_stop._entry.70, section ".printk_index", align 4
@sunxi_mmc_send_manual_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"send stop command failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sunxi_mmc_send_manual_stop\00", [37 x i8] zeroinitializer }, align 32
@sunxi_mmc_send_manual_stop._entry_ptr = internal global ptr @sunxi_mmc_send_manual_stop._entry, section ".printk_index", align 4
@sunxi_mmc_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1029, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"map DMA failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_mmc_request\00", [46 x i8] zeroinitializer }, align 32
@sunxi_mmc_request._entry_ptr = internal global ptr @sunxi_mmc_request._entry, section ".printk_index", align 4
@sunxi_mmc_request.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 1, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cmd %d(%08x) arg %x ie 0x%08x len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sunxi_mmc_request._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.76, ptr @.str.3, i32 1083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"request already pending\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_mmc_request._entry_ptr.80 = internal global ptr @sunxi_mmc_request._entry.78, section ".printk_index", align 4
@sunxi_mmc_map_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_map_sg failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sunxi_mmc_map_dma\00", [46 x i8] zeroinitializer }, align 32
@sunxi_mmc_map_dma._entry_ptr = internal global ptr @sunxi_mmc_map_dma._entry, section ".printk_index", align 4
@sunxi_mmc_map_dma._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 414, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unaligned scatterlist: os %x length %d\0A\00", [56 x i8] zeroinitializer }, align 32
@sunxi_mmc_map_dma._entry_ptr.85 = internal global ptr @sunxi_mmc_map_dma._entry.83, section ".printk_index", align 4
@sunxi_mmc_card_power.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_mmc_card_power\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Powering card up\0A\00", [46 x i8] zeroinitializer }, align 32
@sunxi_mmc_card_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable vqmmc\0A\00", [40 x i8] zeroinitializer }, align 32
@sunxi_mmc_card_power._entry_ptr = internal global ptr @sunxi_mmc_card_power._entry, section ".printk_index", align 4
@sunxi_mmc_card_power.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.86, ptr @.str.3, ptr @.str.89, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Powering card off\0A\00", [45 x i8] zeroinitializer }, align 32
@sunxi_mmc_card_power.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.86, ptr @.str.3, ptr @.str.90, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Ignoring unknown card power state\0A\00", [61 x i8] zeroinitializer }, align 32
@sunxi_mmc_clk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 797, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error setting new timing mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sunxi_mmc_clk_set_rate\00", [41 x i8] zeroinitializer }, align 32
@sunxi_mmc_clk_set_rate._entry_ptr = internal global ptr @sunxi_mmc_clk_set_rate._entry, section ".printk_index", align 4
@sunxi_mmc_clk_set_rate._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error rounding clk to %d: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@sunxi_mmc_clk_set_rate._entry_ptr.95 = internal global ptr @sunxi_mmc_clk_set_rate._entry.93, section ".printk_index", align 4
@sunxi_mmc_clk_set_rate.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.92, ptr @.str.3, ptr @.str.96, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"setting clk to %d, rounded %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@sunxi_mmc_clk_set_rate._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.92, ptr @.str.3, i32 815, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error setting clk to %ld: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sunxi_mmc_clk_set_rate._entry_ptr.99 = internal global ptr @sunxi_mmc_clk_set_rate._entry.97, section ".printk_index", align 4
@sunxi_mmc_oclk_onoff.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 0, i8 -90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_mmc_oclk_onoff\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%sabling the clock\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@sunxi_mmc_oclk_onoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.100, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fatal err update clk timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@sunxi_mmc_oclk_onoff._entry_ptr = internal global ptr @sunxi_mmc_oclk_onoff._entry, section ".printk_index", align 4
@sunxi_mmc_clk_set_phase.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.105, ptr @.str.3, ptr @.str.106, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sunxi_mmc_clk_set_phase\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid clock... returning\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun4i_a10_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 13, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun5i_a13_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun7i_a20_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr @sunxi_mmc_clk_delays, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun8i_a83t_emmc_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr @sunxi_mmc_clk_delays, i8 0, i8 0, i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@sun9i_a80_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr @sun9i_mmc_clk_delays, i8 0, i8 0, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun50i_a64_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr null, i8 1, i8 1, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun50i_a64_emmc_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 13, i32 0, ptr null, i8 1, i8 0, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun50i_a100_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 16, i32 2, ptr null, i8 1, i8 1, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sun50i_a100_emmc_cfg = internal constant { %struct.sunxi_mmc_cfg, [16 x i8] } { %struct.sunxi_mmc_cfg { i32 13, i32 2, ptr null, i8 1, i8 0, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@sunxi_mmc_clk_delays = internal constant { [5 x %struct.sunxi_mmc_clk_delay], [56 x i8] } { [5 x %struct.sunxi_mmc_clk_delay] [%struct.sunxi_mmc_clk_delay { i32 180, i32 180 }, %struct.sunxi_mmc_clk_delay { i32 180, i32 75 }, %struct.sunxi_mmc_clk_delay { i32 90, i32 120 }, %struct.sunxi_mmc_clk_delay { i32 60, i32 120 }, %struct.sunxi_mmc_clk_delay { i32 90, i32 180 }], [56 x i8] zeroinitializer }, align 32
@sun9i_mmc_clk_delays = internal constant { [5 x %struct.sunxi_mmc_clk_delay], [56 x i8] } { [5 x %struct.sunxi_mmc_clk_delay] [%struct.sunxi_mmc_clk_delay { i32 180, i32 180 }, %struct.sunxi_mmc_clk_delay { i32 180, i32 75 }, %struct.sunxi_mmc_clk_delay { i32 150, i32 120 }, %struct.sunxi_mmc_clk_delay { i32 54, i32 36 }, %struct.sunxi_mmc_clk_delay { i32 72, i32 72 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 67108864]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 52]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"sunxi_mmc_driver\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1539, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1541, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"sunxi_mmc_of_match\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1202, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"sunxi_mmc_pm_ops\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1531, i32 32 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1364, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1372, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1381, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1400, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"sunxi_mmc_ops\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1111, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1431, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1466, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1307, i32 43 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1309, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1313, i32 43 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1315, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1320, i32 47 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1322, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1326, i32 47 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1328, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1223, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1231, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1237, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1243, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1249, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 317, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 581, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 493, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 635, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 639, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 471, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1029, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1070, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1083, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 406, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 412, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 908, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 921, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 930, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 942, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 796, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 804, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 808, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 814, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 665, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 690, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 749, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [14 x i8] c"sun4i_a10_cfg\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1139, i32 35 }
@___asan_gen_.438 = private unnamed_addr constant [14 x i8] c"sun5i_a13_cfg\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1145, i32 35 }
@___asan_gen_.441 = private unnamed_addr constant [14 x i8] c"sun7i_a20_cfg\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1151, i32 35 }
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c"sun8i_a83t_emmc_cfg\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1157, i32 35 }
@___asan_gen_.447 = private unnamed_addr constant [14 x i8] c"sun9i_a80_cfg\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1164, i32 35 }
@___asan_gen_.450 = private unnamed_addr constant [15 x i8] c"sun50i_a64_cfg\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1170, i32 35 }
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c"sun50i_a64_emmc_cfg\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1178, i32 35 }
@___asan_gen_.456 = private unnamed_addr constant [16 x i8] c"sun50i_a100_cfg\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1185, i32 35 }
@___asan_gen_.459 = private unnamed_addr constant [21 x i8] c"sun50i_a100_emmc_cfg\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1194, i32 35 }
@___asan_gen_.462 = private unnamed_addr constant [21 x i8] c"sunxi_mmc_clk_delays\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1122, i32 41 }
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"sun9i_mmc_clk_delays\00", align 1
@___asan_gen_.466 = private constant [32 x i8] c"../drivers/mmc/host/sunxi-mmc.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 1131, i32 41 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @__UNIQUE_ID_alias318, ptr @__UNIQUE_ID_author317, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_sunxi_mmc_driver_exit, ptr @__initcall__kmod_sunxi_mmc__313_1549_sunxi_mmc_driver_init6, ptr @sunxi_mmc_card_power._entry, ptr @sunxi_mmc_card_power._entry_ptr, ptr @sunxi_mmc_clk_set_rate._entry, ptr @sunxi_mmc_clk_set_rate._entry.93, ptr @sunxi_mmc_clk_set_rate._entry.97, ptr @sunxi_mmc_clk_set_rate._entry_ptr, ptr @sunxi_mmc_clk_set_rate._entry_ptr.95, ptr @sunxi_mmc_clk_set_rate._entry_ptr.99, ptr @sunxi_mmc_driver_exit, ptr @sunxi_mmc_enable._entry, ptr @sunxi_mmc_enable._entry.38, ptr @sunxi_mmc_enable._entry.41, ptr @sunxi_mmc_enable._entry.44, ptr @sunxi_mmc_enable._entry.47, ptr @sunxi_mmc_enable._entry_ptr, ptr @sunxi_mmc_enable._entry_ptr.40, ptr @sunxi_mmc_enable._entry_ptr.43, ptr @sunxi_mmc_enable._entry_ptr.46, ptr @sunxi_mmc_enable._entry_ptr.49, ptr @sunxi_mmc_handle_manual_stop._entry, ptr @sunxi_mmc_handle_manual_stop._entry.70, ptr @sunxi_mmc_handle_manual_stop._entry_ptr, ptr @sunxi_mmc_handle_manual_stop._entry_ptr.72, ptr @sunxi_mmc_map_dma._entry, ptr @sunxi_mmc_map_dma._entry.83, ptr @sunxi_mmc_map_dma._entry_ptr, ptr @sunxi_mmc_map_dma._entry_ptr.85, ptr @sunxi_mmc_oclk_onoff._entry, ptr @sunxi_mmc_oclk_onoff._entry_ptr, ptr @sunxi_mmc_probe._entry, ptr @sunxi_mmc_probe._entry.10, ptr @sunxi_mmc_probe._entry.15, ptr @sunxi_mmc_probe._entry.7, ptr @sunxi_mmc_probe._entry_ptr, ptr @sunxi_mmc_probe._entry_ptr.13, ptr @sunxi_mmc_probe._entry_ptr.18, ptr @sunxi_mmc_probe._entry_ptr.9, ptr @sunxi_mmc_request._entry, ptr @sunxi_mmc_request._entry.78, ptr @sunxi_mmc_request._entry_ptr, ptr @sunxi_mmc_request._entry_ptr.80, ptr @sunxi_mmc_reset_host._entry, ptr @sunxi_mmc_reset_host._entry_ptr, ptr @sunxi_mmc_resource_request._entry, ptr @sunxi_mmc_resource_request._entry.25, ptr @sunxi_mmc_resource_request._entry.29, ptr @sunxi_mmc_resource_request._entry.33, ptr @sunxi_mmc_resource_request._entry_ptr, ptr @sunxi_mmc_resource_request._entry_ptr.27, ptr @sunxi_mmc_resource_request._entry_ptr.31, ptr @sunxi_mmc_resource_request._entry_ptr.35, ptr @sunxi_mmc_send_manual_stop._entry, ptr @sunxi_mmc_send_manual_stop._entry_ptr, ptr @sunxi_mmc_driver, ptr @.str, ptr @sunxi_mmc_of_match, ptr @sunxi_mmc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sunxi_mmc_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @sunxi_mmc_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @sun4i_a10_cfg, ptr @sun5i_a13_cfg, ptr @sun7i_a20_cfg, ptr @sun8i_a83t_emmc_cfg, ptr @sun9i_a80_cfg, ptr @sun50i_a64_cfg, ptr @sun50i_a64_emmc_cfg, ptr @sun50i_a100_cfg, ptr @sun50i_a100_emmc_cfg, ptr @sunxi_mmc_clk_delays, ptr @sun9i_mmc_clk_delays], section "llvm.metadata"
@0 = internal global [119 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_resource_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_resource_request._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_resource_request._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_resource_request._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_enable._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_enable._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_enable._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_enable._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_reset_host._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_handle_manual_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_handle_manual_stop._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_send_manual_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_request._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_map_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_map_dma._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_card_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_clk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_clk_set_rate._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_clk_set_rate._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_oclk_onoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_emmc_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_emmc_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_emmc_cfg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_clk_delays to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_mmc_clk_delays to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_mmc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mmc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_mmc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @mmc_alloc_host(i32 noundef 120, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 70
  %1 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %private.i, align 4
  %mmc5 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %mmc5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mmc5, align 4
  %lock = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sunxi_mmc_probe.__key, i16 noundef signext 3) #6
  %call.i = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %cfg.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %cfg.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.error_free_host_crit_edge, label %if.end.i

if.end.error_free_host_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_host

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %mmc5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc5, align 4
  %call2.i = tail call i32 @mmc_regulator_get_supply(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.error_free_host_crit_edge

if.end.i.error_free_host_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_host

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %reg_base.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6.i, ptr %reg_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end12.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call6.i to i32
  br label %sunxi_mmc_resource_request.exit

if.end12.i:                                       ; preds = %if.end5.i
  %call14.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #6
  %clk_ahb.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14.i, ptr %clk_ahb.i, align 4
  %cmp.i125.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125.i, label %do.end.i, label %if.end21.i

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  %9 = ptrtoint ptr %clk_ahb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_ahb.i, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %sunxi_mmc_resource_request.exit

if.end21.i:                                       ; preds = %if.end12.i
  %call23.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.24) #6
  %clk_mmc.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %clk_mmc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call23.i, ptr %clk_mmc.i, align 4
  %cmp.i126.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126.i, label %do.end29.i, label %if.end33.i

do.end29.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  %13 = ptrtoint ptr %clk_mmc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_mmc.i, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %sunxi_mmc_resource_request.exit

if.end33.i:                                       ; preds = %if.end21.i
  %16 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i, align 4
  %clk_delays.i = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %clk_delays.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_delays.i, align 4
  %tobool35.not.i = icmp eq ptr %19, null
  br i1 %tobool35.not.i, label %if.end33.i.if.end61.i_crit_edge, label %if.then36.i

if.end33.i.if.end61.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

if.then36.i:                                      ; preds = %if.end33.i
  %call38.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.28) #6
  %clk_output.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %clk_output.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38.i, ptr %clk_output.i, align 4
  %cmp.i127.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %do.end44.i, label %if.end48.i

do.end44.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  %21 = ptrtoint ptr %clk_output.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_output.i, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %sunxi_mmc_resource_request.exit

if.end48.i:                                       ; preds = %if.then36.i
  %call50.i = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.32) #6
  %clk_sample.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %clk_sample.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call50.i, ptr %clk_sample.i, align 4
  %cmp.i128.i = icmp ugt ptr %call50.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %do.end56.i, label %if.end48.i.if.end61.i_crit_edge

if.end48.i.if.end61.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i

do.end56.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  %25 = ptrtoint ptr %clk_sample.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk_sample.i, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %sunxi_mmc_resource_request.exit

if.end61.i:                                       ; preds = %if.end48.i.if.end61.i_crit_edge, %if.end33.i.if.end61.i_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %reset.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1
  %28 = ptrtoint ptr %reset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %reset.i, align 4
  %cmp.i = icmp eq ptr %call.i.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.end61.i.error_free_host_crit_edge, label %if.end69.i

if.end61.i.error_free_host_crit_edge:             ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_host

if.end69.i:                                       ; preds = %if.end61.i
  %call70.i = tail call fastcc i32 @sunxi_mmc_enable(ptr noundef %private.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %if.end73.i, label %if.end69.i.error_free_host_crit_edge

if.end69.i.error_free_host_crit_edge:             ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_host

if.end73.i:                                       ; preds = %if.end69.i
  %call74.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq.i = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call74.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call74.i)
  %cmp76.i = icmp slt i32 %call74.i, 1
  br i1 %cmp76.i, label %if.then77.i, label %if.end78.i

if.then77.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sunxi_mmc_disable(ptr noundef %private.i) #6
  br label %error_free_host

if.end78.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %call81.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call74.i, ptr noundef nonnull @sunxi_mmc_irq, ptr noundef nonnull @sunxi_mmc_handle_manual_stop, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %private.i) #6
  br label %sunxi_mmc_resource_request.exit

sunxi_mmc_resource_request.exit:                  ; preds = %if.end78.i, %do.end56.i, %do.end44.i, %do.end29.i, %do.end.i, %if.then9.i
  %retval.0.i = phi i32 [ %7, %if.then9.i ], [ %11, %do.end.i ], [ %15, %do.end29.i ], [ %23, %do.end44.i ], [ %27, %do.end56.i ], [ %call81.i, %if.end78.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool11.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool11.not, label %if.end13, label %sunxi_mmc_resource_request.exit.error_free_host_crit_edge

sunxi_mmc_resource_request.exit.error_free_host_crit_edge: ; preds = %sunxi_mmc_resource_request.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_host

if.end13:                                         ; preds = %sunxi_mmc_resource_request.exit
  %sg_dma = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %call.i167 = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %sg_dma, i32 noundef 3264, i32 noundef 0) #6
  %sg_cpu = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %30 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i167, ptr %sg_cpu, align 4
  %tobool17.not = icmp eq ptr %call.i167, null
  br i1 %tobool17.not, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %error_free_host

if.end23:                                         ; preds = %if.end13
  %31 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i, align 4
  %ccu_has_timings_switch = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ccu_has_timings_switch to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ccu_has_timings_switch, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool24.not = icmp eq i8 %34, 0
  br i1 %tobool24.not, label %if.else38, label %if.then25

if.then25:                                        ; preds = %if.end23
  %clk_mmc = getelementptr inbounds %struct.mmc_host, ptr %call, i32 1, i32 1, i32 0, i32 3
  %35 = ptrtoint ptr %clk_mmc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_mmc, align 4
  %call26 = tail call i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef %36, i1 noundef zeroext true) #6
  %37 = ptrtoint ptr %clk_mmc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk_mmc, align 4
  %call28 = tail call i32 @sunxi_ccu_get_mmc_timing_mode(ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp = icmp slt i32 %call28, 0
  br i1 %cmp, label %do.end32, label %if.else

do.end32:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %use_new_timings = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 20
  %39 = ptrtoint ptr %use_new_timings to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %use_new_timings, align 1
  br label %if.end44

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool34 = icmp ne i32 %call28, 0
  %use_new_timings36 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 20
  %frombool = zext i1 %tobool34 to i8
  %40 = ptrtoint ptr %use_new_timings36 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %use_new_timings36, align 1
  br label %if.end44

if.else38:                                        ; preds = %if.end23
  %needs_new_timings = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %32, i32 0, i32 5
  %41 = ptrtoint ptr %needs_new_timings to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %needs_new_timings, align 2, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool40.not = icmp eq i8 %42, 0
  br i1 %tobool40.not, label %if.else38.if.end44_crit_edge, label %if.then41

if.else38.if.end44_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #8
  %use_new_timings42 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 20
  %43 = ptrtoint ptr %use_new_timings42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %use_new_timings42, align 1
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.else38.if.end44_crit_edge, %if.else, %do.end32
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 3
  %44 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @sunxi_mmc_ops, ptr %ops, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 25
  %45 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8192, ptr %max_blk_count, align 128
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 24
  %46 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %max_blk_size, align 4
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 21
  %47 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 256, ptr %max_segs, align 4
  %48 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cfg.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %shl = shl nuw i32 1, %51
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 20
  %52 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shl, ptr %max_seg_size, align 16
  %mul = shl i32 %shl, 8
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 23
  %53 = ptrtoint ptr %max_req_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul, ptr %max_req_size, align 8
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 5
  %54 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 400000, ptr %f_min, align 4
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 6
  %55 = ptrtoint ptr %f_max to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 52000000, ptr %f_max, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 16
  %56 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %caps, align 32
  %or = or i32 %57, 14
  store i32 %or, ptr %caps, align 32
  %clk_delays = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %49, i32 0, i32 2
  %58 = ptrtoint ptr %clk_delays to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk_delays, align 4
  %tobool49.not = icmp eq ptr %59, null
  br i1 %tobool49.not, label %lor.lhs.false, label %if.end44.land.lhs.true_crit_edge

if.end44.land.lhs.true_crit_edge:                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end44
  %use_new_timings50 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 20
  %60 = ptrtoint ptr %use_new_timings50 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %use_new_timings50, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool51.not = icmp eq i8 %61, 0
  br i1 %tobool51.not, label %lor.lhs.false.if.end59_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end44.land.lhs.true_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %62 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node, align 8
  %call54 = tail call i32 @of_device_is_compatible(ptr noundef %63, ptr noundef nonnull @.str.14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then56, label %land.lhs.true.if.end59_crit_edge

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %caps, align 32
  %or58 = or i32 %65, 6144
  store i32 %or58, ptr %caps, align 32
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %land.lhs.true.if.end59_crit_edge, %lor.lhs.false.if.end59_crit_edge
  %call60 = tail call i32 @mmc_of_parse(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.error_free_dma_crit_edge

if.end59.error_free_dma_crit_edge:                ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_dma

if.end63:                                         ; preds = %if.end59
  %66 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cfg.i, align 4
  %clk_delays65 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %clk_delays65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk_delays65, align 4
  %tobool66.not = icmp eq ptr %69, null
  br i1 %tobool66.not, label %lor.lhs.false67, label %if.end63.if.end74_crit_edge

if.end63.if.end74_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

lor.lhs.false67:                                  ; preds = %if.end63
  %use_new_timings68 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 20
  %70 = ptrtoint ptr %use_new_timings68 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %use_new_timings68, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool69.not = icmp eq i8 %71, 0
  br i1 %tobool69.not, label %if.then71, label %lor.lhs.false67.if.end74_crit_edge

lor.lhs.false67.if.end74_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then71:                                        ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %caps, align 32
  %and = and i32 %73, -2045953
  store i32 %and, ptr %caps, align 32
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %74 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %caps2, align 4
  %and73 = and i32 %75, -97
  store i32 %and73, ptr %caps2, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %lor.lhs.false67.if.end74_crit_edge, %if.end63.if.end74_crit_edge
  %caps275 = getelementptr inbounds %struct.mmc_host, ptr %call, i32 0, i32 17
  %76 = ptrtoint ptr %caps275 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %caps275, align 4
  %and76 = and i32 %77, -98305
  store i32 %and76, ptr %caps275, align 4
  %call77 = tail call fastcc i32 @sunxi_mmc_init_host(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end74.error_free_dma_crit_edge

if.end74.error_free_dma_crit_edge:                ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_dma

if.end80:                                         ; preds = %if.end74
  %call.i168 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 50) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call86 = tail call i32 @mmc_add_host(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.end92, label %if.end80.error_free_dma_crit_edge

if.end80.error_free_dma_crit_edge:                ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_free_dma

do.end92:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_req_size, align 8
  %shr = lshr i32 %79, 10
  %use_new_timings95 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 20
  %80 = ptrtoint ptr %use_new_timings95 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %use_new_timings95, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool96.not = icmp eq i8 %81, 0
  %cond = select i1 %tobool96.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %shr, ptr noundef nonnull %cond) #9
  br label %cleanup

error_free_dma:                                   ; preds = %if.end80.error_free_dma_crit_edge, %if.end74.error_free_dma_crit_edge, %if.end59.error_free_dma_crit_edge
  %ret.0 = phi i32 [ %call60, %if.end59.error_free_dma_crit_edge ], [ %call77, %if.end74.error_free_dma_crit_edge ], [ %call86, %if.end80.error_free_dma_crit_edge ]
  %82 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sg_cpu, align 4
  %84 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sg_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %83, i32 noundef %85, i32 noundef 0) #6
  br label %error_free_host

error_free_host:                                  ; preds = %error_free_dma, %do.end21, %sunxi_mmc_resource_request.exit.error_free_host_crit_edge, %if.then77.i, %if.end69.i.error_free_host_crit_edge, %if.end61.i.error_free_host_crit_edge, %if.end.i.error_free_host_crit_edge, %if.end.error_free_host_crit_edge
  %ret.1 = phi i32 [ %retval.0.i, %sunxi_mmc_resource_request.exit.error_free_host_crit_edge ], [ %ret.0, %error_free_dma ], [ -12, %do.end21 ], [ -517, %if.end61.i.error_free_host_crit_edge ], [ %call70.i, %if.end69.i.error_free_host_crit_edge ], [ %call2.i, %if.end.i.error_free_host_crit_edge ], [ -22, %if.end.error_free_host_crit_edge ], [ -22, %if.then77.i ]
  tail call void @mmc_free_host(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %error_free_host, %do.end92, %do.end
  %retval.0 = phi i32 [ %ret.1, %error_free_host ], [ 0, %do.end92 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  tail call void @mmc_remove_host(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #6
  %irq = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  tail call fastcc void @sunxi_mmc_disable(ptr noundef %private.i)
  %sg_cpu = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %4 = ptrtoint ptr %sg_cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_cpu, align 4
  %sg_dma = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %6 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %5, i32 noundef %7, i32 noundef 0) #6
  tail call void @mmc_free_host(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_ccu_get_mmc_timing_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_init_host(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 117440512) #6, !srcloc !234
  %add.neg.i = sub i32 -25, %0
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %entry
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  %7 = and i32 %5, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %do.end7.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

do.end7.i:                                        ; preds = %do.body1.i
  br i1 %tobool.not.i, label %do.body, label %sunxi_mmc_reset_host.exit

sunxi_mmc_reset_host.exit:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50) #9
  br label %cleanup

do.body:                                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134219552) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr5 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %sdio_imask = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 12
  %16 = ptrtoint ptr %sdio_imask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sdio_imask, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %add.ptr10 = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %18) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 -351469568) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  %add.ptr25 = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 43726) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %sg_dma = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 13
  %27 = ptrtoint ptr %sg_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sg_dma, align 4
  %cfg = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 3
  %29 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg, align 4
  %idma_des_shift = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %idma_des_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %idma_des_shift, align 4
  %shr = lshr i32 %28, %32
  %33 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %34 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_base.i, align 4
  %add.ptr30 = getelementptr i8, ptr %35, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %33) #6, !srcloc !234
  %36 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  %39 = and i32 %38, -268435521
  %40 = or i32 %39, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !234
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sunxi_mmc_reset_host.exit
  %retval.0 = phi i32 [ 0, %do.body ], [ -5, %sunxi_mmc_reset_host.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_enable(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 2
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @reset_control_reset(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36, i32 noundef %call2) #9
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk_ahb = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 5
  %4 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_ahb, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.do.end10_crit_edge

if.end4.do.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10

if.end.i:                                         ; preds = %if.end4
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end12, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then3.i, %if.end4.do.end10_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end4.do.end10_crit_edge ]
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, i32 noundef %retval.0.i.ph) #9
  br label %error_assert_reset

if.end12:                                         ; preds = %if.end.i
  %clk_mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 6
  %8 = ptrtoint ptr %clk_mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_mmc, align 4
  %call.i80 = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end.i84, label %if.end12.do.end18_crit_edge

if.end12.do.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

if.end.i84:                                       ; preds = %if.end12
  %call1.i82 = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool2.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool2.not.i83, label %if.end20, label %if.then3.i85

if.then3.i85:                                     ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then3.i85, %if.end12.do.end18_crit_edge
  %retval.0.i86.ph = phi i32 [ %call1.i82, %if.then3.i85 ], [ %call.i80, %if.end12.do.end18_crit_edge ]
  %10 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i86.ph) #9
  br label %error_disable_clk_ahb

if.end20:                                         ; preds = %if.end.i84
  %clk_output = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 8
  %12 = ptrtoint ptr %clk_output to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_output, align 4
  %call.i88 = tail call i32 @clk_prepare(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i89 = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i89, label %if.end.i92, label %if.end20.do.end26_crit_edge

if.end20.do.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end.i92:                                       ; preds = %if.end20
  %call1.i90 = tail call i32 @clk_enable(ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90)
  %tobool2.not.i91 = icmp eq i32 %call1.i90, 0
  br i1 %tobool2.not.i91, label %if.end28, label %if.then3.i93

if.then3.i93:                                     ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then3.i93, %if.end20.do.end26_crit_edge
  %retval.0.i94.ph = phi i32 [ %call1.i90, %if.then3.i93 ], [ %call.i88, %if.end20.do.end26_crit_edge ]
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i94.ph) #9
  br label %error_disable_clk_mmc

if.end28:                                         ; preds = %if.end.i92
  %clk_sample = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 7
  %16 = ptrtoint ptr %clk_sample to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_sample, align 4
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end.i100, label %if.end28.do.end34_crit_edge

if.end28.do.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.end.i100:                                      ; preds = %if.end28
  %call1.i98 = tail call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool2.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool2.not.i99, label %if.end36, label %if.then3.i101

if.then3.i101:                                    ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i101, %if.end28.do.end34_crit_edge
  %retval.0.i102.ph = phi i32 [ %call1.i98, %if.then3.i101 ], [ %call.i96, %if.end28.do.end34_crit_edge ]
  %18 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i102.ph) #9
  br label %error_disable_clk_output

if.end36:                                         ; preds = %if.end.i100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 4
  %21 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 117440512) #6, !srcloc !234
  %add.neg.i = sub i32 -25, %20
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %if.end36
  %23 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i104 = icmp sgt i32 %sub.i, -1
  %27 = and i32 %25, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i105 = icmp eq i32 %27, 0
  %or.cond.i = select i1 %cmp.i104, i1 true, i1 %tobool.not.i105
  br i1 %or.cond.i, label %do.end7.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

do.end7.i:                                        ; preds = %do.body1.i
  br i1 %tobool.not.i105, label %do.end7.i.cleanup_crit_edge, label %error_disable_clk_sample

do.end7.i.cleanup_crit_edge:                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error_disable_clk_sample:                         ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %28 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmc.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.50) #9
  %32 = ptrtoint ptr %clk_sample to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk_sample, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  tail call void @clk_unprepare(ptr noundef %33) #6
  br label %error_disable_clk_output

error_disable_clk_output:                         ; preds = %error_disable_clk_sample, %do.end34
  %ret.0 = phi i32 [ %retval.0.i102.ph, %do.end34 ], [ -5, %error_disable_clk_sample ]
  %34 = ptrtoint ptr %clk_output to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_output, align 4
  tail call void @clk_disable(ptr noundef %35) #6
  tail call void @clk_unprepare(ptr noundef %35) #6
  br label %error_disable_clk_mmc

error_disable_clk_mmc:                            ; preds = %error_disable_clk_output, %do.end26
  %ret.1 = phi i32 [ %retval.0.i94.ph, %do.end26 ], [ %ret.0, %error_disable_clk_output ]
  %36 = ptrtoint ptr %clk_mmc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_mmc, align 4
  tail call void @clk_disable(ptr noundef %37) #6
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %error_disable_clk_ahb

error_disable_clk_ahb:                            ; preds = %error_disable_clk_mmc, %do.end18
  %ret.2 = phi i32 [ %retval.0.i86.ph, %do.end18 ], [ %ret.1, %error_disable_clk_mmc ]
  %38 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %error_assert_reset

error_assert_reset:                               ; preds = %error_disable_clk_ahb, %do.end10
  %ret.3 = phi i32 [ %retval.0.i.ph, %do.end10 ], [ %ret.2, %error_disable_clk_ahb ]
  %40 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reset, align 4
  %cmp.i107 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %error_assert_reset.cleanup_crit_edge, label %if.then47

error_assert_reset.cleanup_crit_edge:             ; preds = %error_assert_reset
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then47:                                        ; preds = %error_assert_reset
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 @reset_control_assert(ptr noundef %41) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %error_assert_reset.cleanup_crit_edge, %do.end7.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %ret.3, %if.then47 ], [ %ret.3, %error_assert_reset.cleanup_crit_edge ], [ 0, %do.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %reg_base = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !235
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  %4 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 52
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !235
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_irq.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_irq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  %mrq13 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 16
  %12 = ptrtoint ptr %mrq13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mrq13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_irq.__UNIQUE_ID_ddebug305, ptr noundef %11, ptr noundef nonnull @.str.54, ptr noundef %13, i32 noundef %7, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mrq14 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 16
  %14 = ptrtoint ptr %mrq14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mrq14, align 4
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %do.end.if.end48_crit_edge, label %if.then16

do.end.if.end48_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then16:                                        ; preds = %do.end
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then16.if.end19_crit_edge, label %if.then18

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %wait_dma = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 15
  %16 = ptrtoint ptr %wait_dma to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %wait_dma, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then16.if.end19_crit_edge
  %int_sum = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 11
  %17 = ptrtoint ptr %int_sum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_sum, align 4
  %or = or i32 %18, %7
  store i32 %or, ptr %int_sum, align 4
  %19 = and i32 %or, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %19)
  %20 = icmp eq i32 %19, 256
  br i1 %20, label %do.body27, label %if.else

do.body27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void @arm_heavy_mb() #6
  %sdio_imask = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 12
  %21 = ptrtoint ptr %sdio_imask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdio_imask, align 4
  %or30 = or i32 %22, 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %or30)
  %24 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_base, align 4
  %add.ptr32 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %23) #6, !srcloc !234
  br label %if.end48

if.else:                                          ; preds = %if.end19
  %and34 = and i32 %or, 48066
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else37, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else37:                                        ; preds = %if.else
  %and39 = and i32 %or, 17420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else37.if.end48_crit_edge, label %land.lhs.true41

if.else37.if.end48_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true41:                                  ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  %wait_dma42 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 15
  %26 = ptrtoint ptr %wait_dma42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wait_dma42, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true41, %if.else37.if.end48_crit_edge, %if.else.if.end48_crit_edge, %do.body27, %do.end.if.end48_crit_edge
  %finalize.0.off0 = phi i1 [ false, %if.else37.if.end48_crit_edge ], [ false, %do.body27 ], [ false, %do.end.if.end48_crit_edge ], [ true, %if.else.if.end48_crit_edge ], [ %tobool43.not, %land.lhs.true41 ]
  %and49 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_base, align 4
  %add.ptr57 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %6) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_base, align 4
  %add.ptr62 = getelementptr i8, ptr %31, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %2) #6, !srcloc !234
  br i1 %finalize.0.off0, label %if.then64, label %if.end66.thread

if.end66.thread:                                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %if.end72

if.then64:                                        ; preds = %if.end48
  %32 = ptrtoint ptr %mrq14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mrq14, align 4
  %data2.i = getelementptr inbounds %struct.mmc_request, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %sdio_imask.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 12
  %36 = ptrtoint ptr %sdio_imask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sdio_imask.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #6
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %42, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #6, !srcloc !234
  %int_sum.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 11
  %43 = ptrtoint ptr %int_sum.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %int_sum.i, align 4
  %and.i = and i32 %44, 48066
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then64
  tail call fastcc void @sunxi_mmc_dump_errinfo(ptr noundef %dev_id) #6
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %33, i32 0, i32 1
  %45 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cmd.i, align 4
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -110, ptr %error.i, align 4
  %tobool8.not.i = icmp eq ptr %35, null
  br i1 %tobool8.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then9.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %error10.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 5
  %48 = ptrtoint ptr %error10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -110, ptr %error10.i, align 4
  %manual_stop_mrq.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 17
  %49 = ptrtoint ptr %manual_stop_mrq.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %33, ptr %manual_stop_mrq.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i.if.end.i_crit_edge
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %33, i32 0, i32 3
  %50 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %stop.i, align 4
  %tobool11.not.i = icmp eq ptr %51, null
  br i1 %tobool11.not.i, label %if.end.i.if.end69.i_crit_edge, label %if.then12.i

if.end.i.if.end69.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %error14.i = getelementptr inbounds %struct.mmc_command, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -110, ptr %error14.i, align 4
  br label %if.end69.i

if.else.i:                                        ; preds = %if.then64
  %cmd16.i = getelementptr inbounds %struct.mmc_request, ptr %33, i32 0, i32 1
  %53 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmd16.i, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %and17.i = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %57 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_base, align 4
  br i1 %tobool18.not.i, label %if.else54.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr21.i = getelementptr i8, ptr %58, i32 44
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #6, !srcloc !235
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  %61 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cmd16.i, align 4
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %resp.i, align 4
  %64 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base, align 4
  %add.ptr27.i = getelementptr i8, ptr %65, i32 40
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #6, !srcloc !235
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  %68 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cmd16.i, align 4
  %arrayidx33.i = getelementptr %struct.mmc_command, ptr %69, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %arrayidx33.i, align 4
  %71 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_base, align 4
  %add.ptr37.i = getelementptr i8, ptr %72, i32 36
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #6, !srcloc !235
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  %75 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cmd16.i, align 4
  %arrayidx43.i = getelementptr %struct.mmc_command, ptr %76, i32 0, i32 2, i32 2
  %77 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %arrayidx43.i, align 4
  %78 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_base, align 4
  %add.ptr47.i = getelementptr i8, ptr %79, i32 32
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #6, !srcloc !235
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  %82 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd16.i, align 4
  %arrayidx53.i = getelementptr %struct.mmc_command, ptr %83, i32 0, i32 2, i32 3
  %84 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %81, ptr %arrayidx53.i, align 4
  br label %if.end65.i

if.else54.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr58.i = getelementptr i8, ptr %58, i32 32
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58.i) #6, !srcloc !235
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  %87 = ptrtoint ptr %cmd16.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cmd16.i, align 4
  %resp63.i = getelementptr inbounds %struct.mmc_command, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %resp63.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %86, ptr %resp63.i, align 4
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.else54.i, %if.then19.i
  %cond165.i = icmp eq ptr %35, null
  br i1 %cond165.i, label %if.end65.i.if.end66_crit_edge, label %if.end69.thread.i

if.end65.i.if.end66_crit_edge:                    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end69.thread.i:                                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #8
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 3
  %90 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 2
  %92 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %93, %91
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 7
  %94 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %mul.i, ptr %bytes_xfered.i, align 4
  br label %do.body72.i

if.end69.i:                                       ; preds = %if.then12.i, %if.end.i.if.end69.i_crit_edge
  br i1 %tobool8.not.i, label %if.end69.i.if.end66_crit_edge, label %if.end69.i.do.body72.i_crit_edge

if.end69.i.do.body72.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body72.i

if.end69.i.if.end66_crit_edge:                    ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.body72.i:                                      ; preds = %if.end69.i.do.body72.i_crit_edge, %if.end69.thread.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_base, align 4
  %add.ptr76.i = getelementptr i8, ptr %96, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i, i32 922943488) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %reg_base, align 4
  %add.ptr81.i = getelementptr i8, ptr %98, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 0) #6, !srcloc !234
  %99 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_base, align 4
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  %102 = or i32 %101, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  tail call void @arm_heavy_mb() #6
  %103 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %102) #6, !srcloc !234
  %105 = and i32 %102, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 %105) #6, !srcloc !234
  %108 = or i32 %105, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !264
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #6, !srcloc !234
  %mmc.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 1
  %111 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmc.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 128
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 12
  %115 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 10
  %117 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %35, i32 0, i32 6
  %119 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %120, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %114, ptr noundef %116, i32 noundef %118, i32 noundef %cond.i.i, i32 noundef 0) #6
  br label %if.end66

if.end66:                                         ; preds = %do.body72.i, %if.end69.i.if.end66_crit_edge, %if.end65.i.if.end66_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !265
  tail call void @arm_heavy_mb() #6
  %121 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_base, align 4
  %add.ptr112.i = getelementptr i8, ptr %122, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112.i, i32 -65536) #6, !srcloc !234
  %123 = ptrtoint ptr %mrq14 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %mrq14, align 4
  %124 = ptrtoint ptr %int_sum.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %int_sum.i, align 4
  %wait_dma.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 15
  %125 = ptrtoint ptr %wait_dma.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %wait_dma.i, align 4
  %manual_stop_mrq115.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 17
  %126 = ptrtoint ptr %manual_stop_mrq115.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %manual_stop_mrq115.i, align 4
  %tobool116.not.i = icmp eq ptr %127, null
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br i1 %tobool116.not.i, label %if.then70, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %mmc71 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 1
  %128 = ptrtoint ptr %mmc71 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmc71, align 4
  tail call void @mmc_request_done(ptr noundef %129, ptr noundef %15) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66.if.end72_crit_edge, %if.end66.thread
  %ret.0113 = phi i32 [ 1, %if.end66.thread ], [ 1, %if.then70 ], [ 2, %if.end66.if.end72_crit_edge ]
  br i1 %tobool50.not, label %if.end72.if.end76_crit_edge, label %if.then74

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then74:                                        ; preds = %if.end72
  %mmc75 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 1
  %130 = ptrtoint ptr %mmc75 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmc75, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %133, i32 0, i32 7
  %134 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %135(ptr noundef %131, i32 noundef 0) #6
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %131, i32 0, i32 49
  %136 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %131, i32 0, i32 47
  %137 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i106 = icmp eq ptr %138, null
  br i1 %tobool.not.i106, label %if.then74.if.end76_crit_edge, label %if.then.i107

if.then74.if.end76_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then.i107:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %138) #6
  br label %if.end76

if.end76:                                         ; preds = %if.then.i107, %if.then74.if.end76_crit_edge, %if.end72.if.end76_crit_edge
  ret i32 %ret.0113
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_handle_manual_stop(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %manual_stop_mrq = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %manual_stop_mrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manual_stop_mrq, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %tobool.not = icmp eq ptr %1, null
  %mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  br i1 %tobool.not, label %do.end8, label %do.end11

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.68) #9
  br label %cleanup

do.end11:                                         ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.71) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %10)
  %cmp.i = icmp eq i32 %10, 53
  br i1 %cmp.i, label %if.then.i, label %do.end11.do.body.i_crit_edge

do.end11.do.body.i_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.then.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %arg2.i = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %arg2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg2.i, align 4
  %shr.i = lshr i32 %12, 28
  %and.i = and i32 %shr.i, 7
  %or3.i = or i32 %and.i, -2147480576
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %do.end11.do.body.i_crit_edge
  %cmd_val.0.i = phi i32 [ -2147466892, %if.then.i ], [ -2147466932, %do.end11.do.body.i_crit_edge ]
  %arg.0.i = phi i32 [ %or3.i, %if.then.i ], [ 0, %do.end11.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !266
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %arg.0.i) #6
  %reg_base.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !267
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %cmd_val.0.i) #6
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %16) #6, !srcloc !234
  %add.neg.i = sub i32 -100, %6
  br label %do.body10.i

do.body10.i:                                      ; preds = %land.rhs.i.do.body10.i_crit_edge, %do.body.i
  %19 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %20, i32 56
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !268
  %22 = and i32 %21, -960823296
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.body10.i.do.end26.i_crit_edge [
    i32 0, label %land.rhs.i
    i32 67108864, label %if.else31.i
  ]

do.body10.i.do.end26.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26.i

land.rhs.i:                                       ; preds = %do.body10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %24
  %cmp17.i = icmp slt i32 %sub.i, 0
  br i1 %cmp17.i, label %land.rhs.i.do.body10.i_crit_edge, label %land.rhs.i.do.end26.i_crit_edge

land.rhs.i.do.end26.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26.i

land.rhs.i.do.body10.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10.i

do.end26.i:                                       ; preds = %land.rhs.i.do.end26.i_crit_edge, %do.body10.i.do.end26.i_crit_edge
  %25 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmc, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.73) #9
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop.i, align 4
  %tobool27.not.i = icmp eq ptr %30, null
  br i1 %tobool27.not.i, label %do.end26.i.sunxi_mmc_send_manual_stop.exit_crit_edge, label %do.end26.i.do.body47.sink.split.i_crit_edge

do.end26.i.do.body47.sink.split.i_crit_edge:      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47.sink.split.i

do.end26.i.sunxi_mmc_send_manual_stop.exit_crit_edge: ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_send_manual_stop.exit

if.else31.i:                                      ; preds = %do.body10.i
  %stop32.i = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %stop32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stop32.i, align 4
  %tobool33.not.i = icmp eq ptr %32, null
  br i1 %tobool33.not.i, label %if.else31.i.sunxi_mmc_send_manual_stop.exit_crit_edge, label %if.then34.i

if.else31.i.sunxi_mmc_send_manual_stop.exit_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_send_manual_stop.exit

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %34, i32 32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #6, !srcloc !235
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !269
  %37 = ptrtoint ptr %stop32.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %stop32.i, align 4
  br label %do.body47.sink.split.i

do.body47.sink.split.i:                           ; preds = %if.then34.i, %do.end26.i.do.body47.sink.split.i_crit_edge
  %.sink67.i = phi ptr [ %38, %if.then34.i ], [ %30, %do.end26.i.do.body47.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ %36, %if.then34.i ], [ -110, %do.end26.i.do.body47.sink.split.i_crit_edge ]
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %.sink67.i, i32 0, i32 2
  %39 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink.i, ptr %resp.i, align 4
  br label %sunxi_mmc_send_manual_stop.exit

sunxi_mmc_send_manual_stop.exit:                  ; preds = %do.body47.sink.split.i, %if.else31.i.sunxi_mmc_send_manual_stop.exit_crit_edge, %do.end26.i.sunxi_mmc_send_manual_stop.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !270
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_base.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %41, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 -65536) #6, !srcloc !234
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %42 = ptrtoint ptr %manual_stop_mrq to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %manual_stop_mrq, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #6
  %43 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmc, align 4
  tail call void @mmc_request_done(ptr noundef %44, ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %sunxi_mmc_send_manual_stop.exit, %do.end8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_disable(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 4
  %1 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 117440512) #6, !srcloc !234
  %add.neg.i = sub i32 -25, %0
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %entry
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  %7 = and i32 %5, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %do.end7.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

do.end7.i:                                        ; preds = %do.body1.i
  br i1 %tobool.not.i, label %do.end7.i.sunxi_mmc_reset_host.exit_crit_edge, label %do.end12.i

do.end7.i.sunxi_mmc_reset_host.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_reset_host.exit

do.end12.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %8 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmc.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.50) #9
  br label %sunxi_mmc_reset_host.exit

sunxi_mmc_reset_host.exit:                        ; preds = %do.end12.i, %do.end7.i.sunxi_mmc_reset_host.exit_crit_edge
  %clk_sample = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 7
  %12 = ptrtoint ptr %clk_sample to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_sample, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %clk_output = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 8
  %14 = ptrtoint ptr %clk_output to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_output, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %clk_mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 6
  %16 = ptrtoint ptr %clk_mmc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_mmc, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %clk_ahb = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 5
  %18 = ptrtoint ptr %clk_ahb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_ahb, align 4
  tail call void @clk_disable(ptr noundef %19) #6
  tail call void @clk_unprepare(ptr noundef %19) #6
  %reset = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 2
  %20 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reset, align 4
  %cmp.i10 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i10, label %sunxi_mmc_reset_host.exit.if.end_crit_edge, label %if.then

sunxi_mmc_reset_host.exit.if.end_crit_edge:       ; preds = %sunxi_mmc_reset_host.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sunxi_mmc_reset_host.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @reset_control_assert(ptr noundef %21) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sunxi_mmc_reset_host.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_dump_errinfo(ptr nocapture noundef readonly %host) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mrq = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 16
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
  %int_sum = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 11
  %6 = ptrtoint ptr %int_sum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_sum, align 4
  %and = and i32 %7, 48066
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and)
  %cmp = icmp eq i32 %and, 256
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %9, label %land.lhs.true.do.body_crit_edge [
    i32 5, label %land.lhs.true.cleanup_crit_edge
    i32 52, label %land.lhs.true.cleanup_crit_edge72
  ]

land.lhs.true.cleanup_crit_edge72:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_dump_errinfo.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_dump_errinfo, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !248

if.then9:                                         ; preds = %do.body
  %mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %index = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 8
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then9.cond.end_crit_edge, label %cond.true

if.then9.cond.end_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and13 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond = select i1 %tobool14.not, ptr @.str.58, ptr @.str.57
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then9.cond.end_crit_edge
  %cond15 = phi ptr [ %cond, %cond.true ], [ @.str.20, %if.then9.cond.end_crit_edge ]
  %21 = ptrtoint ptr %int_sum to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %int_sum, align 4
  %and17 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.20, ptr @.str.59
  %and21 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.20, ptr @.str.60
  %and25 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.20, ptr @.str.61
  %and29 = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.20, ptr @.str.62
  %and33 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %cond35 = select i1 %tobool34.not, ptr @.str.20, ptr @.str.63
  %and37 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond39 = select i1 %tobool38.not, ptr @.str.20, ptr @.str.64
  %and41 = and i32 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %cond43 = select i1 %tobool42.not, ptr @.str.20, ptr @.str.65
  %and45 = and i32 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.20, ptr @.str.66
  %and49 = and i32 %22, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.20, ptr @.str.67
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_dump_errinfo.__UNIQUE_ID_ddebug304, ptr noundef %14, ptr noundef nonnull @.str.56, i32 noundef %16, i32 noundef %18, ptr noundef nonnull %cond15, ptr noundef nonnull %cond19, ptr noundef nonnull %cond23, ptr noundef nonnull %cond27, ptr noundef nonnull %cond31, ptr noundef nonnull %cond35, ptr noundef nonnull %cond39, ptr noundef nonnull %cond43, ptr noundef nonnull %cond47, ptr noundef nonnull %cond51) #6
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.body, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mmc_request(ptr noundef %mmc, ptr noundef %mrq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 63
  %wait_dma3 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 3
  %6 = ptrtoint ptr %wait_dma3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wait_dma3, align 4, !range !232
  %ferror = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %ferror to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ferror, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %mmc.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 1
  %11 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 128
  %sg1.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sg1.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_len.i, align 4
  %flags.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %call2.i = tail call i32 @dma_map_sg_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %cond.i.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmc.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.81) #9
  br label %do.end

if.end.i:                                         ; preds = %if.then8
  %25 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp734.not.i = icmp eq i32 %26, 0
  br i1 %cmp734.not.i, label %if.end.i.if.end14_crit_edge, label %for.body.preheader.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body.preheader.i:                             ; preds = %if.end.i
  %27 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sg1.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %sg.036.i = phi ptr [ %call19.i, %for.inc.i.for.body.i_crit_edge ], [ %28, %for.body.preheader.i ]
  %i.035.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.036.i, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %30, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %for.body.i.do.end13.i_crit_edge

for.body.i.do.end13.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.036.i, i32 0, i32 2
  %31 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length.i, align 4
  %and8.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %lor.lhs.false.i.do.end13.i_crit_edge

lor.lhs.false.i.do.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13.i

do.end13.i:                                       ; preds = %lor.lhs.false.i.do.end13.i_crit_edge, %for.body.i.do.end13.i_crit_edge
  %33 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmc.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 128
  %length17.i = getelementptr inbounds %struct.scatterlist, ptr %sg.036.i, i32 0, i32 2
  %37 = ptrtoint ptr %length17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length17.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.84, i32 noundef %30, i32 noundef %38) #9
  br label %do.end

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %inc.i = add nuw i32 %i.035.i, 1
  %call19.i = tail call ptr @sg_next(ptr noundef %sg.036.i) #6
  %39 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sg_len.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %40
  br i1 %cmp7.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end14_crit_edge

for.inc.i.if.end14_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end:                                           ; preds = %do.end13.i, %do.end.i
  %retval.0.i229.ph = phi i32 [ -22, %do.end13.i ], [ -12, %do.end.i ]
  %41 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.75) #9
  %error11 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %43 = ptrtoint ptr %error11 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i229.ph, ptr %error11, align 4
  %error12 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %error12 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i229.ph, ptr %error12, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #6
  br label %cleanup

if.end14:                                         ; preds = %for.inc.i.if.end14_crit_edge, %if.end.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp16 = icmp eq i32 %46, 0
  %spec.select = select i1 %cmp16, i32 48070, i32 48066
  %spec.select227.v = select i1 %cmp16, i32 -2147450880, i32 -2147483648
  %spec.select227 = or i32 %spec.select227.v, %and
  %flags = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and21 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else60, label %if.then23

if.then23:                                        ; preds = %if.end14
  %and26 = and i32 %48, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %spec.select228.v = select i1 %tobool27.not, i32 64, i32 192
  %and32 = shl i32 %48, 6
  %49 = and i32 %and32, 256
  %spec.select228 = or i32 %49, %spec.select227
  %50 = or i32 %spec.select228, %spec.select228.v
  %and38 = and i32 %48, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and38)
  %cmp39 = icmp eq i32 %and38, 32
  br i1 %cmp39, label %if.then40, label %if.else57

if.then40:                                        ; preds = %if.then23
  %data42 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %data42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data42, align 4
  %stop = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stop, align 4
  %tobool43.not = icmp eq ptr %54, null
  %imask.1.v = select i1 %tobool43.not, i32 8, i32 16384
  %imask.1 = or i32 %imask.1.v, %spec.select
  %cmd_val.3.v = select i1 %tobool43.not, i32 8704, i32 12800
  %cmd_val.3 = or i32 %cmd_val.3.v, %50
  %flags50 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 6
  %55 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags50, align 4
  %and51 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.then40.do.body63_crit_edge, label %if.then53

if.then40.do.body63_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

if.then53:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %or54 = or i32 %cmd_val.3, 1024
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %extract.t = icmp ne i8 %7, 0
  br label %do.body63

if.else57:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %extract.t225 = icmp ne i8 %7, 0
  br label %do.body63

if.else60:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %extract.t226 = icmp ne i8 %7, 0
  br label %do.body63

do.body63:                                        ; preds = %if.else60, %if.else57, %if.then53, %if.then40.do.body63_crit_edge
  %imask.2 = phi i32 [ %imask.1, %if.then53 ], [ 48070, %if.else57 ], [ 48070, %if.else60 ], [ %imask.1, %if.then40.do.body63_crit_edge ]
  %cmd_val.4 = phi i32 [ %or54, %if.then53 ], [ %50, %if.else57 ], [ %spec.select227, %if.else60 ], [ %cmd_val.3, %if.then40.do.body63_crit_edge ]
  %wait_dma.0.off0 = phi i1 [ %extract.t, %if.then53 ], [ %extract.t225, %if.else57 ], [ %extract.t226, %if.else60 ], [ true, %if.then40.do.body63_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_request.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_request, %if.then69)) #6
          to label %do.body80 [label %if.then69], !srcloc !248

if.then69:                                        ; preds = %do.body63
  %57 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmc, align 128
  %and71 = and i32 %cmd_val.4, 63
  %arg = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arg, align 4
  %61 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data2, align 4
  %tobool73.not = icmp eq ptr %62, null
  br i1 %tobool73.not, label %if.then69.cond.end_crit_edge, label %cond.true

if.then69.cond.end_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blocks, align 4
  %mul = mul i32 %66, %64
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then69.cond.end_crit_edge
  %cond = phi i32 [ %mul, %cond.true ], [ 0, %if.then69.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_request.__UNIQUE_ID_ddebug312, ptr noundef %58, ptr noundef nonnull @.str.77, i32 noundef %and71, i32 noundef %cmd_val.4, i32 noundef %60, i32 noundef %imask.2, i32 noundef %cond) #6
  br label %do.body80

do.body80:                                        ; preds = %cond.end, %do.body63
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mrq89 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  %67 = ptrtoint ptr %mrq89 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mrq89, align 4
  %tobool90.not = icmp eq ptr %68, null
  br i1 %tobool90.not, label %lor.lhs.false, label %do.body80.if.then92_crit_edge

do.body80.if.then92_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

lor.lhs.false:                                    ; preds = %do.body80
  %manual_stop_mrq = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1
  %69 = ptrtoint ptr %manual_stop_mrq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %manual_stop_mrq, align 4
  %tobool91.not = icmp eq ptr %70, null
  br i1 %tobool91.not, label %if.end105, label %lor.lhs.false.if.then92_crit_edge

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %do.body80.if.then92_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call84) #6
  br i1 %tobool7.not, label %if.then92.do.end101_crit_edge, label %if.then95

if.then92.do.end101_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end101

if.then95:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmc, align 128
  %sg = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  %73 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %75 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sg_len, align 4
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %77 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i, align 4
  %and.i230 = and i32 %78, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i230)
  %tobool.not.i231 = icmp eq i32 %and.i230, 0
  %cond.i = select i1 %tobool.not.i231, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %72, ptr noundef %74, i32 noundef %76, i32 noundef %cond.i, i32 noundef 0) #6
  br label %do.end101

do.end101:                                        ; preds = %if.then95, %if.then92.do.end101_crit_edge
  %79 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmc, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.79) #9
  %81 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd1, align 4
  %error104 = getelementptr inbounds %struct.mmc_command, ptr %82, i32 0, i32 5
  %83 = ptrtoint ptr %error104 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -16, ptr %error104, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %mrq) #6
  br label %cleanup

if.end105:                                        ; preds = %lor.lhs.false
  br i1 %tobool7.not, label %if.end105.if.end120_crit_edge, label %do.body108

if.end105.if.end120_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120

do.body108:                                       ; preds = %if.end105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !271
  tail call void @arm_heavy_mb() #6
  %blksz111 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %84 = ptrtoint ptr %blksz111 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %blksz111, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %reg_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %88, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %86) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !272
  tail call void @arm_heavy_mb() #6
  %89 = ptrtoint ptr %blksz111 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %blksz111, align 4
  %blocks116 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 3
  %91 = ptrtoint ptr %blocks116 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %blocks116, align 4
  %mul117 = mul i32 %92, %90
  %93 = tail call i32 @llvm.bswap.i32(i32 %mul117)
  %94 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_base, align 4
  %add.ptr119 = getelementptr i8, ptr %95, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %93) #6, !srcloc !234
  %sg_cpu.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 2
  %96 = ptrtoint ptr %sg_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sg_cpu.i.i, align 4
  %cfg.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  %98 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cfg.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  %shl.i.i = shl nuw i32 1, %101
  %sg_len.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 10
  %102 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sg_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp56.not.i.i = icmp eq i32 %103, 0
  br i1 %cmp56.not.i.i, label %do.body108.sunxi_mmc_init_idma_des.exit.i_crit_edge, label %for.body.lr.ph.i.i

do.body108.sunxi_mmc_init_idma_des.exit.i_crit_edge: ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_init_idma_des.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.body108
  %sg_dma.i.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 1
  %104 = ptrtoint ptr %sg_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sg_dma.i.i, align 4
  %sg.i.i = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.058.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %next_desc.057.i.i = phi i32 [ %105, %for.body.lr.ph.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.sunxi_idma_des, ptr %97, i32 %i.058.i.i
  %106 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 301990016, ptr %arrayidx.i.i, align 4
  %107 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sg.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %108, i32 %i.058.i.i, i32 2
  %109 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %110, i32 %shl.i.i)
  %cmp2.i.i = icmp eq i32 %110, %shl.i.i
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #6
  %spec.select.i.i = select i1 %cmp2.i.i, i32 0, i32 %111
  %112 = getelementptr %struct.sunxi_idma_des, ptr %97, i32 %i.058.i.i, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %spec.select.i.i, ptr %112, align 4
  %add.i.i = add i32 %next_desc.057.i.i, 16
  %114 = ptrtoint ptr %sg.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sg.i.i, align 4
  %dma_address.i.i = getelementptr %struct.scatterlist, ptr %115, i32 %i.058.i.i, i32 3
  %116 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_address.i.i, align 4
  %118 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %cfg.i.i, align 4
  %idma_des_shift.i.i = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %idma_des_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %idma_des_shift.i.i, align 4
  %shr.i.i = lshr i32 %117, %121
  %122 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i) #6
  %buf_addr_ptr1.i.i = getelementptr %struct.sunxi_idma_des, ptr %97, i32 %i.058.i.i, i32 2
  %123 = ptrtoint ptr %buf_addr_ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %buf_addr_ptr1.i.i, align 4
  %124 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cfg.i.i, align 4
  %idma_des_shift14.i.i = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %idma_des_shift14.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %idma_des_shift14.i.i, align 4
  %shr15.i.i = lshr i32 %add.i.i, %127
  %128 = tail call i32 @llvm.bswap.i32(i32 %shr15.i.i) #6
  %buf_addr_ptr2.i.i = getelementptr %struct.sunxi_idma_des, ptr %97, i32 %i.058.i.i, i32 3
  %129 = ptrtoint ptr %buf_addr_ptr2.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %buf_addr_ptr2.i.i, align 4
  %inc.i.i = add nuw i32 %i.058.i.i, 1
  %130 = ptrtoint ptr %sg_len.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sg_len.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %131
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.sunxi_mmc_init_idma_des.exit.i_crit_edge

for.body.i.i.sunxi_mmc_init_idma_des.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_init_idma_des.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

sunxi_mmc_init_idma_des.exit.i:                   ; preds = %for.body.i.i.sunxi_mmc_init_idma_des.exit.i_crit_edge, %do.body108.sunxi_mmc_init_idma_des.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ -1, %do.body108.sunxi_mmc_init_idma_des.exit.i_crit_edge ], [ %i.058.i.i, %for.body.i.i.sunxi_mmc_init_idma_des.exit.i_crit_edge ]
  %132 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %97, align 4
  %or.i.i = or i32 %133, 134217728
  store i32 %or.i.i, ptr %97, align 4
  %arrayidx19.i.i = getelementptr %struct.sunxi_idma_des, ptr %97, i32 %i.0.lcssa.i.i
  %134 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx19.i.i, align 4
  %or21.i.i = and i32 %135, -637534209
  %and.i.i232 = or i32 %or21.i.i, 603979776
  store i32 %and.i.i232, ptr %arrayidx19.i.i, align 4
  %buf_addr_ptr227.i.i = getelementptr %struct.sunxi_idma_des, ptr %97, i32 %i.0.lcssa.i.i, i32 3
  %136 = ptrtoint ptr %buf_addr_ptr227.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %buf_addr_ptr227.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !273
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %reg_base, align 4
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !274
  %140 = or i32 %139, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !275
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %140) #6, !srcloc !234
  %143 = or i32 %139, 603979776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !276
  tail call void @arm_heavy_mb() #6
  %144 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %143) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !277
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_base, align 4
  %add.ptr14.i = getelementptr i8, ptr %147, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 16777216) #6, !srcloc !234
  %flags.i233 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 6
  %148 = ptrtoint ptr %flags.i233 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %flags.i233, align 4
  %and.i234 = and i32 %149, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.not.i235 = icmp eq i32 %and.i234, 0
  br i1 %tobool.not.i235, label %do.body15.i, label %sunxi_mmc_init_idma_des.exit.i.sunxi_mmc_start_dma.exit_crit_edge

sunxi_mmc_init_idma_des.exit.i.sunxi_mmc_start_dma.exit_crit_edge: ; preds = %sunxi_mmc_init_idma_des.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_start_dma.exit

do.body15.i:                                      ; preds = %sunxi_mmc_init_idma_des.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !278
  tail call void @arm_heavy_mb() #6
  %150 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %reg_base, align 4
  %add.ptr19.i = getelementptr i8, ptr %151, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 33554432) #6, !srcloc !234
  br label %sunxi_mmc_start_dma.exit

sunxi_mmc_start_dma.exit:                         ; preds = %do.body15.i, %sunxi_mmc_init_idma_des.exit.i.sunxi_mmc_start_dma.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !279
  tail call void @arm_heavy_mb() #6
  %152 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_base, align 4
  %add.ptr24.i = getelementptr i8, ptr %153, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 -2113929216) #6, !srcloc !234
  br label %if.end120

if.end120:                                        ; preds = %sunxi_mmc_start_dma.exit, %if.end105.if.end120_crit_edge
  %154 = ptrtoint ptr %mrq89 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %mrq, ptr %mrq89, align 4
  %frombool124 = zext i1 %wait_dma.0.off0 to i8
  %155 = ptrtoint ptr %wait_dma3 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %frombool124, ptr %wait_dma3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !280
  tail call void @arm_heavy_mb() #6
  %sdio_imask = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  %156 = ptrtoint ptr %sdio_imask to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sdio_imask, align 4
  %or128 = or i32 %157, %imask.2
  %158 = tail call i32 @llvm.bswap.i32(i32 %or128)
  %reg_base129 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %159 = ptrtoint ptr %reg_base129 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %reg_base129, align 4
  %add.ptr130 = getelementptr i8, ptr %160, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %158) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !281
  tail call void @arm_heavy_mb() #6
  %arg134 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %161 = ptrtoint ptr %arg134 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arg134, align 4
  %163 = tail call i32 @llvm.bswap.i32(i32 %162)
  %164 = ptrtoint ptr %reg_base129 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %reg_base129, align 4
  %add.ptr136 = getelementptr i8, ptr %165, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %163) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !282
  tail call void @arm_heavy_mb() #6
  %166 = tail call i32 @llvm.bswap.i32(i32 %cmd_val.4)
  %167 = ptrtoint ptr %reg_base129 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %reg_base129, align 4
  %add.ptr141 = getelementptr i8, ptr %168, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %166) #6, !srcloc !234
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call84) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %do.end101, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mmc_set_ios(ptr nocapture noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  tail call fastcc void @sunxi_mmc_card_power(ptr noundef %private.i, ptr noundef %ios)
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bus_width, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %1, label %entry.sunxi_mmc_set_bus_width.exit_crit_edge [
    i8 0, label %do.body.i
    i8 2, label %do.body2.i
    i8 3, label %do.body7.i
  ]

entry.sunxi_mmc_set_bus_width.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_set_bus_width.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !234
  br label %sunxi_mmc_set_bus_width.exit

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !284
  tail call void @arm_heavy_mb() #6
  %reg_base4.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %reg_base4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #6, !srcloc !234
  br label %sunxi_mmc_set_bus_width.exit

do.body7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !285
  tail call void @arm_heavy_mb() #6
  %reg_base9.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %reg_base9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 33554432) #6, !srcloc !234
  br label %sunxi_mmc_set_bus_width.exit

sunxi_mmc_set_bus_width.exit:                     ; preds = %do.body7.i, %do.body2.i, %do.body.i, %entry.sunxi_mmc_set_bus_width.exit_crit_edge
  %reg_base.i5 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %reg_base.i5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base.i5, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  %timing.i = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %12 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %timing.i, align 4
  %.off.i = add i8 %13, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %14 = and i32 %11, -262145
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %masksel.i = select i1 %switch.i, i32 1024, i32 0
  %rval.0.i = or i32 %masksel.i, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !287
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %rval.0.i) #6
  %17 = ptrtoint ptr %reg_base.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !234
  %call9.i = tail call fastcc i32 @sunxi_mmc_clk_set_rate(ptr noundef %private.i, ptr noundef %ios) #6
  %ferror.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %ferror.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call9.i, ptr %ferror.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mmc_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !288
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  %lock = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %reg_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 48
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !235
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !289
  %sdio_imask11 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %sdio_imask11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %sdio_imask11, align 4
  %or = or i32 %6, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !290
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  %add.ptr17.c = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.c, i32 %8) #6, !srcloc !234
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %if.end22

if.else:                                          ; preds = %do.body1
  %11 = ptrtoint ptr %sdio_imask11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sdio_imask11, align 4
  %and = and i32 %6, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !290
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_base, align 4
  %add.ptr17.c34 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.c34, i32 %12) #6, !srcloc !234
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %mmc21 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 1
  %15 = ptrtoint ptr %mmc21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmc21, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %usage_count.i35 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 13
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i35, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !291
  tail call void @llvm.prefetch.p0(ptr %usage_count.i35, i32 1, i32 3, i32 1) #6
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i35, ptr %usage_count.i35, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i35) #6, !srcloc !292
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.else.if.end22_crit_edge, label %do.end11.i.i.i.i

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end11.i.i.i.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !293
  br label %if.end22

if.end22:                                         ; preds = %do.end11.i.i.i.i, %if.else.if.end22_crit_edge, %if.then10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_volt_switch(ptr noundef %mmc, ptr noundef %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 54, i32 1
  %0 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqmmc, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %mmc, ptr noundef %ios) #6
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 28, i32 8
  %3 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3 = icmp eq i8 %4, 0
  %. = select i1 %cmp3, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_card_busy(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !294
  %3 = lshr i32 %2, 17
  %.lobit = and i32 %3, 1
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_mmc_hw_reset(ptr nocapture noundef readonly %mmc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !295
  tail call void @arm_heavy_mb() #6
  %reg_base = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !296
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 16777216) #6, !srcloc !234
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 64424400) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_card_power(ptr nocapture noundef %host, ptr nocapture noundef readonly %ios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %3, label %do.body68 [
    i8 1, label %do.body
    i8 0, label %do.body31
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_card_power.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_card_power, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_card_power.__UNIQUE_ID_ddebug309, ptr noundef %6, ptr noundef nonnull @.str.87) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %supply = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %7 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %supply, align 16
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end.if.end13_crit_edge, label %if.then5

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %do.end
  %vdd = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 1
  %9 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdd, align 4
  %call8 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %8, i16 noundef zeroext %10) #6
  %ferror = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 18
  %11 = ptrtoint ptr %ferror to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call8, ptr %ferror, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  br i1 %tobool10.not, label %if.then5.if.end13_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %vqmmc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %12 = ptrtoint ptr %vqmmc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vqmmc, align 4
  %cmp.i112 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %call19 = tail call i32 @regulator_enable(ptr noundef %13) #6
  %ferror20 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 18
  %14 = ptrtoint ptr %ferror20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call19, ptr %ferror20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool22.not = icmp eq i32 %call19, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.88) #9
  br label %cleanup

if.end28:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %vqmmc_enabled = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 19
  %17 = ptrtoint ptr %vqmmc_enabled to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %vqmmc_enabled, align 4
  br label %cleanup

do.body31:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_card_power.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_card_power, %if.then43)) #6
          to label %do.end47 [label %if.then43], !srcloc !248

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_card_power.__UNIQUE_ID_ddebug310, ptr noundef %19, ptr noundef nonnull @.str.89) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %supply48 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54
  %20 = ptrtoint ptr %supply48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %supply48, align 16
  %cmp.i113 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113, label %do.end47.if.end55_crit_edge, label %if.then51

do.end47.if.end55_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then51:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %1, ptr noundef %21, i16 noundef zeroext 0) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %do.end47.if.end55_crit_edge
  %vqmmc57 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 54, i32 1
  %22 = ptrtoint ptr %vqmmc57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vqmmc57, align 4
  %cmp.i114 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.end55.if.end66_crit_edge, label %land.lhs.true

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end55
  %vqmmc_enabled59 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 19
  %24 = ptrtoint ptr %vqmmc_enabled59 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vqmmc_enabled59, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool60.not = icmp eq i8 %25, 0
  br i1 %tobool60.not, label %land.lhs.true.if.end66_crit_edge, label %if.then62

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 @regulator_disable(ptr noundef %23) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %land.lhs.true.if.end66_crit_edge, %if.end55.if.end66_crit_edge
  %vqmmc_enabled67 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 19
  %26 = ptrtoint ptr %vqmmc_enabled67 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %vqmmc_enabled67, align 4
  br label %cleanup

do.body68:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_card_power.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_card_power, %if.then80)) #6
          to label %cleanup [label %if.then80], !srcloc !248

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_card_power.__UNIQUE_ID_ddebug311, ptr noundef %28, ptr noundef nonnull @.str.90) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %do.body68, %if.end66, %if.end28, %do.end26, %if.end13.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_clk_set_rate(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %ios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %2 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios, align 4
  %call = tail call fastcc i32 @sunxi_mmc_oclk_onoff(ptr noundef %host, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %actual_clock, align 8
  %5 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %7 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %timing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp = icmp eq i8 %8, 8
  br i1 %cmp, label %land.lhs.true, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6
  %use_new_timings = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 20
  %9 = ptrtoint ptr %use_new_timings to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %use_new_timings, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false, label %land.lhs.true.if.then13_crit_edge

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %11 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp11 = icmp eq i8 %12, 3
  br i1 %cmp11, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %shl = shl i32 %3, 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %div.0 = phi i32 [ 2, %if.then13 ], [ 1, %lor.lhs.false.if.end14_crit_edge ], [ 1, %if.end6.if.end14_crit_edge ]
  %clock.0 = phi i32 [ %shl, %if.then13 ], [ %3, %lor.lhs.false.if.end14_crit_edge ], [ %3, %if.end6.if.end14_crit_edge ]
  %use_new_timings15 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 20
  %13 = ptrtoint ptr %use_new_timings15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %use_new_timings15, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  br i1 %tobool16.not, label %if.end14.if.end26_crit_edge, label %land.lhs.true18

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true18:                                  ; preds = %if.end14
  %cfg = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 3
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg, align 4
  %ccu_has_timings_switch = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %ccu_has_timings_switch to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ccu_has_timings_switch, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.end26_crit_edge, label %if.then21

land.lhs.true18.if.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true18
  %clk_mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 6
  %19 = ptrtoint ptr %clk_mmc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_mmc, align 4
  %call22 = tail call i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef %20, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %do.end

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end:                                           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.91) #9
  br label %cleanup

if.end26:                                         ; preds = %if.then21.if.end26_crit_edge, %land.lhs.true18.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %clk_mmc27 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 6
  %23 = ptrtoint ptr %clk_mmc27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_mmc27, align 4
  %call28 = tail call i32 @clk_round_rate(ptr noundef %24, i32 noundef %clock.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end34, label %do.body37

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.94, i32 noundef %clock.0, i32 noundef %call28) #9
  br label %cleanup

do.body37:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_clk_set_rate.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_clk_set_rate, %if.then42)) #6
          to label %do.end46 [label %if.then42], !srcloc !248

if.then42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_clk_set_rate.__UNIQUE_ID_ddebug308, ptr noundef %28, ptr noundef nonnull @.str.96, i32 noundef %clock.0, i32 noundef %call28) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then42, %do.body37
  %29 = ptrtoint ptr %clk_mmc27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk_mmc27, align 4
  %call48 = tail call i32 @clk_set_rate(ptr noundef %30, i32 noundef %call28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.98, i32 noundef %call28, i32 noundef %call48) #9
  br label %cleanup

if.end55:                                         ; preds = %do.end46
  %reg_base = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 4
  %33 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !297
  %36 = and i32 %35, 16777215
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %sub = add nsw i32 %div.0, -1
  %or = or i32 %37, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !298
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %or)
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 4
  %add.ptr63 = getelementptr i8, ptr %40, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %38) #6, !srcloc !234
  %div64 = udiv i32 %call28, %div.0
  %41 = ptrtoint ptr %use_new_timings15 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %use_new_timings15, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool66.not = icmp eq i8 %42, 0
  br i1 %tobool66.not, label %if.end55.if.end81_crit_edge, label %if.then67

if.end55.if.end81_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.then67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_base, align 4
  %add.ptr71 = getelementptr i8, ptr %44, i32 92
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !299
  %46 = or i32 %45, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !300
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base, align 4
  %add.ptr80 = getelementptr i8, ptr %48, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %46) #6, !srcloc !234
  br label %if.end81

if.end81:                                         ; preds = %if.then67, %if.end55.if.end81_crit_edge
  %call82 = tail call fastcc i32 @sunxi_mmc_clk_set_phase(ptr noundef %host, ptr noundef %ios, i32 noundef %div64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %if.end81
  %cfg.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 3
  %49 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cfg.i, align 4
  %can_calibrate.i = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %can_calibrate.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %can_calibrate.i, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i, label %if.end85.sunxi_mmc_calibrate.exit_crit_edge, label %do.body.i

if.end85.sunxi_mmc_calibrate.exit_crit_edge:      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_calibrate.exit

do.body.i:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !301
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_base, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -2147483648) #6, !srcloc !234
  br label %sunxi_mmc_calibrate.exit

sunxi_mmc_calibrate.exit:                         ; preds = %do.body.i, %if.end85.sunxi_mmc_calibrate.exit_crit_edge
  %call90 = tail call fastcc i32 @sunxi_mmc_oclk_onoff(ptr noundef %host, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %sunxi_mmc_calibrate.exit.cleanup_crit_edge

sunxi_mmc_calibrate.exit.cleanup_crit_edge:       ; preds = %sunxi_mmc_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %sunxi_mmc_calibrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %actual_clock to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div64, ptr %actual_clock, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %sunxi_mmc_calibrate.exit.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %do.end53, %do.end34, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %do.end ], [ %call28, %do.end34 ], [ %call48, %do.end53 ], [ 0, %if.end93 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call82, %if.end81.cleanup_crit_edge ], [ %call90, %sunxi_mmc_calibrate.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_oclk_onoff(ptr nocapture noundef readonly %host, i32 noundef %oclk_en) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_oclk_onoff.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_oclk_onoff, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !248

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %1 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmc, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oclk_en)
  %tobool4.not = icmp eq i32 %oclk_en, 0
  %cond = select i1 %tobool4.not, ptr @.str.103, ptr @.str.102
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_oclk_onoff.__UNIQUE_ID_ddebug306, ptr noundef %4, ptr noundef nonnull @.str.101, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_base = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 4
  %5 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !302
  %8 = and i32 %7, -897
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oclk_en)
  %tobool8.not = icmp eq i32 %oclk_en, 0
  %or = or i32 %9, 65536
  %spec.select = select i1 %tobool8.not, i32 %9, i32 %or
  %cfg = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 3
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 4
  %mask_data0 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %mask_data0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask_data0, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool11.not = icmp eq i8 %13, 0
  %or13 = or i32 %spec.select, -2147483648
  %rval.1 = select i1 %tobool11.not, i32 %spec.select, i32 %or13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !303
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %rval.1)
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %14) #6, !srcloc !234
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !304
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base, align 4
  %add.ptr24 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 2105472) #6, !srcloc !234
  %add.neg = sub i32 -75, %0
  br label %do.body25

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %do.end
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base, align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !305
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  %.mask = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool35.not = icmp eq i32 %.mask, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %do.body37, label %do.body25.do.body25_crit_edge

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

do.body37:                                        ; preds = %do.body25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !306
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 4
  %add.ptr43 = getelementptr i8, ptr %24, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !307
  %26 = and i32 %25, -257
  %27 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_base, align 4
  %add.ptr49 = getelementptr i8, ptr %28, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %26) #6, !srcloc !234
  br i1 %tobool35.not, label %if.end58, label %do.end55

do.end55:                                         ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #8
  %mmc56 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %29 = ptrtoint ptr %mmc56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmc56, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.104) #9
  br label %cleanup

if.end58:                                         ; preds = %do.body37
  %33 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cfg, align 4
  %mask_data060 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %mask_data060 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mask_data060, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool61.not = icmp eq i8 %36, 0
  br i1 %tobool61.not, label %if.end58.cleanup_crit_edge, label %if.then62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_base, align 4
  %add.ptr66 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !309
  tail call void @arm_heavy_mb() #6
  %40 = and i32 %39, -129
  %41 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base, align 4
  %add.ptr75 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %40) #6, !srcloc !234
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %if.end58.cleanup_crit_edge, %do.end55
  %retval.0 = phi i32 [ -5, %do.end55 ], [ 0, %if.then62 ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_clk_set_phase(ptr nocapture noundef readonly %host, ptr nocapture noundef readonly %ios, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %use_new_timings = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 20
  %0 = ptrtoint ptr %use_new_timings to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_new_timings, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %clk_delays = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk_delays to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_delays, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %rate)
  %cmp = icmp ult i32 %rate, 400001
  br i1 %cmp, label %if.end3.if.end33_crit_edge, label %if.else

if.end3.if.end33_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %rate)
  %cmp5 = icmp ult i32 %rate, 25000001
  br i1 %cmp5, label %if.else.if.end33_crit_edge, label %if.else7

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 52000001, i32 %rate)
  %cmp8 = icmp ult i32 %rate, 52000001
  br i1 %cmp8, label %if.then9, label %do.body

if.then9:                                         ; preds = %if.else7
  %timing = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 7
  %6 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %timing, align 4
  %.off = add i8 %7, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.else17, label %if.then9.if.end33_crit_edge

if.then9.if.end33_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %bus_width = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 6
  %8 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bus_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp19 = icmp eq i8 %9, 3
  %. = select i1 %cmp19, i32 4, i32 3
  br label %if.end33

do.body:                                          ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_mmc_clk_set_phase.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_mmc_clk_set_phase, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !248

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %mmc = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 1
  %10 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_mmc_clk_set_phase.__UNIQUE_ID_ddebug307, ptr noundef %13, ptr noundef nonnull @.str.106) #6
  br label %cleanup

if.end33:                                         ; preds = %if.else17, %if.then9.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.end3.if.end33_crit_edge
  %index.0 = phi i32 [ 0, %if.end3.if.end33_crit_edge ], [ 1, %if.else.if.end33_crit_edge ], [ 2, %if.then9.if.end33_crit_edge ], [ %., %if.else17 ]
  %clk_sample = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 7
  %14 = ptrtoint ptr %clk_sample to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_sample, align 4
  %sample = getelementptr %struct.sunxi_mmc_clk_delay, ptr %5, i32 %index.0, i32 1
  %16 = ptrtoint ptr %sample to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sample, align 4
  %call36 = tail call i32 @clk_set_phase(ptr noundef %15, i32 noundef %17) #6
  %clk_output = getelementptr inbounds %struct.sunxi_mmc_host, ptr %host, i32 0, i32 8
  %18 = ptrtoint ptr %clk_output to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_output, align 4
  %20 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cfg, align 4
  %clk_delays38 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %clk_delays38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_delays38, align 4
  %arrayidx39 = getelementptr %struct.sunxi_mmc_clk_delay, ptr %23, i32 %index.0
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx39, align 4
  %call40 = tail call i32 @clk_set_phase(ptr noundef %19, i32 noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then29, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.then29 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 117440512) #6, !srcloc !234
  %add.neg.i = sub i32 -25, %4
  br label %do.body1.i

do.body1.i:                                       ; preds = %do.body1.i.do.body1.i_crit_edge, %entry
  %7 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  %11 = and i32 %9, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %do.end7.i, label %do.body1.i.do.body1.i_crit_edge

do.body1.i.do.body1.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1.i

do.end7.i:                                        ; preds = %do.body1.i
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  br i1 %tobool.not.i, label %do.end7.i.sunxi_mmc_reset_host.exit_crit_edge, label %do.end12.i

do.end7.i.sunxi_mmc_reset_host.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_reset_host.exit

do.end12.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %mmc.i = getelementptr inbounds %struct.sunxi_mmc_host, ptr %private.i, i32 0, i32 1
  %12 = ptrtoint ptr %mmc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmc.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.50) #9
  br label %sunxi_mmc_reset_host.exit

sunxi_mmc_reset_host.exit:                        ; preds = %do.end12.i, %do.end7.i.sunxi_mmc_reset_host.exit_crit_edge
  tail call fastcc void @sunxi_mmc_disable(ptr noundef %private.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 70
  %call2 = tail call fastcc i32 @sunxi_mmc_enable(ptr noundef %private.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @sunxi_mmc_init_host(ptr noundef %private.i)
  %ios = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 6
  %2 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bus_width, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %3, label %if.end.sunxi_mmc_set_bus_width.exit_crit_edge [
    i8 0, label %do.body.i
    i8 2, label %do.body2.i
    i8 3, label %do.body7.i
  ]

if.end.sunxi_mmc_set_bus_width.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sunxi_mmc_set_bus_width.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !283
  tail call void @arm_heavy_mb() #6
  %reg_base.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !234
  br label %sunxi_mmc_set_bus_width.exit

do.body2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !284
  tail call void @arm_heavy_mb() #6
  %reg_base4.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %reg_base4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #6, !srcloc !234
  br label %sunxi_mmc_set_bus_width.exit

do.body7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !285
  tail call void @arm_heavy_mb() #6
  %reg_base9.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %reg_base9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 33554432) #6, !srcloc !234
  br label %sunxi_mmc_set_bus_width.exit

sunxi_mmc_set_bus_width.exit:                     ; preds = %do.body7.i, %do.body2.i, %do.body.i, %if.end.sunxi_mmc_set_bus_width.exit_crit_edge
  %reg_base.i14 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %reg_base.i14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i14, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !235
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !286
  %timing.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %14 = ptrtoint ptr %timing.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %timing.i, align 4
  %.off.i = add i8 %15, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  %16 = and i32 %13, -262145
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %masksel.i = select i1 %switch.i, i32 1024, i32 0
  %rval.0.i = or i32 %masksel.i, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !287
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %rval.0.i) #6
  %19 = ptrtoint ptr %reg_base.i14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_base.i14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !234
  %call9.i = tail call fastcc i32 @sunxi_mmc_clk_set_rate(ptr noundef %private.i, ptr noundef %ios) #6
  %ferror.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %ferror.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call9.i, ptr %ferror.i, align 4
  %irq = getelementptr inbounds %struct.mmc_host, ptr %1, i32 1, i32 1, i32 0, i32 7, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %23) #6
  br label %cleanup

cleanup:                                          ; preds = %sunxi_mmc_set_bus_width.exit, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 119)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !41, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !129, !130, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !169, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !186, !187, !188, !189, !191, !192, !193, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !{ptr @__initcall__kmod_sunxi_mmc__313_1549_sunxi_mmc_driver_init6, !1, !"__initcall__kmod_sunxi_mmc__313_1549_sunxi_mmc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1549, i32 1}
!2 = !{ptr @__exitcall_sunxi_mmc_driver_exit, !1, !"__exitcall_sunxi_mmc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description314, !4, !"__UNIQUE_ID_description314", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1551, i32 1}
!5 = !{ptr @__UNIQUE_ID_file315, !6, !"__UNIQUE_ID_file315", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1552, i32 1}
!7 = !{ptr @__UNIQUE_ID_license316, !6, !"__UNIQUE_ID_license316", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author317, !9, !"__UNIQUE_ID_author317", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1553, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias318, !11, !"__UNIQUE_ID_alias318", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1554, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1541, i32 11}
!14 = !{ptr @sunxi_mmc_driver, !15, !"sunxi_mmc_driver", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1539, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1364, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sunxi_mmc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sunxi_mmc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @sunxi_mmc_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1372, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1381, i32 3}
!29 = !{ptr @sunxi_mmc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sunxi_mmc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1400, i32 4}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sunxi_mmc_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @sunxi_mmc_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1431, i32 10}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1466, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sunxi_mmc_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sunxi_mmc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1307, i32 43}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1309, i32 3}
!49 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sunxi_mmc_resource_request._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sunxi_mmc_resource_request._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1313, i32 43}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1315, i32 3}
!56 = !{ptr @sunxi_mmc_resource_request._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sunxi_mmc_resource_request._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1320, i32 47}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1322, i32 4}
!62 = !{ptr @sunxi_mmc_resource_request._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sunxi_mmc_resource_request._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1326, i32 47}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1328, i32 4}
!68 = !{ptr @sunxi_mmc_resource_request._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sunxi_mmc_resource_request._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1223, i32 4}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sunxi_mmc_enable._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sunxi_mmc_enable._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1231, i32 3}
!77 = !{ptr @sunxi_mmc_enable._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sunxi_mmc_enable._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1237, i32 3}
!81 = !{ptr @sunxi_mmc_enable._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sunxi_mmc_enable._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1243, i32 3}
!85 = !{ptr @sunxi_mmc_enable._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sunxi_mmc_enable._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1249, i32 3}
!89 = !{ptr @sunxi_mmc_enable._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sunxi_mmc_enable._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 317, i32 3}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @sunxi_mmc_reset_host._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @sunxi_mmc_reset_host._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 581, i32 2}
!98 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sunxi_mmc_irq.__UNIQUE_ID_ddebug305, !97, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 493, i32 2}
!103 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sunxi_mmc_dump_errinfo.__UNIQUE_ID_ddebug304, !102, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!105 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.59, !102, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.60, !102, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.61, !102, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.63, !102, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.67, !102, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.68, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 635, i32 3}
!118 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sunxi_mmc_handle_manual_stop._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @sunxi_mmc_handle_manual_stop._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 639, i32 2}
!123 = !{ptr @sunxi_mmc_handle_manual_stop._entry.70, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @sunxi_mmc_handle_manual_stop._entry_ptr.72, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.73, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 471, i32 3}
!127 = !{ptr @.str.74, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @sunxi_mmc_send_manual_stop._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @sunxi_mmc_send_manual_stop._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @sunxi_mmc_ops, !131, !"sunxi_mmc_ops", i1 false, i1 false}
!131 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1111, i32 34}
!132 = !{ptr @.str.75, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1029, i32 4}
!134 = !{ptr @.str.76, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @sunxi_mmc_request._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @sunxi_mmc_request._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.77, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1070, i32 2}
!139 = !{ptr @sunxi_mmc_request.__UNIQUE_ID_ddebug312, !138, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!140 = !{ptr @.str.79, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1083, i32 3}
!142 = !{ptr @sunxi_mmc_request._entry.78, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @sunxi_mmc_request._entry_ptr.80, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 406, i32 3}
!146 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sunxi_mmc_map_dma._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @sunxi_mmc_map_dma._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.84, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 412, i32 4}
!151 = !{ptr @sunxi_mmc_map_dma._entry.83, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @sunxi_mmc_map_dma._entry_ptr.85, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.86, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 908, i32 3}
!155 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @sunxi_mmc_card_power.__UNIQUE_ID_ddebug309, !154, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!157 = !{ptr @.str.88, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 921, i32 5}
!159 = !{ptr @sunxi_mmc_card_power._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @sunxi_mmc_card_power._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 930, i32 3}
!163 = !{ptr @sunxi_mmc_card_power.__UNIQUE_ID_ddebug310, !162, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!164 = !{ptr @.str.90, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 942, i32 3}
!166 = !{ptr @sunxi_mmc_card_power.__UNIQUE_ID_ddebug311, !165, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 796, i32 4}
!169 = !{ptr @.str.92, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @sunxi_mmc_clk_set_rate._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @sunxi_mmc_clk_set_rate._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.94, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 804, i32 3}
!174 = !{ptr @sunxi_mmc_clk_set_rate._entry.93, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @sunxi_mmc_clk_set_rate._entry_ptr.95, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.96, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 808, i32 2}
!178 = !{ptr @sunxi_mmc_clk_set_rate.__UNIQUE_ID_ddebug308, !177, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!179 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 814, i32 3}
!181 = !{ptr @sunxi_mmc_clk_set_rate._entry.97, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @sunxi_mmc_clk_set_rate._entry_ptr.99, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.100, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 665, i32 2}
!185 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sunxi_mmc_oclk_onoff.__UNIQUE_ID_ddebug306, !184, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!187 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.104, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 690, i32 3}
!191 = !{ptr @sunxi_mmc_oclk_onoff._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @sunxi_mmc_oclk_onoff._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.105, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 749, i32 3}
!195 = !{ptr @.str.106, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @sunxi_mmc_clk_set_phase.__UNIQUE_ID_ddebug307, !194, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!197 = !{ptr @sunxi_mmc_of_match, !198, !"sunxi_mmc_of_match", i1 false, i1 false}
!198 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1202, i32 34}
!199 = !{ptr @sun4i_a10_cfg, !200, !"sun4i_a10_cfg", i1 false, i1 false}
!200 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1139, i32 35}
!201 = !{ptr @sun5i_a13_cfg, !202, !"sun5i_a13_cfg", i1 false, i1 false}
!202 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1145, i32 35}
!203 = !{ptr @sun7i_a20_cfg, !204, !"sun7i_a20_cfg", i1 false, i1 false}
!204 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1151, i32 35}
!205 = !{ptr @sunxi_mmc_clk_delays, !206, !"sunxi_mmc_clk_delays", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1122, i32 41}
!207 = !{ptr @sun8i_a83t_emmc_cfg, !208, !"sun8i_a83t_emmc_cfg", i1 false, i1 false}
!208 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1157, i32 35}
!209 = !{ptr @sun9i_a80_cfg, !210, !"sun9i_a80_cfg", i1 false, i1 false}
!210 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1164, i32 35}
!211 = !{ptr @sun9i_mmc_clk_delays, !212, !"sun9i_mmc_clk_delays", i1 false, i1 false}
!212 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1131, i32 41}
!213 = !{ptr @sun50i_a64_cfg, !214, !"sun50i_a64_cfg", i1 false, i1 false}
!214 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1170, i32 35}
!215 = !{ptr @sun50i_a64_emmc_cfg, !216, !"sun50i_a64_emmc_cfg", i1 false, i1 false}
!216 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1178, i32 35}
!217 = !{ptr @sun50i_a100_cfg, !218, !"sun50i_a100_cfg", i1 false, i1 false}
!218 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1185, i32 35}
!219 = !{ptr @sun50i_a100_emmc_cfg, !220, !"sun50i_a100_emmc_cfg", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1194, i32 35}
!221 = !{ptr @sunxi_mmc_pm_ops, !222, !"sunxi_mmc_pm_ops", i1 false, i1 false}
!222 = !{!"../drivers/mmc/host/sunxi-mmc.c", i32 1531, i32 32}
!223 = !{i32 1, !"wchar_size", i32 2}
!224 = !{i32 1, !"min_enum_size", i32 4}
!225 = !{i32 8, !"branch-target-enforcement", i32 0}
!226 = !{i32 8, !"sign-return-address", i32 0}
!227 = !{i32 8, !"sign-return-address-all", i32 0}
!228 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!229 = !{i32 7, !"uwtable", i32 1}
!230 = !{i32 7, !"frame-pointer", i32 2}
!231 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!232 = !{i8 0, i8 2}
!233 = !{i64 2155439630}
!234 = !{i64 6297045}
!235 = !{i64 6297463}
!236 = !{i64 2155440691}
!237 = !{i64 2155443652}
!238 = !{i64 2155444200}
!239 = !{i64 2155444760}
!240 = !{i64 2155445326}
!241 = !{i64 2155445862}
!242 = !{i64 2155446416}
!243 = !{i64 2155447036}
!244 = !{i64 2155447947}
!245 = !{i64 2155448431}
!246 = !{i64 2155482334}
!247 = !{i64 2155482934}
!248 = !{i64 2148762597, i64 2148762602, i64 2148762615, i64 2148762659, i64 2148762693, i64 2148762714}
!249 = !{i64 2155486162}
!250 = !{i64 2155488267}
!251 = !{i64 2155488800}
!252 = !{i64 2155472944}
!253 = !{i64 2155473490}
!254 = !{i64 2155475248}
!255 = !{i64 2155475848}
!256 = !{i64 2155476448}
!257 = !{i64 2155477048}
!258 = !{i64 2155477648}
!259 = !{i64 2155477966}
!260 = !{i64 2155478479}
!261 = !{i64 2155479270}
!262 = !{i64 2155479670}
!263 = !{i64 2155480270}
!264 = !{i64 2155480870}
!265 = !{i64 2155481518}
!266 = !{i64 2155459274}
!267 = !{i64 2155459793}
!268 = !{i64 2155460602}
!269 = !{i64 2155465300}
!270 = !{i64 2155465622}
!271 = !{i64 2155545834}
!272 = !{i64 2155546417}
!273 = !{i64 2155450691}
!274 = !{i64 2155454961}
!275 = !{i64 2155455361}
!276 = !{i64 2155455961}
!277 = !{i64 2155456605}
!278 = !{i64 2155457400}
!279 = !{i64 2155458255}
!280 = !{i64 2155547041}
!281 = !{i64 2155547625}
!282 = !{i64 2155548159}
!283 = !{i64 2155521909}
!284 = !{i64 2155522416}
!285 = !{i64 2155522923}
!286 = !{i64 2155523714}
!287 = !{i64 2155524204}
!288 = !{i64 2148280782, i64 2148280808, i64 2148280837, i64 2148280871, i64 2148280902, i64 2148280925}
!289 = !{i64 2155533904}
!290 = !{i64 2155534476}
!291 = !{i64 2148280201}
!292 = !{i64 765024, i64 765049, i64 765071, i64 765087, i64 765099, i64 765119, i64 765143, i64 765159, i64 765171}
!293 = !{i64 2148280389}
!294 = !{i64 2155548966}
!295 = !{i64 2155534991}
!296 = !{i64 2155536036}
!297 = !{i64 2155515806}
!298 = !{i64 2155516124}
!299 = !{i64 2155516923}
!300 = !{i64 2155517327}
!301 = !{i64 2155505025}
!302 = !{i64 2155496151}
!303 = !{i64 2155496889}
!304 = !{i64 2155497657}
!305 = !{i64 2155498455}
!306 = !{i64 2155500487}
!307 = !{i64 2155501498}
!308 = !{i64 2155503931}
!309 = !{i64 2155504399}
