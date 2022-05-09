; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-pxa2xx.c_pt.bc'
source_filename = "../drivers/spi/spi-pxa2xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lpss_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.ssp_device = type { ptr, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.driver_data = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa2xx_spi_controller = type { i16, i8, i8, i8, ptr, ptr, ptr, %struct.ssp_device }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.chip_data = type { i32, i32, i32, i8, i32, i32, i32, i16, i16 }
%struct.pxa2xx_spi_chip = type { i8, i8, i8, i8, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__UNIQUE_ID_author241 = internal constant [42 x i8] c"spi_pxa2xx_platform.author=Stephen Street\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [58 x i8] c"spi_pxa2xx_platform.description=PXA2xx SSP SPI Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [57 x i8] c"spi_pxa2xx_platform.file=drivers/spi/spi-pxa2xx-platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [32 x i8] c"spi_pxa2xx_platform.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [46 x i8] c"spi_pxa2xx_platform.alias=platform:pxa2xx-spi\00", section ".modinfo", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_spi_pxa2xx_platform__251_1956_pxa2xx_spi_init4 = internal global ptr @pxa2xx_spi_init, section ".initcall4.init", align 4
@driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pxa2xx_spi_probe, ptr @pxa2xx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa2xx_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa2xx_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pxa2xx_spi_exit = internal global ptr @pxa2xx_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_softdep252 = internal constant [41 x i8] c"spi_pxa2xx_platform.softdep=pre: dw_dmac\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pxa2xx-spi\00", [21 x i8] zeroinitializer }, align 32
@pxa2xx_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-ssp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pxa2xx_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pxa2xx_spi_suspend, ptr @pxa2xx_spi_resume, ptr @pxa2xx_spi_suspend, ptr @pxa2xx_spi_resume, ptr @pxa2xx_spi_suspend, ptr @pxa2xx_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pxa2xx_spi_runtime_suspend, ptr @pxa2xx_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pxa2xx_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-pxa2xx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry_ptr = internal global ptr @pxa2xx_spi_probe._entry, section ".printk_index", align 4
@pxa2xx_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get SSP\0A\00", [45 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry_ptr.8 = internal global ptr @pxa2xx_spi_probe._entry.6, section ".printk_index", align 4
@pxa2xx_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot alloc spi_controller\0A\00", [35 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry_ptr.11 = internal global ptr @pxa2xx_spi_probe._entry.9, section ".printk_index", align 4
@pxa2xx_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cannot get IRQ %d\0A\00", [45 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry_ptr.14 = internal global ptr @pxa2xx_spi_probe._entry.12, section ".printk_index", align 4
@pxa2xx_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1721, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no DMA channels available, using PIO\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry_ptr.18 = internal global ptr @pxa2xx_spi_probe._entry.15, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"problem registering SPI controller\0A\00", [60 x i8] zeroinitializer }, align 32
@pxa2xx_spi_probe._entry_ptr.22 = internal global ptr @pxa2xx_spi_probe._entry.20, section ".printk_index", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@pxa2xx_spi_pci_compound_match = internal constant { [63 x %struct.pci_device_id], [480 x i8] } { [63 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 40233, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 40234, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 41257, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 41258, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 41641, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 41642, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 41897, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 41898, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 32902, i32 2754, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 2756, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 2758, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6850, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6852, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 6854, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 12738, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 12740, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 12742, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 13482, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 13483, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 13563, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 19242, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 19243, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 19255, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 19882, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 19883, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 19963, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 17322, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 17323, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 17403, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 17405, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 20906, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 20907, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 20987, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 21674, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 21675, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 21755, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 23234, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 23236, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 23238, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 32902, i32 31402, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 31403, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 31481, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 31483, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 40362, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 40363, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 40443, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41770, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41771, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41851, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 682, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 683, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 763, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 1706, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 1707, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 1787, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41130, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41131, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41182, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41183, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41211, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41213, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 32902, i32 41214, i32 -1, i32 -1, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id zeroinitializer], [480 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi-slave\00", [22 x i8] zeroinitializer }, align 32
@setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 1276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed setup: cs number must not be > 4.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"setup\00", [26 x i8] zeroinitializer }, align 32
@setup._entry_ptr = internal global ptr @setup._entry, section ".printk_index", align 4
@setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 1335, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"in setup: DMA burst size reduced to match bits_per_word\0A\00", [39 x i8] zeroinitializer }, align 32
@setup._entry_ptr.28 = internal global ptr @setup._entry.26, section ".printk_index", align 4
@setup.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.25, ptr @.str.3, ptr @.str.30, i8 1, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_pxa2xx_platform\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"in setup: DMA burst size set to %u\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPI_CS\00", [25 x i8] zeroinitializer }, align 32
@setup_cs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1201, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request chip select GPIO%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_cs\00", [23 x i8] zeroinitializer }, align 32
@setup_cs._entry_ptr = internal global ptr @setup_cs._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pxa2xx_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Mapped transfer length of %u is greater than %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pxa2xx_spi_transfer_one\00", [40 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry_ptr = internal global ptr @pxa2xx_spi_transfer_one._entry, section ".printk_index", align 4
@pxa2xx_spi_transfer_one._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.35, ptr @.str.3, i32 977, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"DMA disabled for transfer length %u greater than %d\0A\00", [43 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry_ptr.39 = internal global ptr @pxa2xx_spi_transfer_one._entry.37, section ".printk_index", align 4
@pxa2xx_spi_transfer_one._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.35, ptr @.str.3, i32 982, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flush failed\0A\00", [18 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry_ptr.42 = internal global ptr @pxa2xx_spi_transfer_one._entry.40, section ".printk_index", align 4
@pxa2xx_spi_transfer_one._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.35, ptr @.str.3, i32 1019, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DMA burst size reduced to match bits_per_word\0A\00", [49 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry_ptr.46 = internal global ptr @pxa2xx_spi_transfer_one._entry.44, section ".printk_index", align 4
@pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.35, ptr @.str.3, ptr @.str.47, i8 1, i8 7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%u Hz actual, %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PIO\00", [28 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.35, ptr @.str.3, ptr @.str.47, i8 1, i8 8, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@pxa2xx_spi_transfer_one._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.35, ptr @.str.3, i32 1100, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%u bytes of garbage in Tx FIFO!\0A\00", [63 x i8] zeroinitializer }, align 32
@pxa2xx_spi_transfer_one._entry_ptr.52 = internal global ptr @pxa2xx_spi_transfer_one._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"interrupt_transfer: FIFO overrun\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"interrupt_transfer: FIFO underrun\00", [62 x i8] zeroinitializer }, align 32
@int_error_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"int_error_stop\00", [17 x i8] zeroinitializer }, align 32
@int_error_stop._entry_ptr = internal global ptr @int_error_stop._entry, section ".printk_index", align 4
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"transfer aborted\00", [47 x i8] zeroinitializer }, align 32
@handle_bad_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 723, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bad message state in interrupt handler\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"handle_bad_msg\00", [17 x i8] zeroinitializer }, align 32
@handle_bad_msg._entry_ptr = internal global ptr @handle_bad_msg._entry, section ".printk_index", align 4
@lpss_platforms = internal constant { [6 x %struct.lpss_config], [64 x i8] } { [6 x %struct.lpss_config] [%struct.lpss_config { i32 2048, i32 8, i32 12, i32 24, i32 -1, i32 64, i32 160, i32 224, i32 0, i32 0, i32 0, i8 0 }, %struct.lpss_config { i32 1024, i32 8, i32 12, i32 24, i32 -1, i32 64, i32 160, i32 224, i32 0, i32 0, i32 0, i8 0 }, %struct.lpss_config { i32 1024, i32 8, i32 12, i32 24, i32 -1, i32 64, i32 160, i32 224, i32 2, i32 4, i32 2, i8 0 }, %struct.lpss_config { i32 512, i32 -1, i32 32, i32 36, i32 -1, i32 1, i32 32, i32 56, i32 0, i32 0, i32 0, i8 0 }, %struct.lpss_config { i32 512, i32 -1, i32 32, i32 36, i32 252, i32 1, i32 16, i32 48, i32 8, i32 768, i32 0, i8 -128 }, %struct.lpss_config { i32 512, i32 -1, i32 32, i32 36, i32 252, i32 1, i32 32, i32 56, i32 8, i32 768, i32 0, i8 -128 }], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@__sancov_gen_cov_switch_values.64 = internal global [11 x i64] [i64 9, i64 32, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 10]
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1941, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1943, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"pxa2xx_spi_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1490, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"pxa2xx_spi_pm_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1935, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1638, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1648, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1658, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1713, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1721, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1813, i32 7 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1829, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [30 x i8] c"pxa2xx_spi_pci_compound_match\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1404, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1586, i32 58 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1275, i32 5 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1334, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1337, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1199, i32 28 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1201, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 968, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 975, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 982, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1018, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1051, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1100, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 649, i32 28 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 654, i32 28 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 627, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1130, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 723, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"lpss_platforms\00", align 1
@___asan_gen_.261 = private constant [28 x i8] c"../drivers/spi/spi-pxa2xx.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 100, i32 33 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_softdep252, ptr @__exitcall_pxa2xx_spi_exit, ptr @__initcall__kmod_spi_pxa2xx_platform__251_1956_pxa2xx_spi_init4, ptr @handle_bad_msg._entry, ptr @handle_bad_msg._entry_ptr, ptr @int_error_stop._entry, ptr @int_error_stop._entry_ptr, ptr @pxa2xx_spi_exit, ptr @pxa2xx_spi_probe._entry, ptr @pxa2xx_spi_probe._entry.12, ptr @pxa2xx_spi_probe._entry.15, ptr @pxa2xx_spi_probe._entry.20, ptr @pxa2xx_spi_probe._entry.6, ptr @pxa2xx_spi_probe._entry.9, ptr @pxa2xx_spi_probe._entry_ptr, ptr @pxa2xx_spi_probe._entry_ptr.11, ptr @pxa2xx_spi_probe._entry_ptr.14, ptr @pxa2xx_spi_probe._entry_ptr.18, ptr @pxa2xx_spi_probe._entry_ptr.22, ptr @pxa2xx_spi_probe._entry_ptr.8, ptr @pxa2xx_spi_transfer_one._entry, ptr @pxa2xx_spi_transfer_one._entry.37, ptr @pxa2xx_spi_transfer_one._entry.40, ptr @pxa2xx_spi_transfer_one._entry.44, ptr @pxa2xx_spi_transfer_one._entry.50, ptr @pxa2xx_spi_transfer_one._entry_ptr, ptr @pxa2xx_spi_transfer_one._entry_ptr.39, ptr @pxa2xx_spi_transfer_one._entry_ptr.42, ptr @pxa2xx_spi_transfer_one._entry_ptr.46, ptr @pxa2xx_spi_transfer_one._entry_ptr.52, ptr @setup._entry, ptr @setup._entry.26, ptr @setup._entry_ptr, ptr @setup._entry_ptr.28, ptr @setup_cs._entry, ptr @setup_cs._entry_ptr, ptr @driver, ptr @.str, ptr @pxa2xx_spi_of_match, ptr @pxa2xx_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @pxa2xx_spi_pci_compound_match, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @pxa2xx_spi_transfer_one._rs, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @pxa2xx_spi_transfer_one._rs.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @lpss_platforms], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_pci_compound_match to i32), i32 2016, i32 2496, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_cs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pxa2xx_spi_transfer_one._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_error_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_bad_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpss_platforms to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pxa2xx_spi_flush(ptr nocapture noundef readonly %drv_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %0 = load i32, ptr @loops_per_jiffy, align 4
  %shl = shl i32 %0, 1
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %limit.0 = phi i32 [ %shl, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  %1 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i13 = getelementptr inbounds %struct.ssp_device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %mmio_base.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base.i.i.i13, align 4
  %add.ptr.i.i.i14 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14) #11, !srcloc !136
  %and.i15 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not16, label %do.body.do.cond_crit_edge, label %do.body.while.body_crit_edge

do.body.while.body_crit_edge:                     ; preds = %do.body
  br label %while.body

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body.while.body_crit_edge
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %11 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %15, 8
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.body.do.cond_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.do.cond_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

do.cond:                                          ; preds = %while.body.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %16 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i9 = getelementptr inbounds %struct.ssp_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %mmio_base.i.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i.i9, align 4
  %add.ptr.i.i10 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10) #11, !srcloc !136
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.cond.do.end_crit_edge, label %land.rhs

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.rhs:                                         ; preds = %do.cond
  %dec = add i32 %limit.0, -1
  %tobool4.not = icmp eq i32 %dec, 0
  br i1 %tobool4.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %do.cond.do.end_crit_edge
  %limit.1 = phi i32 [ 0, %land.rhs.do.end_crit_edge ], [ %limit.0, %do.cond.do.end_crit_edge ]
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %21 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ssp_type.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %do.end.write_SSSR_CS.exit_crit_edge [
    i32 8, label %do.end.if.then.i_crit_edge
    i32 10, label %do.end.if.then.i_crit_edge17
  ]

do.end.if.then.i_crit_edge17:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end.if.then.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

do.end.write_SSSR_CS.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %write_SSSR_CS.exit

if.then.i:                                        ; preds = %do.end.if.then.i_crit_edge, %do.end.if.then.i_crit_edge17
  %24 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %28, 3
  %or.i = or i32 %and.i.i, 128
  br label %write_SSSR_CS.exit

write_SSSR_CS.exit:                               ; preds = %if.then.i, %do.end.write_SSSR_CS.exit_crit_edge
  %val.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ 128, %do.end.write_SSSR_CS.exit_crit_edge ]
  %29 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i11 = getelementptr inbounds %struct.ssp_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %mmio_base.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base.i.i.i11, align 4
  %add.ptr.i.i.i12 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i12, i32 %val.addr.0.i) #11, !srcloc !137
  ret i32 %limit.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pxa2xx_spi_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then:                                          ; preds = %entry
  %parent1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1.i, align 8
  %bus.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp ne ptr %5, @pci_bus_type
  %add.ptr.i = getelementptr i8, ptr %3, i32 -136
  %tobool.not109.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = select i1 %cmp.i, i1 true, i1 %tobool.not109.i
  br i1 %tobool.not.i, label %if.end.thread.i, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %call.i = tail call ptr @pci_match_id(ptr noundef nonnull @pxa2xx_spi_pci_compound_match, ptr noundef nonnull %add.ptr.i) #11
  %call3.i = tail call ptr @device_get_match_data(ptr noundef %dev1) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.else.i, label %if.end.i.if.then5.i_crit_edge

if.end.i.if.then5.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i

if.end.thread.i:                                  ; preds = %if.then
  %call3101.i = tail call ptr @device_get_match_data(ptr noundef %dev1) #11
  %tobool4.not102.i = icmp eq ptr %call3101.i, null
  br i1 %tobool4.not102.i, label %if.end.thread.i.do.end_crit_edge, label %if.end.thread.i.if.then5.i_crit_edge

if.end.thread.i.if.then5.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then5.i

if.end.thread.i.do.end_crit_edge:                 ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then5.i:                                       ; preds = %if.end.thread.i.if.then5.i_crit_edge, %if.end.i.if.then5.i_crit_edge
  %call3106.i = phi ptr [ %call3101.i, %if.end.thread.i.if.then5.i_crit_edge ], [ %call3.i, %if.end.i.if.then5.i_crit_edge ]
  %pcidev_id.0104.i = phi ptr [ null, %if.end.thread.i.if.then5.i_crit_edge ], [ %call.i, %if.end.i.if.then5.i_crit_edge ]
  %6 = ptrtoint ptr %call3106.i to i32
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.else.i.do.end_crit_edge, label %if.then7.i

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.then5.i
  %pcidev_id.0103.i = phi ptr [ %pcidev_id.0104.i, %if.then5.i ], [ %call.i, %if.then7.i ]
  %type.0.i = phi i32 [ %6, %if.then5.i ], [ %8, %if.then7.i ]
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #11
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.end11.i.do.end_crit_edge, label %if.end17.i

if.end11.i.do.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end17.i:                                       ; preds = %if.end11.i
  %ssp18.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7
  %call19.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call21.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call19.i) #11
  %mmio_base.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21.i, ptr %mmio_base.i, align 4
  %cmp.i.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end17.i.pxa2xx_spi_init_pdata.exit_crit_edge, label %if.end27.i

if.end17.i.pxa2xx_spi_init_pdata.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_init_pdata.exit

if.end27.i:                                       ; preds = %if.end17.i
  %10 = ptrtoint ptr %call19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call19.i, align 4
  %phys_base.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7, i32 4
  %12 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %phys_base.i, align 4
  %tobool28.not.i = icmp eq ptr %pcidev_id.0103.i, null
  br i1 %tobool28.not.i, label %if.end27.i.if.end30.i_crit_edge, label %if.then29.i

if.end27.i.if.end30.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_param.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %tx_param.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %tx_param.i, align 4
  %rx_param.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %rx_param.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %rx_param.i, align 4
  %dma_filter.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %dma_filter.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pxa2xx_spi_idma_filter, ptr %dma_filter.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end30.i_crit_edge
  %call32.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #11
  %clk.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call32.i, ptr %clk.i, align 4
  %cmp.i98.i = icmp ugt ptr %call32.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i, label %if.end30.i.pxa2xx_spi_init_pdata.exit_crit_edge, label %if.end38.i

if.end30.i.pxa2xx_spi_init_pdata.exit_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_init_pdata.exit

if.end38.i:                                       ; preds = %if.end30.i
  %call39.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7, i32 9
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call39.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp41.i = icmp slt i32 %call39.i, 0
  br i1 %cmp41.i, label %if.then42.i, label %if.end45.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = inttoptr i32 %call39.i to ptr
  br label %pxa2xx_spi_init_pdata.exit

if.end45.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  %type46.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7, i32 7
  %19 = ptrtoint ptr %type46.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %type.0.i, ptr %type46.i, align 4
  %20 = ptrtoint ptr %ssp18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %ssp18.i, align 4
  %port_id.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 7, i32 6
  %21 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %port_id.i, align 4
  %call.i99.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.23) #11
  %is_slave.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 3
  %frombool.i = zext i1 %call.i99.i to i8
  %22 = ptrtoint ptr %is_slave.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool.i, ptr %is_slave.i, align 4
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %call.i.i, align 4
  %enable_dma.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %enable_dma.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %enable_dma.i, align 2
  %dma_burst_size.i = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %dma_burst_size.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %dma_burst_size.i, align 1
  br label %pxa2xx_spi_init_pdata.exit

pxa2xx_spi_init_pdata.exit:                       ; preds = %if.end45.i, %if.then42.i, %if.end30.i.pxa2xx_spi_init_pdata.exit_crit_edge, %if.end17.i.pxa2xx_spi_init_pdata.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then42.i ], [ %call.i.i, %if.end45.i ], [ %call21.i, %if.end17.i.pxa2xx_spi_init_pdata.exit_crit_edge ], [ %call32.i, %if.end30.i.pxa2xx_spi_init_pdata.exit_crit_edge ]
  %cmp.i300 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %pxa2xx_spi_init_pdata.exit.do.end_crit_edge, label %pxa2xx_spi_init_pdata.exit.if.end7_crit_edge

pxa2xx_spi_init_pdata.exit.if.end7_crit_edge:     ; preds = %pxa2xx_spi_init_pdata.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

pxa2xx_spi_init_pdata.exit.do.end_crit_edge:      ; preds = %pxa2xx_spi_init_pdata.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %pxa2xx_spi_init_pdata.exit.do.end_crit_edge, %if.end11.i.do.end_crit_edge, %if.else.i.do.end_crit_edge, %if.end.thread.i.do.end_crit_edge
  %retval.0.i356 = phi ptr [ %retval.0.i, %pxa2xx_spi_init_pdata.exit.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.thread.i.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end11.i.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  %26 = ptrtoint ptr %retval.0.i356 to i32
  br label %cleanup159

if.end7:                                          ; preds = %pxa2xx_spi_init_pdata.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %platform_info.0 = phi ptr [ %1, %entry.if.end7_crit_edge ], [ %retval.0.i, %pxa2xx_spi_init_pdata.exit.if.end7_crit_edge ]
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  %29 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev, align 8
  %call8 = tail call ptr @pxa_ssp_request(i32 noundef %28, ptr noundef %30) #11
  %tobool9.not = icmp eq ptr %call8, null
  %ssp11 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %platform_info.0, i32 0, i32 7
  %spec.select = select i1 %tobool9.not, ptr %ssp11, ptr %call8
  %mmio_base = getelementptr inbounds %struct.ssp_device, ptr %spec.select, i32 0, i32 3
  %31 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base, align 4
  %tobool13.not = icmp eq ptr %32, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #14
  br label %cleanup159

if.end19:                                         ; preds = %if.end7
  %is_slave = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %platform_info.0, i32 0, i32 3
  %33 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_slave, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool20.not = icmp ne i8 %34, 0
  %call.i302 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 76, i1 noundef zeroext %tobool20.not) #11
  %tobool25.not = icmp eq ptr %call.i302, null
  br i1 %tobool25.not, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #14
  br label %out_error_controller_alloc

if.end31:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i302, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i, align 4
  %controller33 = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %controller33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i302, ptr %controller33, align 4
  %controller_info = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 3
  %38 = ptrtoint ptr %controller_info to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %platform_info.0, ptr %controller_info, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %spec.select, ptr %36, align 4
  %call36 = tail call ptr @dev_fwnode(ptr noundef %dev1) #11
  tail call void @device_set_node(ptr noundef nonnull %call.i302, ptr noundef %call36) #11
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 5
  %40 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 39, ptr %mode_bits, align 8
  %port_id = getelementptr inbounds %struct.ssp_device, ptr %spec.select, i32 0, i32 6
  %41 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_id, align 4
  %conv = trunc i32 %42 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 2
  %43 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv, ptr %bus_num, align 8
  %dma_alignment = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 4
  %44 = ptrtoint ptr %dma_alignment to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 8, ptr %dma_alignment, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 23
  %45 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @cleanup, ptr %cleanup, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 20
  %46 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @setup, ptr %setup, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 50
  %47 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @pxa2xx_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 51
  %48 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @pxa2xx_spi_transfer_one, ptr %transfer_one, align 4
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 49
  %49 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pxa2xx_spi_slave_abort, ptr %slave_abort, align 4
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 52
  %50 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pxa2xx_spi_handle_err, ptr %handle_err, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 46
  %51 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @pxa2xx_spi_unprepare_transfer, ptr %unprepare_transfer_hardware, align 8
  %fw_translate_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 64
  %52 = ptrtoint ptr %fw_translate_cs to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @pxa2xx_spi_fw_translate_cs, ptr %fw_translate_cs, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 36
  %53 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %auto_runtime_pm, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 10
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 24, ptr %flags, align 4
  %type = getelementptr inbounds %struct.ssp_device, ptr %spec.select, i32 0, i32 7
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type, align 4
  %ssp_type = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 1
  %57 = ptrtoint ptr %ssp_type to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %ssp_type, align 4
  %58 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %56, label %if.else42 [
    i32 10, label %if.end31.if.end48_crit_edge
    i32 1, label %if.end31.sw.default_crit_edge
    i32 8, label %if.end31.sw.default_crit_edge376
  ]

if.end31.sw.default_crit_edge376:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

if.end31.sw.default_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.default

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

sw.default:                                       ; preds = %if.end31.sw.default_crit_edge, %if.end31.sw.default_crit_edge376
  br label %if.end48

if.else42:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.end48:                                         ; preds = %if.else42, %sw.default, %if.end31.if.end48_crit_edge
  %.sink370 = phi i32 [ -8, %if.else42 ], [ 65528, %sw.default ], [ -8, %if.end31.if.end48_crit_edge ]
  %.sink369 = phi i32 [ 524291, %if.else42 ], [ 3, %sw.default ], [ 3, %if.end31.if.end48_crit_edge ]
  %.sink368 = phi i32 [ 7340032, %if.else42 ], [ 0, %sw.default ], [ 0, %if.end31.if.end48_crit_edge ]
  %.sink367 = phi i32 [ 524416, %if.else42 ], [ 128, %sw.default ], [ 128, %if.end31.if.end48_crit_edge ]
  %.sink366 = phi i32 [ 2621664, %if.else42 ], [ 224, %sw.default ], [ 224, %if.end31.if.end48_crit_edge ]
  %bits_per_word_mask43 = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 7
  %59 = ptrtoint ptr %bits_per_word_mask43 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink370, ptr %bits_per_word_mask43, align 8
  %int_cr144 = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 5
  %60 = ptrtoint ptr %int_cr144 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink369, ptr %int_cr144, align 4
  %dma_cr145 = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 4
  %61 = ptrtoint ptr %dma_cr145 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink368, ptr %dma_cr145, align 4
  %clear_sr46 = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 6
  %62 = ptrtoint ptr %clear_sr46 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink367, ptr %clear_sr46, align 4
  %mask_sr47 = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 7
  %63 = ptrtoint ptr %mask_sr47 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink366, ptr %mask_sr47, align 4
  %irq = getelementptr inbounds %struct.ssp_device, ptr %spec.select, i32 0, i32 9
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %66 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i304 = icmp eq ptr %67, null
  br i1 %tobool.not.i304, label %if.end.i305, label %if.end48.dev_name.exit_crit_edge

if.end48.dev_name.exit_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i305:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i305, %if.end48.dev_name.exit_crit_edge
  %retval.0.i306 = phi ptr [ %69, %if.end.i305 ], [ %67, %if.end48.dev_name.exit_crit_edge ]
  %call.i307 = tail call i32 @request_threaded_irq(i32 noundef %65, ptr noundef nonnull @ssp_int, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i306, ptr noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %cmp = icmp slt i32 %call.i307, 0
  br i1 %cmp, label %do.end55, label %if.end58

do.end55:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %71) #14
  br label %out_error_controller_alloc

if.end58:                                         ; preds = %dev_name.exit
  %enable_dma = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %platform_info.0, i32 0, i32 1
  %72 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %enable_dma, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool59.not = icmp eq i8 %73, 0
  br i1 %tobool59.not, label %if.end58.if.end70_crit_edge, label %if.then60

if.end58.if.end70_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then60:                                        ; preds = %if.end58
  %call61 = tail call i32 @pxa2xx_spi_dma_setup(ptr noundef %36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.else68, label %do.end66

do.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.16) #14
  %74 = ptrtoint ptr %enable_dma to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %enable_dma, align 2
  br label %if.end70

if.else68:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 24
  %75 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @pxa2xx_spi_can_dma, ptr %can_dma, align 4
  %max_dma_len = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 43
  %76 = ptrtoint ptr %max_dma_len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 65536, ptr %max_dma_len, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 13
  %77 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @pxa2xx_spi_max_dma_transfer_size, ptr %max_transfer_size, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.else68, %do.end66, %if.end58.if.end70_crit_edge
  %clk = getelementptr inbounds %struct.ssp_device, ptr %spec.select, i32 0, i32 2
  %78 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk, align 4
  %call.i308 = tail call i32 @clk_prepare(ptr noundef %79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool.not.i309, label %if.end.i310, label %if.end70.out_error_dma_irq_alloc_crit_edge

if.end70.out_error_dma_irq_alloc_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error_dma_irq_alloc

if.end.i310:                                      ; preds = %if.end70
  %call1.i = tail call i32 @clk_enable(ptr noundef %79) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end74, label %if.end.i310.out_error_dma_irq_alloc.sink.split_crit_edge

if.end.i310.out_error_dma_irq_alloc.sink.split_crit_edge: ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_error_dma_irq_alloc.sink.split

if.end74:                                         ; preds = %if.end.i310
  %80 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %clk, align 4
  %call76 = tail call i32 @clk_get_rate(ptr noundef %81) #11
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 9
  %82 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call76, ptr %max_speed_hz, align 8
  %83 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ssp_type, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %84, label %if.end74.if.end90.sink.split_crit_edge [
    i32 10, label %if.end74.if.end90_crit_edge
    i32 1, label %if.end74.if.then83_crit_edge
    i32 8, label %if.end74.if.then83_crit_edge377
  ]

if.end74.if.then83_crit_edge377:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end74.if.then83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then83

if.end74.if.end90_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

if.end74.if.end90.sink.split_crit_edge:           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.sink.split

if.then83:                                        ; preds = %if.end74.if.then83_crit_edge, %if.end74.if.then83_crit_edge377
  br label %if.end90.sink.split

if.end90.sink.split:                              ; preds = %if.then83, %if.end74.if.end90.sink.split_crit_edge
  %.sink372 = phi i32 [ 511, %if.then83 ], [ 4095, %if.end74.if.end90.sink.split_crit_edge ]
  %.sink371 = phi i32 [ 9, %if.then83 ], [ 12, %if.end74.if.end90.sink.split_crit_edge ]
  %sub86 = add i32 %call76, %.sink372
  %div87299 = lshr i32 %sub86, %.sink371
  %min_speed_hz88 = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 8
  %86 = ptrtoint ptr %min_speed_hz88 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div87299, ptr %min_speed_hz88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.end90.sink.split, %if.end74.if.end90_crit_edge
  %87 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mmio_base, align 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #11, !srcloc !136
  %and.i = and i32 %89, -129
  %90 = ptrtoint ptr %mmio_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %and.i) #11, !srcloc !137
  %92 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ssp_type, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %93, label %sw.default94 [
    i32 10, label %sw.bb92
    i32 8, label %sw.bb93
  ]

sw.bb92:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %36, align 4
  %mmio_base.i.i318 = getelementptr inbounds %struct.ssp_device, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %mmio_base.i.i318 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mmio_base.i.i318, align 4
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 960) #11, !srcloc !137
  %99 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %36, align 4
  %mmio_base.i.i319 = getelementptr inbounds %struct.ssp_device, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %mmio_base.i.i319 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mmio_base.i.i319, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 7) #11, !srcloc !137
  br label %sw.epilog102

sw.bb93:                                          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %36, align 4
  %mmio_base.i.i320 = getelementptr inbounds %struct.ssp_device, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %mmio_base.i.i320 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mmio_base.i.i320, align 4
  %add.ptr.i.i321 = getelementptr i8, ptr %106, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i321, i32 1088) #11, !srcloc !137
  %107 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %36, align 4
  %mmio_base.i.i322 = getelementptr inbounds %struct.ssp_device, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %mmio_base.i.i322 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mmio_base.i.i322, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 519) #11, !srcloc !137
  br label %sw.epilog102

sw.default94:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 12
  %111 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %slave.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.i.not = icmp eq i8 %112, 0
  %. = select i1 %tobool.i.not, i32 7616, i32 318768144
  %113 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %36, align 4
  %mmio_base.i.i323 = getelementptr inbounds %struct.ssp_device, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %mmio_base.i.i323 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio_base.i.i323, align 4
  %add.ptr.i.i324 = getelementptr i8, ptr %116, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i324, i32 %.) #11, !srcloc !137
  %117 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %slave.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.i326.not = icmp eq i8 %118, 0
  %tmp.1 = select i1 %tobool.i326.not, i32 519, i32 7
  %119 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %36, align 4
  %mmio_base.i.i327 = getelementptr inbounds %struct.ssp_device, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %mmio_base.i.i327 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio_base.i.i327, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 %tmp.1) #11, !srcloc !137
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %sw.default94, %sw.bb93, %sw.bb92
  %123 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ssp_type, align 4
  %125 = zext i32 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %124, label %if.then105 [
    i32 1, label %sw.epilog102.if.end106_crit_edge
    i32 8, label %sw.epilog102.if.end106_crit_edge378
    i32 10, label %sw.epilog102.if.end106_crit_edge379
  ]

sw.epilog102.if.end106_crit_edge379:              ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.epilog102.if.end106_crit_edge378:              ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

sw.epilog102.if.end106_crit_edge:                 ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then105:                                       ; preds = %sw.epilog102
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %36, align 4
  %mmio_base.i.i332 = getelementptr inbounds %struct.ssp_device, ptr %127, i32 0, i32 3
  %128 = ptrtoint ptr %mmio_base.i.i332 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio_base.i.i332, align 4
  %add.ptr.i.i333 = getelementptr i8, ptr %129, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i333, i32 0) #11, !srcloc !137
  %130 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr = load i32, ptr %ssp_type, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %sw.epilog102.if.end106_crit_edge, %sw.epilog102.if.end106_crit_edge378, %sw.epilog102.if.end106_crit_edge379
  %131 = phi i32 [ %124, %sw.epilog102.if.end106_crit_edge ], [ %124, %sw.epilog102.if.end106_crit_edge378 ], [ %124, %sw.epilog102.if.end106_crit_edge379 ], [ %.pr, %if.then105 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %131)
  %cmp.i335 = icmp eq i32 %131, 10
  br i1 %cmp.i335, label %if.end106.if.end109_crit_edge, label %if.then108

if.end106.if.end109_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109

if.then108:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  %132 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %36, align 4
  %mmio_base.i.i336 = getelementptr inbounds %struct.ssp_device, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %mmio_base.i.i336 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mmio_base.i.i336, align 4
  %add.ptr.i.i337 = getelementptr i8, ptr %135, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i337, i32 0) #11, !srcloc !137
  br label %if.end109

if.end109:                                        ; preds = %if.then108, %if.end106.if.end109_crit_edge
  %136 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ssp_type, align 4
  %.off.i = add i32 %137, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 6
  br i1 %switch.i, label %if.then111, label %if.end109.if.end128_crit_edge

if.end109.if.end128_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then111:                                       ; preds = %if.end109
  %arrayidx.i.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %.off.i
  %138 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %36, align 4
  %mmio_base.i339 = getelementptr inbounds %struct.ssp_device, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %mmio_base.i339 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mmio_base.i339, align 4
  %142 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i340 = getelementptr i8, ptr %141, i32 %143
  %lpss_base.i = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 17
  %144 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %add.ptr.i340, ptr %lpss_base.i, align 4
  %reg_cs_ctrl.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %.off.i, i32 3
  %145 = ptrtoint ptr %reg_cs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %reg_cs_ctrl.i, align 4
  %tobool.not.i.i = icmp eq ptr %add.ptr.i340, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.then111.__lpss_ssp_read_priv.exit.i_crit_edge, !prof !139

if.then111.__lpss_ssp_read_priv.exit.i_crit_edge: ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_read_priv.exit.i

do.end.i.i:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_read_priv.exit.i

__lpss_ssp_read_priv.exit.i:                      ; preds = %do.end.i.i, %if.then111.__lpss_ssp_read_priv.exit.i_crit_edge
  %147 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i.i341 = getelementptr i8, ptr %148, i32 %146
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i341) #11, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %150 = or i32 %149, 50331648
  %151 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i28.i = icmp eq ptr %152, null
  br i1 %tobool.not.i28.i, label %do.end.i29.i, label %__lpss_ssp_read_priv.exit.i.__lpss_ssp_write_priv.exit.i_crit_edge, !prof !139

__lpss_ssp_read_priv.exit.i.__lpss_ssp_write_priv.exit.i_crit_edge: ; preds = %__lpss_ssp_read_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit.i

do.end.i29.i:                                     ; preds = %__lpss_ssp_read_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit.i

__lpss_ssp_write_priv.exit.i:                     ; preds = %do.end.i29.i, %__lpss_ssp_read_priv.exit.i.__lpss_ssp_write_priv.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %153 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %154, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %150) #11, !srcloc !137
  %155 = ptrtoint ptr %controller_info to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %controller_info, align 4
  %enable_dma.i342 = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %enable_dma.i342 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %enable_dma.i342, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i343 = icmp eq i8 %158, 0
  br i1 %tobool.not.i343, label %__lpss_ssp_write_priv.exit.i.lpss_ssp_setup.exit_crit_edge, label %if.then.i

__lpss_ssp_write_priv.exit.i.lpss_ssp_setup.exit_crit_edge: ; preds = %__lpss_ssp_write_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpss_ssp_setup.exit

if.then.i:                                        ; preds = %__lpss_ssp_write_priv.exit.i
  %reg_ssp.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %.off.i, i32 2
  %159 = ptrtoint ptr %reg_ssp.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %reg_ssp.i, align 4
  %161 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i32.i = icmp eq ptr %162, null
  br i1 %tobool.not.i32.i, label %do.end.i33.i, label %if.then.i.__lpss_ssp_write_priv.exit35.i_crit_edge, !prof !139

if.then.i.__lpss_ssp_write_priv.exit35.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit35.i

do.end.i33.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit35.i

__lpss_ssp_write_priv.exit35.i:                   ; preds = %do.end.i33.i, %if.then.i.__lpss_ssp_write_priv.exit35.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %163 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %164, i32 %160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 16777216) #11, !srcloc !137
  %reg_general.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %.off.i, i32 1
  %165 = ptrtoint ptr %reg_general.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %reg_general.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %cmp.i344 = icmp ult i32 %.off.i, 3
  br i1 %cmp.i344, label %if.then3.i345, label %__lpss_ssp_write_priv.exit35.i.lpss_ssp_setup.exit_crit_edge

__lpss_ssp_write_priv.exit35.i.lpss_ssp_setup.exit_crit_edge: ; preds = %__lpss_ssp_write_priv.exit35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lpss_ssp_setup.exit

if.then3.i345:                                    ; preds = %__lpss_ssp_write_priv.exit35.i
  %167 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i37.i = icmp eq ptr %168, null
  br i1 %tobool.not.i37.i, label %do.end.i38.i, label %if.then3.i345.__lpss_ssp_read_priv.exit40.i_crit_edge, !prof !139

if.then3.i345.__lpss_ssp_read_priv.exit40.i_crit_edge: ; preds = %if.then3.i345
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_read_priv.exit40.i

do.end.i38.i:                                     ; preds = %if.then3.i345
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_read_priv.exit40.i

__lpss_ssp_read_priv.exit40.i:                    ; preds = %do.end.i38.i, %if.then3.i345.__lpss_ssp_read_priv.exit40.i_crit_edge
  %169 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i39.i = getelementptr i8, ptr %170, i32 %166
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39.i) #11, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %172 = or i32 %171, 1
  %173 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i42.i = icmp eq ptr %174, null
  br i1 %tobool.not.i42.i, label %do.end.i43.i, label %__lpss_ssp_read_priv.exit40.i.__lpss_ssp_write_priv.exit45.i_crit_edge, !prof !139

__lpss_ssp_read_priv.exit40.i.__lpss_ssp_write_priv.exit45.i_crit_edge: ; preds = %__lpss_ssp_read_priv.exit40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit45.i

do.end.i43.i:                                     ; preds = %__lpss_ssp_read_priv.exit40.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit45.i

__lpss_ssp_write_priv.exit45.i:                   ; preds = %do.end.i43.i, %__lpss_ssp_read_priv.exit40.i.__lpss_ssp_write_priv.exit45.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %175 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %176, i32 %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %172) #11, !srcloc !137
  br label %lpss_ssp_setup.exit

lpss_ssp_setup.exit:                              ; preds = %__lpss_ssp_write_priv.exit45.i, %__lpss_ssp_write_priv.exit35.i.lpss_ssp_setup.exit_crit_edge, %__lpss_ssp_write_priv.exit.i.lpss_ssp_setup.exit_crit_edge
  %177 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ssp_type, align 4
  %sub.i = add i32 %178, -11
  %reg_capabilities = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 4
  %179 = ptrtoint ptr %reg_capabilities to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %reg_capabilities, align 4
  %181 = and i32 %sub.i, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %181)
  %182 = icmp eq i32 %181, 4
  br i1 %182, label %if.then115, label %if.else120

if.then115:                                       ; preds = %lpss_ssp_setup.exit
  %183 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i348 = icmp eq ptr %184, null
  br i1 %tobool.not.i348, label %do.end.i, label %if.then115.__lpss_ssp_read_priv.exit_crit_edge, !prof !139

if.then115.__lpss_ssp_read_priv.exit_crit_edge:   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_read_priv.exit

do.end.i:                                         ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_read_priv.exit

__lpss_ssp_read_priv.exit:                        ; preds = %do.end.i, %if.then115.__lpss_ssp_read_priv.exit_crit_edge
  %185 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i349 = getelementptr i8, ptr %186, i32 %180
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i349) #11, !srcloc !136
  %188 = lshr i32 %187, 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %shr = and i32 %188, 15
  %neg = xor i32 %shr, -1
  %189 = tail call i32 @llvm.cttz.i32(i32 %neg, i1 true) #11, !range !142
  br label %if.end128.sink.split

if.else120:                                       ; preds = %lpss_ssp_setup.exit
  %190 = and i32 %sub.i, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %190)
  %tobool121.not.not = icmp eq i32 %190, 2
  br i1 %tobool121.not.not, label %if.then122, label %if.else120.if.end128_crit_edge

if.else120.if.end128_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then122:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #13
  %cs_num = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 10
  %191 = ptrtoint ptr %cs_num to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cs_num, align 4
  br label %if.end128.sink.split

if.end128.sink.split:                             ; preds = %if.then122, %__lpss_ssp_read_priv.exit
  %.sink373 = phi i32 [ %189, %__lpss_ssp_read_priv.exit ], [ %192, %if.then122 ]
  %conv119 = trunc i32 %.sink373 to i16
  %193 = ptrtoint ptr %platform_info.0 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv119, ptr %platform_info.0, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end128.sink.split, %if.else120.if.end128_crit_edge, %if.end109.if.end128_crit_edge
  %194 = ptrtoint ptr %platform_info.0 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %platform_info.0, align 4
  %num_chipselect130 = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 3
  %196 = ptrtoint ptr %num_chipselect130 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %195, ptr %num_chipselect130, align 2
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i302, i32 0, i32 56
  %197 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %198 = ptrtoint ptr %is_slave to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %is_slave, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool132.not = icmp eq i8 %199, 0
  br i1 %tobool132.not, label %if.end128.if.end141_crit_edge, label %if.then133

if.end128.if.end141_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then133:                                       ; preds = %if.end128
  %call134 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef 3) #11
  %gpiod_ready = getelementptr inbounds %struct.driver_data, ptr %36, i32 0, i32 18
  %200 = ptrtoint ptr %gpiod_ready to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call134, ptr %gpiod_ready, align 4
  %cmp.i351 = icmp ugt ptr %call134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i351, label %if.then137, label %if.then133.if.end141_crit_edge

if.then133.if.end141_crit_edge:                   ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then137:                                       ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #13
  %201 = ptrtoint ptr %call134 to i32
  br label %out_error_clock_enabled

if.end141:                                        ; preds = %if.then133.if.end141_crit_edge, %if.end128.if.end141_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 50) #11
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #11
  %call.i352 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #11
  tail call void @pm_runtime_enable(ptr noundef %dev1) #11
  %driver_data.i.i353 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %202 = ptrtoint ptr %driver_data.i.i353 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %36, ptr %driver_data.i.i353, align 4
  %call147 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i302) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end141.cleanup159_crit_edge, label %do.end152

if.end141.cleanup159_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup159

do.end152:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #11
  br label %out_error_clock_enabled

out_error_clock_enabled:                          ; preds = %do.end152, %if.then137
  %status.0 = phi i32 [ %201, %if.then137 ], [ %call147, %do.end152 ]
  %203 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %204) #11
  br label %out_error_dma_irq_alloc.sink.split

out_error_dma_irq_alloc.sink.split:               ; preds = %out_error_clock_enabled, %if.end.i310.out_error_dma_irq_alloc.sink.split_crit_edge
  %.sink374 = phi ptr [ %204, %out_error_clock_enabled ], [ %79, %if.end.i310.out_error_dma_irq_alloc.sink.split_crit_edge ]
  %status.1.ph = phi i32 [ %status.0, %out_error_clock_enabled ], [ %call1.i, %if.end.i310.out_error_dma_irq_alloc.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink374) #11
  br label %out_error_dma_irq_alloc

out_error_dma_irq_alloc:                          ; preds = %out_error_dma_irq_alloc.sink.split, %if.end70.out_error_dma_irq_alloc_crit_edge
  %status.1 = phi i32 [ %call.i308, %if.end70.out_error_dma_irq_alloc_crit_edge ], [ %status.1.ph, %out_error_dma_irq_alloc.sink.split ]
  tail call void @pxa2xx_spi_dma_release(ptr noundef %36) #11
  %205 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %irq, align 4
  %call158 = tail call ptr @free_irq(i32 noundef %206, ptr noundef %36) #11
  br label %out_error_controller_alloc

out_error_controller_alloc:                       ; preds = %out_error_dma_irq_alloc, %do.end55, %do.end29
  %status.2 = phi i32 [ %call.i307, %do.end55 ], [ %status.1, %out_error_dma_irq_alloc ], [ -12, %do.end29 ]
  tail call void @pxa_ssp_free(ptr noundef %spec.select) #11
  br label %cleanup159

cleanup159:                                       ; preds = %out_error_controller_alloc, %if.end141.cleanup159_crit_edge, %do.end17, %do.end
  %retval.0 = phi i32 [ %status.2, %out_error_controller_alloc ], [ -19, %do.end17 ], [ %26, %do.end ], [ 0, %if.end141.cleanup159_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  %controller = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 4
  tail call void @spi_unregister_controller(ptr noundef %5) #11
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !136
  %and.i = and i32 %8, -129
  %9 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i) #11, !srcloc !137
  %clk = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #11
  tail call void @clk_unprepare(ptr noundef %12) #11
  %controller_info = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %controller_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller_info, align 4
  %enable_dma = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_dma, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pxa2xx_spi_dma_release(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !143
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #11, !srcloc !144
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !145
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  %irq = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %19, ptr noundef %1) #11
  tail call void @pxa_ssp_free(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pxa_ssp_request(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup(ptr nocapture noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  %cs_gpio.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %2 = ptrtoint ptr %cs_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cs_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.end.i, label %entry.cleanup_cs.exit_crit_edge

entry.cleanup_cs.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_cs.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpio_free(i32 noundef %3) #11
  %5 = ptrtoint ptr %cs_gpio.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2, ptr %cs_gpio.i, align 4
  br label %cleanup_cs.exit

cleanup_cs.exit:                                  ; preds = %if.end.i, %entry.cleanup_cs.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @setup(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ssp_type = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssp_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %5, label %sw.default [
    i32 10, label %entry.sw.epilog_crit_edge
    i32 9, label %sw.bb1
    i32 8, label %sw.bb2
    i32 11, label %entry.sw.bb3_crit_edge
    i32 12, label %entry.sw.bb3_crit_edge250
    i32 13, label %entry.sw.bb3_crit_edge251
    i32 14, label %entry.sw.bb3_crit_edge252
    i32 15, label %entry.sw.bb3_crit_edge253
    i32 16, label %entry.sw.bb3_crit_edge254
  ]

entry.sw.bb3_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge250, %entry.sw.bb3_crit_edge251, %entry.sw.bb3_crit_edge252, %entry.sw.bb3_crit_edge253, %entry.sw.bb3_crit_edge254
  %sub.i = add nsw i32 %5, -11
  %tx_threshold_lo = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 6
  %7 = ptrtoint ptr %tx_threshold_lo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_threshold_lo, align 4
  %tx_threshold_hi = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 7
  %9 = ptrtoint ptr %tx_threshold_hi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_threshold_hi, align 4
  %rx_threshold = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 5
  %11 = ptrtoint ptr %rx_threshold to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_threshold, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %controller5 = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %controller5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %controller5, align 4
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %slave.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.not = icmp eq i8 %16, 0
  %. = select i1 %tobool.i.not, i32 8, i32 1
  %.235 = select i1 %tobool.i.not, i32 8, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %tx_thres.0 = phi i32 [ %8, %sw.bb3 ], [ 2, %sw.bb2 ], [ 16, %sw.bb1 ], [ 16, %entry.sw.epilog_crit_edge ], [ %., %sw.default ]
  %tx_hi_thres.0 = phi i32 [ %10, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.default ]
  %rx_thres.0 = phi i32 [ %12, %sw.bb3 ], [ 2, %sw.bb2 ], [ 16, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ], [ %.235, %sw.default ]
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %17 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %controller_state.i, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then8, label %sw.epilog.if.end21_crit_edge

sw.epilog.if.end21_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then8:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 32) #15
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  %20 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp = icmp eq i32 %21, 8
  br i1 %cmp, label %if.then14, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %22 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp15 = icmp ugt i8 %23, 4
  br i1 %cmp15, label %do.end, label %if.then14.if.end19_crit_edge

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  %controller_info = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %controller_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller_info, align 4
  %enable_dma = getelementptr inbounds %struct.pxa2xx_spi_controller, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %enable_dma, align 2
  %enable_dma20 = getelementptr inbounds %struct.chip_data, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %enable_dma20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %enable_dma20, align 4
  %timeout = getelementptr inbounds %struct.chip_data, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1000, ptr %timeout, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %sw.epilog.if.end21_crit_edge
  %chip.0 = phi ptr [ %18, %sw.epilog.if.end21_crit_edge ], [ %call7.i.i, %if.end19 ]
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %30 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %controller_data, align 4
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %if.end21.if.end46_crit_edge, label %if.then23

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then23:                                        ; preds = %if.end21
  %timeout24 = getelementptr inbounds %struct.pxa2xx_spi_chip, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %timeout24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timeout24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool25.not = icmp eq i32 %33, 0
  br i1 %tobool25.not, label %if.then23.if.end29_crit_edge, label %if.then26

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %timeout28 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 2
  %34 = ptrtoint ptr %timeout28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %timeout28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23.if.end29_crit_edge
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool30.not = icmp eq i8 %36, 0
  %conv33 = zext i8 %36 to i32
  %spec.select = select i1 %tobool30.not, i32 %tx_thres.0, i32 %conv33
  %tx_hi_threshold = getelementptr inbounds %struct.pxa2xx_spi_chip, ptr %31, i32 0, i32 1
  %37 = ptrtoint ptr %tx_hi_threshold to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_hi_threshold, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool35.not = icmp eq i8 %38, 0
  %conv38 = zext i8 %38 to i32
  %tx_hi_thres.1 = select i1 %tobool35.not, i32 %tx_hi_thres.0, i32 %conv38
  %rx_threshold40 = getelementptr inbounds %struct.pxa2xx_spi_chip, ptr %31, i32 0, i32 2
  %39 = ptrtoint ptr %rx_threshold40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %rx_threshold40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool41.not = icmp eq i8 %40, 0
  %conv44 = zext i8 %40 to i32
  %rx_thres.1 = select i1 %tobool41.not, i32 %rx_thres.0, i32 %conv44
  %dma_threshold = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 5
  %41 = ptrtoint ptr %dma_threshold to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dma_threshold, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end29, %if.end21.if.end46_crit_edge
  %tx_thres.2 = phi i32 [ %spec.select, %if.end29 ], [ %tx_thres.0, %if.end21.if.end46_crit_edge ]
  %tx_hi_thres.2 = phi i32 [ %tx_hi_thres.1, %if.end29 ], [ %tx_hi_thres.0, %if.end21.if.end46_crit_edge ]
  %rx_thres.2 = phi i32 [ %rx_thres.1, %if.end29 ], [ %rx_thres.0, %if.end21.if.end46_crit_edge ]
  %42 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %chip.0, align 4
  %controller47 = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 2
  %43 = ptrtoint ptr %controller47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %controller47, align 4
  %slave.i236 = getelementptr inbounds %struct.spi_controller, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %slave.i236 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %slave.i236, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i237.not = icmp eq i8 %46, 0
  %spec.store.select = select i1 %tobool.i237.not, i32 0, i32 318767120
  %47 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.store.select, ptr %chip.0, align 4
  %48 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ssp_type, align 4
  %.off.i = add i32 %49, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 6
  br i1 %switch.i, label %if.then59, label %if.end46.if.end66_crit_edge

if.end46.if.end66_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then59:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %50 = trunc i32 %rx_thres.2 to i16
  %conv60 = add i16 %50, -1
  %lpss_rx_threshold = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 7
  %51 = ptrtoint ptr %lpss_rx_threshold to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv60, ptr %lpss_rx_threshold, align 4
  %sub61 = shl i32 %tx_thres.2, 8
  %shl = add i32 %sub61, 65280
  %sub62 = add i32 %tx_hi_thres.2, 65535
  %or64 = or i32 %shl, %sub62
  %conv65 = trunc i32 %or64 to i16
  %lpss_tx_threshold = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 8
  %52 = ptrtoint ptr %lpss_tx_threshold to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv65, ptr %lpss_tx_threshold, align 2
  %53 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load i32, ptr %ssp_type, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then59, %if.end46.if.end66_crit_edge
  %54 = phi i32 [ %.pr, %if.then59 ], [ %49, %if.end46.if.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %54)
  %cmp.i = icmp eq i32 %54, 9
  br i1 %cmp.i, label %if.then68, label %if.end66.if.end73_crit_edge

if.end66.if.end73_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %conv69 = trunc i32 %rx_thres.2 to i16
  %lpss_rx_threshold70 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 7
  %55 = ptrtoint ptr %lpss_rx_threshold70 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv69, ptr %lpss_rx_threshold70, align 4
  %conv71 = trunc i32 %tx_thres.2 to i16
  %lpss_tx_threshold72 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 8
  %56 = ptrtoint ptr %lpss_tx_threshold72 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv71, ptr %lpss_tx_threshold72, align 2
  br label %if.end73

if.end73:                                         ; preds = %if.then68, %if.end66.if.end73_crit_edge
  %enable_dma74 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 3
  %57 = ptrtoint ptr %enable_dma74 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %enable_dma74, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool75.not = icmp eq i8 %58, 0
  br i1 %tobool75.not, label %if.end73.if.end98_crit_edge, label %if.then76

if.end73.if.end98_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end98

if.then76:                                        ; preds = %if.end73
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %59 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bits_per_word, align 1
  %dma_burst_size = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 4
  %dma_threshold77 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 5
  %call78 = tail call i32 @pxa2xx_spi_set_dma_burst_and_threshold(ptr noundef nonnull %chip.0, ptr noundef %spi, i8 noundef zeroext %60, ptr noundef %dma_burst_size, ptr noundef %dma_threshold77) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then76.do.body86_crit_edge, label %do.end83

if.then76.do.body86_crit_edge:                    ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body86

do.end83:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.27) #14
  br label %do.body86

do.body86:                                        ; preds = %do.end83, %if.then76.do.body86_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @setup.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@setup, %if.end98)) #11
          to label %if.then92 [label %if.end98], !srcloc !146

if.then92:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_burst_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @setup.__UNIQUE_ID_ddebug250, ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %62) #11
  br label %if.end98

if.end98:                                         ; preds = %if.then92, %do.body86, %if.end73.if.end98_crit_edge
  %63 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ssp_type, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %64, label %sw.default116 [
    i32 10, label %if.end98.sw.epilog125_crit_edge
    i32 8, label %sw.bb107
  ]

if.end98.sw.epilog125_crit_edge:                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog125

sw.bb107:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog125

sw.default116:                                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog125

sw.epilog125:                                     ; preds = %sw.default116, %sw.bb107, %if.end98.sw.epilog125_crit_edge
  %.sink249 = phi i32 [ 10, %sw.default116 ], [ 10, %sw.bb107 ], [ 11, %if.end98.sw.epilog125_crit_edge ]
  %.sink248 = phi i32 [ 15360, %sw.default116 ], [ 3072, %sw.bb107 ], [ 63488, %if.end98.sw.epilog125_crit_edge ]
  %.sink246 = phi i32 [ 960, %sw.default116 ], [ 192, %sw.bb107 ], [ 1984, %if.end98.sw.epilog125_crit_edge ]
  %sub117 = shl i32 %rx_thres.2, %.sink249
  %shl118 = add i32 %sub117, %.sink248
  %and119 = and i32 %shl118, %.sink248
  %sub120 = shl i32 %tx_thres.2, 6
  %shl121 = add i32 %sub120, %.sink246
  %and122 = and i32 %shl121, %.sink246
  %or123 = or i32 %and119, %and122
  %threshold124 = getelementptr inbounds %struct.chip_data, ptr %chip.0, i32 0, i32 6
  %66 = ptrtoint ptr %threshold124 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or123, ptr %threshold124, align 4
  %67 = ptrtoint ptr %chip.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %chip.0, align 4
  %and127 = and i32 %68, -25
  store i32 %and127, ptr %chip.0, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %69 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode, align 8
  %trunc = trunc i32 %70 to i5
  %rev = tail call i5 @llvm.bitreverse.i5(i5 %trunc)
  %mask = and i5 %rev, -8
  %or134 = zext i5 %mask to i32
  %or136 = or i32 %and127, %or134
  %71 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or136, ptr %chip.0, align 4
  %72 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mode, align 8
  %and138 = and i32 %73, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %sw.epilog125.if.end143_crit_edge, label %if.then140

sw.epilog125.if.end143_crit_edge:                 ; preds = %sw.epilog125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then140:                                       ; preds = %sw.epilog125
  call void @__sanitizer_cov_trace_pc() #13
  %or142 = or i32 %or136, 4
  %74 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or142, ptr %chip.0, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %sw.epilog125.if.end143_crit_edge
  %75 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %chip.0, ptr %controller_state.i, align 8
  %76 = ptrtoint ptr %ssp_type to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ssp_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %77)
  %cmp145 = icmp eq i32 %77, 8
  %or.cond = select i1 %cmp145, i1 true, i1 %tobool22.not
  br i1 %or.cond, label %if.end143.cleanup_crit_edge, label %if.end3.i

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end143
  %78 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %controller, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %driver_data.i.i.i, align 4
  %ssp_type.i242 = getelementptr inbounds %struct.driver_data, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ssp_type.i242 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ssp_type.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %83)
  %cmp4.i = icmp eq i32 %83, 8
  br i1 %cmp4.i, label %if.end3.i.cleanup_crit_edge, label %if.end6.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6.i:                                        ; preds = %if.end3.i
  %cs_gpio.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %84 = ptrtoint ptr %cs_gpio.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cs_gpio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %85)
  %86 = icmp ult i32 %85, 2048
  br i1 %86, label %if.end.i.i, label %if.end6.i.cleanup_cs.exit.i_crit_edge

if.end6.i.cleanup_cs.exit.i_crit_edge:            ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup_cs.exit.i

if.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpio_free(i32 noundef %85) #11
  %87 = ptrtoint ptr %cs_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -2, ptr %cs_gpio.i.i, align 4
  br label %cleanup_cs.exit.i

cleanup_cs.exit.i:                                ; preds = %if.end.i.i, %if.end6.i.cleanup_cs.exit.i_crit_edge
  %gpio_cs.i = getelementptr inbounds %struct.pxa2xx_spi_chip, ptr %31, i32 0, i32 5
  %88 = ptrtoint ptr %gpio_cs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gpio_cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %89)
  %90 = icmp ult i32 %89, 2048
  br i1 %90, label %if.then8.i, label %cleanup_cs.exit.i.cleanup_crit_edge

cleanup_cs.exit.i.cleanup_crit_edge:              ; preds = %cleanup_cs.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8.i:                                       ; preds = %cleanup_cs.exit.i
  %call10.i = tail call i32 @gpio_request(i32 noundef %89, ptr noundef nonnull @.str.31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %do.end.i

do.end.i:                                         ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %89) #14
  br label %if.then151

if.end12.i:                                       ; preds = %if.then8.i
  %91 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mode, align 8
  %and.i = lshr i32 %92, 2
  %and.lobit.i = and i32 %and.i, 1
  %93 = xor i32 %and.lobit.i, 1
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %89) #11
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef %93) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool15.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool15.not.i, label %cleanup.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @gpio_free(i32 noundef %89) #11
  br label %if.then151

cleanup.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %94 = ptrtoint ptr %cs_gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %89, ptr %cs_gpio.i.i, align 4
  br label %cleanup

if.then151:                                       ; preds = %if.then16.i, %do.end.i
  %retval.1.i = phi i32 [ %call1.i.i, %if.then16.i ], [ %call10.i, %do.end.i ]
  tail call void @kfree(ptr noundef nonnull %chip.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %cleanup.i, %cleanup_cs.exit.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %do.end, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then8.cleanup_crit_edge ], [ 0, %if.end143.cleanup_crit_edge ], [ %retval.1.i, %if.then151 ], [ 0, %if.end3.i.cleanup_crit_edge ], [ 0, %cleanup.i ], [ 0, %cleanup_cs.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa2xx_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp.i = icmp eq i32 %5, 8
  br i1 %level, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %6, 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %mmio_base.i.i17.i = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %mmio_base.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i17.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18.i) #11, !srcloc !136
  %and19.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool.not20.i = icmp eq i32 %and19.i, 0
  br i1 %tobool.not20.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp3.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp3.i, label %do.end.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !147
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !148
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %17, 16
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.while.end.i_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %18 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssp_type.i, align 4
  %.off.i.i = add i32 %19, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 6
  br i1 %switch.i.i, label %if.then11.i, label %while.end.i.if.end_crit_edge

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @lpss_ssp_cs_control(ptr noundef %spi, i1 noundef zeroext false) #11
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.i, label %if.end.i10

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %20 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %mmio_base.i.i.i6 = getelementptr inbounds %struct.ssp_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %mmio_base.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio_base.i.i.i6, align 4
  %add.ptr.i.i.i7 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i7, i32 %conv.i) #11, !srcloc !137
  br label %if.end

if.end.i10:                                       ; preds = %if.else
  %.off.i.i8 = add i32 %5, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i.i8)
  %switch.i.i9 = icmp ult i32 %.off.i.i8, 6
  br i1 %switch.i.i9, label %if.then2.i, label %if.end.i10.if.end_crit_edge

if.end.i10.if.end_crit_edge:                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @lpss_ssp_cs_control(ptr noundef %spi, i1 noundef zeroext true) #11
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.end.i10.if.end_crit_edge, %if.then.i, %if.then11.i, %while.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_transfer_one(ptr noundef %controller, ptr noundef %spi, ptr noundef %transfer) #0 align 64 {
entry:
  %dma_thresh = alloca i32, align 4
  %dma_burst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 31
  %2 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_msg, align 4
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %4 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_state.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_thresh) #11
  %dma_threshold = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dma_threshold to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_threshold, align 4
  %8 = ptrtoint ptr %dma_thresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dma_thresh, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_burst) #11
  %dma_burst_size = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_burst_size, align 4
  %11 = ptrtoint ptr %dma_burst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %dma_burst, align 4
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %switch.selectcmp.i = icmp eq i32 %13, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -540947204, i32 -540934148
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %switch.selectcmp2.i = icmp eq i32 %13, 10
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 262108, i32 %switch.select.i
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %15)
  %cmp = icmp ugt i32 %15, 65536
  br i1 %cmp, label %land.lhs.true, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %entry
  %enable_dma = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %land.lhs.true.if.end21_crit_edge, label %if.then

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then:                                          ; preds = %land.lhs.true
  %is_dma_mapped = getelementptr inbounds %struct.spi_message, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %is_dma_mapped to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %is_dma_mapped, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool3.not, label %lor.lhs.false, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then
  %rx_dma = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 4
  %19 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not = icmp eq i32 %20, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %tx_dma = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 3
  %21 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not = icmp eq i32 %22, 0
  br i1 %tobool6.not, label %do.body9, label %lor.lhs.false5.do.end_crit_edge

lor.lhs.false5.do.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false5.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.34, i32 noundef %15, i32 noundef 65536) #14
  br label %cleanup

do.body9:                                         ; preds = %lor.lhs.false5
  %call10 = tail call i32 @___ratelimit(ptr noundef nonnull @pxa2xx_spi_transfer_one._rs, ptr noundef nonnull @.str.35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body9.if.end21_crit_edge, label %do.end15

do.body9.if.end21_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.38, i32 noundef %24, i32 noundef 65536) #14
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %do.body9.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %entry.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %25 = load i32, ptr @loops_per_jiffy, align 4
  %shl.i = shl i32 %25, 1
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %if.end21
  %limit.0.i = phi i32 [ %shl.i, %if.end21 ], [ %dec.i, %land.rhs.i.do.body.i_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i13.i = getelementptr inbounds %struct.ssp_device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %mmio_base.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio_base.i.i.i13.i, align 4
  %add.ptr.i.i.i14.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14.i) #11, !srcloc !136
  %and.i15.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.not16.i, label %do.body.i.do.cond.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %39, i32 8
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %40, 8
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.cond.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.do.cond.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.cond.i:                                        ; preds = %while.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %mmio_base.i.i9.i = getelementptr inbounds %struct.ssp_device, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %mmio_base.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio_base.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %44, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #11, !srcloc !136
  %and.i = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.cond.i.do.end.i_crit_edge, label %land.rhs.i

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.rhs.i:                                       ; preds = %do.cond.i
  %dec.i = add i32 %limit.0.i, -1
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.do.end.i_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %land.rhs.i.do.end.i_crit_edge, %do.cond.i.do.end.i_crit_edge
  %limit.1.i = phi i32 [ 0, %land.rhs.i.do.end.i_crit_edge ], [ %limit.0.i, %do.cond.i.do.end.i_crit_edge ]
  %46 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ssp_type.i, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %47, label %do.end.i.pxa2xx_spi_flush.exit_crit_edge [
    i32 8, label %do.end.i.if.then.i.i_crit_edge
    i32 10, label %do.end.i.if.then.i.i_crit_edge459
  ]

do.end.i.if.then.i.i_crit_edge459:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

do.end.i.if.then.i.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

do.end.i.pxa2xx_spi_flush.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_flush.exit

if.then.i.i:                                      ; preds = %do.end.i.if.then.i.i_crit_edge, %do.end.i.if.then.i.i_crit_edge459
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %mmio_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio_base.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %52, i32 8
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #11, !srcloc !136
  %and.i.i.i = and i32 %53, 3
  %or.i.i = or i32 %and.i.i.i, 128
  br label %pxa2xx_spi_flush.exit

pxa2xx_spi_flush.exit:                            ; preds = %if.then.i.i, %do.end.i.pxa2xx_spi_flush.exit_crit_edge
  %val.addr.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ 128, %do.end.i.pxa2xx_spi_flush.exit_crit_edge ]
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i11.i = getelementptr inbounds %struct.ssp_device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %mmio_base.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio_base.i.i.i11.i, align 4
  %add.ptr.i.i.i12.i = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i12.i, i32 %val.addr.0.i.i) #11, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.1.i)
  %cmp23 = icmp eq i32 %limit.1.i, 0
  br i1 %cmp23, label %do.end28, label %if.end30

do.end28:                                         ; preds = %pxa2xx_spi_flush.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.41) #14
  br label %cleanup

if.end30:                                         ; preds = %pxa2xx_spi_flush.exit
  %58 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %transfer, align 4
  %tx = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %tx, align 4
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %59, i32 %62
  %tx_end = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 10
  %63 = ptrtoint ptr %tx_end to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr, ptr %tx_end, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %64 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_buf, align 4
  %rx = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %rx, align 4
  %67 = load i32, ptr %len, align 4
  %add.ptr35 = getelementptr i8, ptr %65, i32 %67
  %rx_end = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 12
  %68 = ptrtoint ptr %rx_end to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr35, ptr %rx_end, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 8
  %69 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bits_per_word, align 1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 12
  %71 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %speed_hz, align 4
  %controller.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 2
  %73 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %controller.i, align 4
  %75 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %76)
  %cond.i = icmp eq i32 %76, 10
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end30
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %74, i32 0, i32 31
  %77 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cur_msg.i, align 4
  %spi.i = getelementptr inbounds %struct.spi_message, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi.i, align 4
  %controller_state.i.i = getelementptr inbounds %struct.spi_device, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %controller_state.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %controller_state.i.i, align 8
  %dds_rate.i = getelementptr inbounds %struct.chip_data, ptr %82, i32 0, i32 1
  %sub.i.i = add i32 %72, 49999999
  %div4.i.i = udiv i32 %sub.i.i, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div4.i.i)
  %cmp.i.i = icmp ugt i32 %div4.i.i, 256
  br i1 %cmp.i.i, label %if.then.i.i363, label %sw.bb.i.if.end12.i.i_crit_edge

sw.bb.i.if.end12.i.i_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12.i.i

if.then.i.i363:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub5.i.i = add i32 %div4.i.i, -1
  %83 = tail call i32 @llvm.ctlz.i32(i32 %sub5.i.i, i1 true) #11, !range !142
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %sub5.i.i)
  %cmp6.i.i = icmp ugt i32 %sub5.i.i, 511
  %sub8.i.i = sub nsw i32 23, %83
  %shr10.i.i = lshr i32 8388608, %sub8.i.i
  %shr.i.i = select i1 %cmp6.i.i, i32 %sub8.i.i, i32 0
  %q1.0.i.i = lshr i32 %div4.i.i, %shr.i.i
  %mul3.0.i.i = select i1 %cmp6.i.i, i32 %shr10.i.i, i32 8388608
  %and.i.i362 = and i32 %q1.0.i.i, 1
  %add11.i.i = add i32 %and.i.i362, %q1.0.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then.i.i363, %sw.bb.i.if.end12.i.i_crit_edge
  %q1.1.i.i = phi i32 [ %add11.i.i, %if.then.i.i363 ], [ %div4.i.i, %sw.bb.i.if.end12.i.i_crit_edge ]
  %mul3.1.i.i = phi i32 [ %mul3.0.i.i, %if.then.i.i363 ], [ 8388608, %sw.bb.i.if.end12.i.i_crit_edge ]
  %84 = tail call i32 @llvm.cttz.i32(i32 %q1.1.i.i, i1 false) #11, !range !142
  %shr14.i.i = lshr i32 %q1.1.i.i, %84
  %shr15.i.i = lshr i32 %mul3.1.i.i, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr15.i.i)
  %tobool.not.i.i389.i.i = icmp eq i32 %shr15.i.i, 0
  %85 = tail call i32 @llvm.ctlz.i32(i32 %shr15.i.i, i1 true) #11, !range !142
  %sub.i.i390.neg.op.i.i = add nsw i32 %85, -8
  %sub.i.i390.neg.op.op.i.i = lshr i32 50000000, %sub.i.i390.neg.op.i.i
  %div18387.i.i = select i1 %tobool.not.i.i389.i.i, i32 2, i32 %sub.i.i390.neg.op.op.i.i
  %div19.i.i = udiv i32 %div18387.i.i, %shr14.i.i
  %sub20.i.i = sub i32 %div19.i.i, %72
  %86 = tail call i32 @llvm.abs.i32(i32 %sub20.i.i, i1 false) #11
  %sub24.i.i = add i32 %72, 39999999
  %div25.i.i = udiv i32 %sub24.i.i, %72
  %div27.i.i = udiv i32 40000000, %div25.i.i
  %sub28.i.i = sub i32 %div27.i.i, %72
  %87 = tail call i32 @llvm.abs.i32(i32 %sub28.i.i, i1 false) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %86)
  %cmp36.not.i.i = icmp sge i32 %87, %86
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div25.i.i)
  %cmp37.i.i = icmp ugt i32 %div25.i.i, 256
  %or.cond.i.i = or i1 %cmp37.i.i, %cmp36.not.i.i
  %mul3.2.i.i = select i1 %or.cond.i.i, i32 %shr15.i.i, i32 6710886
  %q.0.i.i = select i1 %or.cond.i.i, i32 %shr14.i.i, i32 %div25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250001, i32 %72)
  %cmp41.i.i = icmp ult i32 %72, 1250001
  br i1 %cmp41.i.i, label %if.then42.i.i, label %if.end12.i.i.quark_x1000_get_clk_div.exit.i_crit_edge

if.end12.i.i.quark_x1000_get_clk_div.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %quark_x1000_get_clk_div.exit.i

if.then42.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %r.0.i.i = select i1 %or.cond.i.i, i32 %86, i32 %87
  %sub44.i.i = add nuw nsw i32 %72, 99999999
  %div45.i.i = udiv i32 %sub44.i.i, %72
  %div46.i.i = udiv i32 16777216, %div45.i.i
  %conv47.i.i = zext i32 %div46.i.i to i64
  %mul48.i.i = mul nuw nsw i64 %conv47.i.i, 100000000
  %shr69.i.i = lshr i64 %mul48.i.i, 24
  %conv248392.i.i = zext i32 %72 to i64
  %sub249.i.i = sub nsw i64 %shr69.i.i, %conv248392.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub249.i.i)
  %cmp251.i.i = icmp slt i64 %sub249.i.i, 0
  %88 = trunc i64 %sub249.i.i to i32
  %extract.t.i.i = sub nsw i32 0, %88
  %cond257.off0.i.i = select i1 %cmp251.i.i, i32 %extract.t.i.i, i32 %88
  call void @__sanitizer_cov_trace_cmp4(i32 %cond257.off0.i.i, i32 %r.0.i.i)
  %cmp259.i.i = icmp slt i32 %cond257.off0.i.i, %r.0.i.i
  %mul3.3.i.i = select i1 %cmp259.i.i, i32 %div46.i.i, i32 %mul3.2.i.i
  %q.1.i.i = select i1 %cmp259.i.i, i32 1, i32 %q.0.i.i
  br label %quark_x1000_get_clk_div.exit.i

quark_x1000_get_clk_div.exit.i:                   ; preds = %if.then42.i.i, %if.end12.i.i.quark_x1000_get_clk_div.exit.i_crit_edge
  %mul3.4.i.i = phi i32 [ %mul3.3.i.i, %if.then42.i.i ], [ %mul3.2.i.i, %if.end12.i.i.quark_x1000_get_clk_div.exit.i_crit_edge ]
  %q.2.i.i = phi i32 [ %q.1.i.i, %if.then42.i.i ], [ %q.0.i.i, %if.end12.i.i.quark_x1000_get_clk_div.exit.i_crit_edge ]
  %89 = ptrtoint ptr %dds_rate.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %mul3.4.i.i, ptr %dds_rate.i, align 4
  %sub264.i.i = add i32 %q.2.i.i, -1
  br label %pxa2xx_ssp_get_clk_div.exit

sw.default.i:                                     ; preds = %if.end30
  %max_speed_hz.i.i = getelementptr inbounds %struct.spi_controller, ptr %74, i32 0, i32 9
  %90 = ptrtoint ptr %max_speed_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_speed_hz.i.i, align 8
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %94 = tail call i32 @llvm.smin.i32(i32 %91, i32 %72) #11
  %type.i.i = getelementptr inbounds %struct.ssp_device, ptr %93, i32 0, i32 7
  %95 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type.i.i, align 4
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %96, label %sw.default.i.ssp_get_clk_div.exit.i_crit_edge [
    i32 1, label %sw.default.i.if.then.i6.i_crit_edge
    i32 8, label %sw.default.i.if.then.i6.i_crit_edge460
  ]

sw.default.i.if.then.i6.i_crit_edge460:           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i6.i

sw.default.i.if.then.i6.i_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i6.i

sw.default.i.ssp_get_clk_div.exit.i_crit_edge:    ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ssp_get_clk_div.exit.i

if.then.i6.i:                                     ; preds = %sw.default.i.if.then.i6.i_crit_edge, %sw.default.i.if.then.i6.i_crit_edge460
  %mul.i.i = shl i32 %94, 1
  br label %ssp_get_clk_div.exit.i

ssp_get_clk_div.exit.i:                           ; preds = %if.then.i6.i, %sw.default.i.ssp_get_clk_div.exit.i_crit_edge
  %.sink26.i.i = phi i32 [ %mul.i.i, %if.then.i6.i ], [ %94, %sw.default.i.ssp_get_clk_div.exit.i_crit_edge ]
  %.sink24.i.i = phi i32 [ 255, %if.then.i6.i ], [ 4095, %sw.default.i.ssp_get_clk_div.exit.i_crit_edge ]
  %add7.i.i = add i32 %91, -1
  %sub8.i7.i = add i32 %add7.i.i, %.sink26.i.i
  %div9.i.i = udiv i32 %sub8.i7.i, %.sink26.i.i
  %sub10.i.i = add i32 %div9.i.i, %.sink24.i.i
  %and11.i.i = and i32 %sub10.i.i, %.sink24.i.i
  br label %pxa2xx_ssp_get_clk_div.exit

pxa2xx_ssp_get_clk_div.exit:                      ; preds = %ssp_get_clk_div.exit.i, %quark_x1000_get_clk_div.exit.i
  %clk_div.0.i = phi i32 [ %sub264.i.i, %quark_x1000_get_clk_div.exit.i ], [ %and11.i.i, %ssp_get_clk_div.exit.i ]
  %shl.i364 = shl i32 %clk_div.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %70)
  %cmp38 = icmp ult i8 %70, 9
  br i1 %cmp38, label %pxa2xx_ssp_get_clk_div.exit.if.end75.sink.split_crit_edge, label %if.else

pxa2xx_ssp_get_clk_div.exit.if.end75.sink.split_crit_edge: ; preds = %pxa2xx_ssp_get_clk_div.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.sink.split

if.else:                                          ; preds = %pxa2xx_ssp_get_clk_div.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %70)
  %cmp47 = icmp ult i8 %70, 17
  br i1 %cmp47, label %if.else.if.end75.sink.split_crit_edge, label %if.else59

if.else.if.end75.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.sink.split

if.else59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %70)
  %cmp61 = icmp ult i8 %70, 33
  br i1 %cmp61, label %if.else59.if.end75.sink.split_crit_edge, label %if.else59.if.end75_crit_edge

if.else59.if.end75_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.else59.if.end75.sink.split_crit_edge:          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75.sink.split

if.end75.sink.split:                              ; preds = %if.else59.if.end75.sink.split_crit_edge, %if.else.if.end75.sink.split_crit_edge, %pxa2xx_ssp_get_clk_div.exit.if.end75.sink.split_crit_edge
  %.sink = phi i8 [ 1, %pxa2xx_ssp_get_clk_div.exit.if.end75.sink.split_crit_edge ], [ 2, %if.else.if.end75.sink.split_crit_edge ], [ 4, %if.else59.if.end75.sink.split_crit_edge ]
  %u16_reader.sink = phi ptr [ @u8_reader, %pxa2xx_ssp_get_clk_div.exit.if.end75.sink.split_crit_edge ], [ @u16_reader, %if.else.if.end75.sink.split_crit_edge ], [ @u32_reader, %if.else59.if.end75.sink.split_crit_edge ]
  %u16_writer.sink = phi ptr [ @u8_writer, %pxa2xx_ssp_get_clk_div.exit.if.end75.sink.split_crit_edge ], [ @u16_writer, %if.else.if.end75.sink.split_crit_edge ], [ @u32_writer, %if.else59.if.end75.sink.split_crit_edge ]
  %n_bytes50 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 13
  %98 = ptrtoint ptr %n_bytes50 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %.sink, ptr %n_bytes50, align 4
  %99 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx, align 4
  %tobool52.not = icmp eq ptr %100, null
  %cond53 = select i1 %tobool52.not, ptr @null_reader, ptr %u16_reader.sink
  %read54 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 15
  %101 = ptrtoint ptr %read54 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %cond53, ptr %read54, align 4
  %102 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %tx, align 4
  %tobool56.not = icmp eq ptr %103, null
  %cond57 = select i1 %tobool56.not, ptr @null_writer, ptr %u16_writer.sink
  %write58 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 14
  %104 = ptrtoint ptr %write58 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %cond57, ptr %write58, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.else59.if.end75_crit_edge
  %enable_dma76 = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 3
  %105 = ptrtoint ptr %enable_dma76 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %enable_dma76, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool77.not = icmp eq i8 %106, 0
  br i1 %tobool77.not, label %if.end75.if.end94_crit_edge, label %if.then78

if.end75.if.end94_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

if.then78:                                        ; preds = %if.end75
  %call79 = call i32 @pxa2xx_spi_set_dma_burst_and_threshold(ptr noundef %5, ptr noundef %spi, i8 noundef zeroext %70, ptr noundef nonnull %dma_burst, ptr noundef nonnull %dma_thresh) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.if.end94_crit_edge, label %do.body82

if.then78.if.end94_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.body82:                                        ; preds = %if.then78
  %call83 = call i32 @___ratelimit(ptr noundef nonnull @pxa2xx_spi_transfer_one._rs.43, ptr noundef nonnull @.str.35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %do.body82.if.end94_crit_edge, label %do.end88

do.body82.if.end94_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.45) #14
  br label %if.end94

if.end94:                                         ; preds = %do.end88, %do.body82.if.end94_crit_edge, %if.then78.if.end94_crit_edge, %if.end75.if.end94_crit_edge
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 24
  %107 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %can_dma, align 4
  %tobool95.not = icmp eq ptr %108, null
  br i1 %tobool95.not, label %if.end94.if.else110_crit_edge, label %land.lhs.true96

if.end94.if.else110_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

land.lhs.true96:                                  ; preds = %if.end94
  %call98 = call zeroext i1 %108(ptr noundef %controller, ptr noundef %spi, ptr noundef %transfer) #11
  br i1 %call98, label %land.end, label %land.lhs.true96.if.else110_crit_edge

land.lhs.true96.if.else110_crit_edge:             ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

land.end:                                         ; preds = %land.lhs.true96
  %cur_msg_mapped = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 38
  %109 = ptrtoint ptr %cur_msg_mapped to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %cur_msg_mapped, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool100.not = icmp eq i8 %110, 0
  br i1 %tobool100.not, label %land.end.if.else110_crit_edge, label %if.then103

land.end.if.else110_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else110

if.then103:                                       ; preds = %land.end
  %transfer_handler = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 16
  %111 = ptrtoint ptr %transfer_handler to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @pxa2xx_spi_dma_transfer, ptr %transfer_handler, align 4
  %call104 = call i32 @pxa2xx_spi_dma_prepare(ptr noundef %1, ptr noundef %transfer) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.then103.cleanup_crit_edge

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end107:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %5, align 4
  %114 = ptrtoint ptr %dma_thresh to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_thresh, align 4
  %or = or i32 %115, %113
  %dma_cr1 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 4
  %116 = ptrtoint ptr %dma_cr1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dma_cr1, align 4
  %or109 = or i32 %or, %117
  %clear_sr = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 6
  %118 = ptrtoint ptr %clear_sr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %clear_sr, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %123, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %119) #11, !srcloc !137
  call void @pxa2xx_spi_dma_start(ptr noundef %1) #11
  br label %if.end116

if.else110:                                       ; preds = %land.end.if.else110_crit_edge, %land.lhs.true96.if.else110_crit_edge, %if.end94.if.else110_crit_edge
  %transfer_handler111 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 16
  %124 = ptrtoint ptr %transfer_handler111 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @interrupt_transfer, ptr %transfer_handler111, align 4
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %5, align 4
  %threshold = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 6
  %127 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %threshold, align 4
  %or113 = or i32 %128, %126
  %int_cr1 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 5
  %129 = ptrtoint ptr %int_cr1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %int_cr1, align 4
  %or114 = or i32 %or113, %130
  %clear_sr115 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 6
  %131 = ptrtoint ptr %clear_sr115 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %clear_sr115, align 4
  %133 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ssp_type.i, align 4
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %134, label %if.else110.write_SSSR_CS.exit_crit_edge [
    i32 8, label %if.else110.if.then.i_crit_edge
    i32 10, label %if.else110.if.then.i_crit_edge461
  ]

if.else110.if.then.i_crit_edge461:                ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.else110.if.then.i_crit_edge:                   ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.else110.write_SSSR_CS.exit_crit_edge:          ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #13
  br label %write_SSSR_CS.exit

if.then.i:                                        ; preds = %if.else110.if.then.i_crit_edge, %if.else110.if.then.i_crit_edge461
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i.i366 = getelementptr inbounds %struct.ssp_device, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %mmio_base.i.i.i.i366 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mmio_base.i.i.i.i366, align 4
  %add.ptr.i.i.i.i367 = getelementptr i8, ptr %139, i32 8
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i367) #11, !srcloc !136
  %and.i.i368 = and i32 %140, 3
  %or.i = or i32 %and.i.i368, %132
  br label %write_SSSR_CS.exit

write_SSSR_CS.exit:                               ; preds = %if.then.i, %if.else110.write_SSSR_CS.exit_crit_edge
  %val.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %132, %if.else110.write_SSSR_CS.exit_crit_edge ]
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i369 = getelementptr inbounds %struct.ssp_device, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %mmio_base.i.i.i369 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mmio_base.i.i.i369, align 4
  %add.ptr.i.i.i370 = getelementptr i8, ptr %144, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i370, i32 %val.addr.0.i) #11, !srcloc !137
  br label %if.end116

if.end116:                                        ; preds = %write_SSSR_CS.exit, %if.end107
  %145 = phi ptr [ @.str.48, %if.end107 ], [ @.str.49, %write_SSSR_CS.exit ]
  %cr1.0 = phi i32 [ %or109, %if.end107 ], [ %or114, %write_SSSR_CS.exit ]
  %146 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %147)
  %cond22.i = icmp eq i32 %147, 10
  br i1 %cond22.i, label %pxa2xx_configure_sscr0.exit.thread, label %pxa2xx_configure_sscr0.exit

pxa2xx_configure_sscr0.exit.thread:               ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %70)
  %cmp.i = icmp ugt i8 %70, 32
  %conv.i = zext i8 %70 to i32
  %phi.bo.i = add nsw i32 %conv.i, -1
  %cond.i372 = select i1 %cmp.i, i32 7, i32 %phi.bo.i
  %or3.i = or i32 %shl.i364, %cond.i372
  br label %do.body135

pxa2xx_configure_sscr0.exit:                      ; preds = %if.end116
  %conv5.i = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %70)
  %cmp6.i = icmp ugt i8 %70, 16
  %sub10.i = add nsw i32 %conv5.i, -16
  %cond20.i = select i1 %cmp6.i, i32 1048576, i32 0
  %cond14.i = select i1 %cmp6.i, i32 %sub10.i, i32 %conv5.i
  %sub15.i = add nsw i32 %cond14.i, -1
  %or16.i = or i32 %sub15.i, %cond20.i
  %or21.i = or i32 %or16.i, %shl.i364
  %148 = zext i32 %147 to i64
  call void @__sanitizer_cov_trace_switch(i64 %148, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %147, label %do.body121 [
    i32 1, label %pxa2xx_configure_sscr0.exit.do.body135_crit_edge
    i32 8, label %pxa2xx_configure_sscr0.exit.do.body135_crit_edge462
  ]

pxa2xx_configure_sscr0.exit.do.body135_crit_edge462: ; preds = %pxa2xx_configure_sscr0.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body135

pxa2xx_configure_sscr0.exit.do.body135_crit_edge: ; preds = %pxa2xx_configure_sscr0.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body135

do.body121:                                       ; preds = %pxa2xx_configure_sscr0.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa2xx_spi_transfer_one, %if.end162)) #11
          to label %if.then127 [label %if.end162], !srcloc !146

if.then127:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #13
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 9
  %149 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %max_speed_hz, align 8
  br label %if.end162.sink.split

do.body135:                                       ; preds = %pxa2xx_configure_sscr0.exit.do.body135_crit_edge, %pxa2xx_configure_sscr0.exit.do.body135_crit_edge462, %pxa2xx_configure_sscr0.exit.thread
  %retval.0.i375447.ph = phi i32 [ %or3.i, %pxa2xx_configure_sscr0.exit.thread ], [ %or21.i, %pxa2xx_configure_sscr0.exit.do.body135_crit_edge ], [ %or21.i, %pxa2xx_configure_sscr0.exit.do.body135_crit_edge462 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pxa2xx_spi_transfer_one, %if.end162)) #11
          to label %if.then149 [label %if.end162], !srcloc !146

if.then149:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  %max_speed_hz151 = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 9
  %151 = ptrtoint ptr %max_speed_hz151 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %max_speed_hz151, align 8
  %div152357 = lshr i32 %152, 1
  br label %if.end162.sink.split

if.end162.sink.split:                             ; preds = %if.then149, %if.then127
  %retval.0.i375447.ph.sink = phi i32 [ %retval.0.i375447.ph, %if.then149 ], [ %or21.i, %if.then127 ]
  %.sink458 = phi i32 [ 255, %if.then149 ], [ 4095, %if.then127 ]
  %div152357.sink = phi i32 [ %div152357, %if.then149 ], [ %150, %if.then127 ]
  %pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug249.sink = phi ptr [ @pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug249, %if.then149 ], [ @pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug248, %if.then127 ]
  %and153 = lshr i32 %retval.0.i375447.ph.sink, 8
  %shr154 = and i32 %and153, %.sink458
  %add155 = add nuw nsw i32 %shr154, 1
  %div156 = udiv i32 %div152357.sink, %add155
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull %pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug249.sink, ptr noundef %spi, ptr noundef nonnull @.str.47, i32 noundef %div156, ptr noundef nonnull %145) #11
  br label %if.end162

if.end162:                                        ; preds = %if.end162.sink.split, %do.body135, %do.body121
  %retval.0.i375448 = phi i32 [ %or21.i, %do.body121 ], [ %retval.0.i375447.ph, %do.body135 ], [ %retval.0.i375447.ph.sink, %if.end162.sink.split ]
  %153 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ssp_type.i, align 4
  %.off.i = add i32 %154, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 6
  br i1 %switch.i, label %if.then164, label %if.end162.if.end167_crit_edge

if.end162.if.end167_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

if.then164:                                       ; preds = %if.end162
  %lpss_rx_threshold = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 7
  %155 = ptrtoint ptr %lpss_rx_threshold to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %lpss_rx_threshold, align 4
  %conv165 = zext i16 %156 to i32
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i380 = getelementptr inbounds %struct.ssp_device, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %mmio_base.i.i.i380 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mmio_base.i.i.i380, align 4
  %add.ptr.i.i.i381 = getelementptr i8, ptr %160, i32 72
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i381) #11, !srcloc !136
  %and.i382 = and i32 %161, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i382, i32 %conv165)
  %cmp.not.i = icmp eq i32 %and.i382, %conv165
  br i1 %cmp.not.i, label %if.then164.pxa2xx_spi_update.exit_crit_edge, label %if.then.i383

if.then164.pxa2xx_spi_update.exit_crit_edge:      ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_update.exit

if.then.i383:                                     ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i = and i32 %conv165, 255
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %mmio_base.i.i6.i = getelementptr inbounds %struct.ssp_device, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %mmio_base.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mmio_base.i.i6.i, align 4
  %add.ptr.i.i7.i = getelementptr i8, ptr %165, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i, i32 %and1.i) #11, !srcloc !137
  br label %pxa2xx_spi_update.exit

pxa2xx_spi_update.exit:                           ; preds = %if.then.i383, %if.then164.pxa2xx_spi_update.exit_crit_edge
  %lpss_tx_threshold = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 8
  %166 = ptrtoint ptr %lpss_tx_threshold to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %lpss_tx_threshold, align 2
  %conv166 = zext i16 %167 to i32
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i384 = getelementptr inbounds %struct.ssp_device, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %mmio_base.i.i.i384 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %mmio_base.i.i.i384, align 4
  %add.ptr.i.i.i385 = getelementptr i8, ptr %171, i32 68
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i385) #11, !srcloc !136
  %and.i386 = and i32 %172, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i386, i32 %conv166)
  %cmp.not.i387 = icmp eq i32 %and.i386, %conv166
  br i1 %cmp.not.i387, label %pxa2xx_spi_update.exit.if.end167thread-pre-split_crit_edge, label %if.then.i391

pxa2xx_spi_update.exit.if.end167thread-pre-split_crit_edge: ; preds = %pxa2xx_spi_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167thread-pre-split

if.then.i391:                                     ; preds = %pxa2xx_spi_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %mmio_base.i.i6.i389 = getelementptr inbounds %struct.ssp_device, ptr %174, i32 0, i32 3
  %175 = ptrtoint ptr %mmio_base.i.i6.i389 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mmio_base.i.i6.i389, align 4
  %add.ptr.i.i7.i390 = getelementptr i8, ptr %176, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i390, i32 %conv166) #11, !srcloc !137
  br label %if.end167thread-pre-split

if.end167thread-pre-split:                        ; preds = %if.then.i391, %pxa2xx_spi_update.exit.if.end167thread-pre-split_crit_edge
  %177 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %.pr = load i32, ptr %ssp_type.i, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.end167thread-pre-split, %if.end162.if.end167_crit_edge
  %178 = phi i32 [ %.pr, %if.end167thread-pre-split ], [ %154, %if.end162.if.end167_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %178)
  %cmp.i394 = icmp eq i32 %178, 9
  br i1 %cmp.i394, label %if.then169, label %if.end167.if.end178_crit_edge

if.end167.if.end178_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then169:                                       ; preds = %if.end167
  %lpss_rx_threshold170 = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 7
  %179 = ptrtoint ptr %lpss_rx_threshold170 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %lpss_rx_threshold170, align 4
  %conv171 = zext i16 %180 to i32
  %sub = shl nuw i32 %conv171, 16
  %shl = add i32 %sub, -65536
  %lpss_tx_threshold173 = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 8
  %181 = ptrtoint ptr %lpss_tx_threshold173 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %lpss_tx_threshold173, align 2
  %conv174 = zext i16 %182 to i32
  %sub175 = add nsw i32 %conv174, -1
  %or177 = or i32 %shl, %sub175
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i395 = getelementptr inbounds %struct.ssp_device, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %mmio_base.i.i.i395 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mmio_base.i.i.i395, align 4
  %add.ptr.i.i.i396 = getelementptr i8, ptr %186, i32 108
  %187 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i396) #11, !srcloc !136
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %or177)
  %cmp.not.i397 = icmp eq i32 %187, %or177
  br i1 %cmp.not.i397, label %if.then169.if.end178_crit_edge, label %if.then.i400

if.then169.if.end178_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then.i400:                                     ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %mmio_base.i.i6.i398 = getelementptr inbounds %struct.ssp_device, ptr %189, i32 0, i32 3
  %190 = ptrtoint ptr %mmio_base.i.i6.i398 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio_base.i.i6.i398, align 4
  %add.ptr.i.i7.i399 = getelementptr i8, ptr %191, i32 108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i399, i32 %or177) #11, !srcloc !137
  br label %if.end178

if.end178:                                        ; preds = %if.then.i400, %if.then169.if.end178_crit_edge, %if.end167.if.end178_crit_edge
  %192 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %193)
  %cmp.i403 = icmp eq i32 %193, 10
  br i1 %cmp.i403, label %if.then180, label %if.end178.if.end181_crit_edge

if.end178.if.end181_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181

if.then180:                                       ; preds = %if.end178
  %dds_rate = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 1
  %194 = ptrtoint ptr %dds_rate to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %dds_rate, align 4
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i404 = getelementptr inbounds %struct.ssp_device, ptr %197, i32 0, i32 3
  %198 = ptrtoint ptr %mmio_base.i.i.i404 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio_base.i.i.i404, align 4
  %add.ptr.i.i.i405 = getelementptr i8, ptr %199, i32 40
  %200 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i405) #11, !srcloc !136
  %and.i406 = and i32 %200, 16777215
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i406, i32 %195)
  %cmp.not.i407 = icmp eq i32 %and.i406, %195
  br i1 %cmp.not.i407, label %if.then180.if.end181thread-pre-split_crit_edge, label %if.then.i411

if.then180.if.end181thread-pre-split_crit_edge:   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end181thread-pre-split

if.then.i411:                                     ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i408 = and i32 %195, 16777215
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %mmio_base.i.i6.i409 = getelementptr inbounds %struct.ssp_device, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %mmio_base.i.i6.i409 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mmio_base.i.i6.i409, align 4
  %add.ptr.i.i7.i410 = getelementptr i8, ptr %204, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i410, i32 %and1.i408) #11, !srcloc !137
  br label %if.end181thread-pre-split

if.end181thread-pre-split:                        ; preds = %if.then.i411, %if.then180.if.end181thread-pre-split_crit_edge
  %205 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pr455 = load i32, ptr %ssp_type.i, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.end181thread-pre-split, %if.end178.if.end181_crit_edge
  %206 = phi i32 [ %.pr455, %if.end181thread-pre-split ], [ %193, %if.end178.if.end181_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %206)
  %cmp.i414 = icmp eq i32 %206, 6
  br i1 %cmp.i414, label %if.end181.if.end184_crit_edge, label %if.then183

if.end181.if.end184_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end184

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 4
  %mmio_base.i.i415 = getelementptr inbounds %struct.ssp_device, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %mmio_base.i.i415 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mmio_base.i.i415, align 4
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #11, !srcloc !136
  %and.i416 = and i32 %211, -129
  %212 = ptrtoint ptr %mmio_base.i.i415 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio_base.i.i415, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 %and.i416) #11, !srcloc !137
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.end181.if.end184_crit_edge
  %214 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %ssp_type.i, align 4
  %216 = zext i32 %215 to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %215, label %if.then187 [
    i32 1, label %if.end184.if.end188_crit_edge
    i32 8, label %if.end184.if.end188_crit_edge463
    i32 10, label %if.end184.if.end188_crit_edge464
  ]

if.end184.if.end188_crit_edge464:                 ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.end184.if.end188_crit_edge463:                 ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.end184.if.end188_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #13
  %timeout = getelementptr inbounds %struct.chip_data, ptr %5, i32 0, i32 2
  %217 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %timeout, align 4
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 4
  %mmio_base.i.i421 = getelementptr inbounds %struct.ssp_device, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %mmio_base.i.i421 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mmio_base.i.i421, align 4
  %add.ptr.i.i422 = getelementptr i8, ptr %222, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i422, i32 %218) #11, !srcloc !137
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %if.end184.if.end188_crit_edge, %if.end184.if.end188_crit_edge463, %if.end184.if.end188_crit_edge464
  %223 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i423 = getelementptr inbounds %struct.ssp_device, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %mmio_base.i.i.i423 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mmio_base.i.i.i423, align 4
  %add.ptr.i.i.i424 = getelementptr i8, ptr %226, i32 4
  %227 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i424) #11, !srcloc !136
  %and.i425 = and i32 %227, %switch.select3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i425, i32 %cr1.0)
  %cmp.not.i426 = icmp eq i32 %and.i425, %cr1.0
  br i1 %cmp.not.i426, label %if.end188.pxa2xx_spi_update.exit431_crit_edge, label %if.then.i430

if.end188.pxa2xx_spi_update.exit431_crit_edge:    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_update.exit431

if.then.i430:                                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i427 = and i32 %cr1.0, %switch.select3.i
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %mmio_base.i.i6.i428 = getelementptr inbounds %struct.ssp_device, ptr %229, i32 0, i32 3
  %230 = ptrtoint ptr %mmio_base.i.i6.i428 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mmio_base.i.i6.i428, align 4
  %add.ptr.i.i7.i429 = getelementptr i8, ptr %231, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i429, i32 %and1.i427) #11, !srcloc !137
  br label %pxa2xx_spi_update.exit431

pxa2xx_spi_update.exit431:                        ; preds = %if.then.i430, %if.end188.pxa2xx_spi_update.exit431_crit_edge
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i432 = getelementptr inbounds %struct.ssp_device, ptr %233, i32 0, i32 3
  %234 = ptrtoint ptr %mmio_base.i.i.i432 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %mmio_base.i.i.i432, align 4
  %236 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %235) #11, !srcloc !136
  call void @__sanitizer_cov_trace_cmp4(i32 %236, i32 %retval.0.i375448)
  %cmp.not.i433 = icmp eq i32 %236, %retval.0.i375448
  br i1 %cmp.not.i433, label %pxa2xx_spi_update.exit431.pxa2xx_spi_update.exit436_crit_edge, label %if.then.i435

pxa2xx_spi_update.exit431.pxa2xx_spi_update.exit436_crit_edge: ; preds = %pxa2xx_spi_update.exit431
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_update.exit436

if.then.i435:                                     ; preds = %pxa2xx_spi_update.exit431
  call void @__sanitizer_cov_trace_pc() #13
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %mmio_base.i.i6.i434 = getelementptr inbounds %struct.ssp_device, ptr %238, i32 0, i32 3
  %239 = ptrtoint ptr %mmio_base.i.i6.i434 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mmio_base.i.i6.i434, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 %retval.0.i375448) #11, !srcloc !137
  br label %pxa2xx_spi_update.exit436

pxa2xx_spi_update.exit436:                        ; preds = %if.then.i435, %pxa2xx_spi_update.exit431.pxa2xx_spi_update.exit436_crit_edge
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 4
  %mmio_base.i.i437 = getelementptr inbounds %struct.ssp_device, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %mmio_base.i.i437 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio_base.i.i437, align 4
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %244) #11, !srcloc !136
  %or.i438 = or i32 %245, 128
  %246 = ptrtoint ptr %mmio_base.i.i437 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %mmio_base.i.i437, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %or.i438) #11, !srcloc !137
  %248 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %249)
  %cmp.i440 = icmp eq i32 %249, 6
  br i1 %cmp.i440, label %if.then191, label %pxa2xx_spi_update.exit436.if.end214_crit_edge

pxa2xx_spi_update.exit436.if.end214_crit_edge:    ; preds = %pxa2xx_spi_update.exit436
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

if.then191:                                       ; preds = %pxa2xx_spi_update.exit436
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i441 = getelementptr inbounds %struct.ssp_device, ptr %251, i32 0, i32 3
  %252 = ptrtoint ptr %mmio_base.i.i.i441 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mmio_base.i.i.i441, align 4
  %add.ptr.i.i.i442 = getelementptr i8, ptr %253, i32 8
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i442) #11, !srcloc !136
  %and.i443 = lshr i32 %254, 8
  %shr193 = and i32 %and.i443, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr193)
  %tobool195.not = icmp eq i32 %shr193, 0
  br i1 %tobool195.not, label %if.then191.if.end214_crit_edge, label %do.end199

if.then191.if.end214_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end214

do.end199:                                        ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.51, i32 noundef %shr193) #14
  %255 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %len, align 4
  %257 = call i32 @llvm.umin.i32(i32 %shr193, i32 %256)
  %258 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %tx, align 4
  %add.ptr212 = getelementptr i8, ptr %259, i32 %257
  store ptr %add.ptr212, ptr %tx, align 4
  br label %if.end214

if.end214:                                        ; preds = %do.end199, %if.then191.if.end214_crit_edge, %pxa2xx_spi_update.exit436.if.end214_crit_edge
  %slave.i = getelementptr inbounds %struct.spi_controller, ptr %controller, i32 0, i32 12
  %260 = ptrtoint ptr %slave.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %slave.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %261)
  %tobool.i.not = icmp eq i8 %261, 0
  br i1 %tobool.i.not, label %if.end214.if.end225_crit_edge, label %while.cond.preheader

if.end214.if.end225_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

while.cond.preheader:                             ; preds = %if.end214
  %write217 = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 14
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %262 = ptrtoint ptr %write217 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %write217, align 4
  %call218 = call i32 %263(ptr noundef %1) #11
  %tobool219.not = icmp eq i32 %call218, 0
  br i1 %tobool219.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %gpiod_ready = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 18
  %264 = ptrtoint ptr %gpiod_ready to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %gpiod_ready, align 4
  %tobool220.not = icmp eq ptr %265, null
  br i1 %tobool220.not, label %while.end.if.end225_crit_edge, label %if.then221

while.end.if.end225_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

if.then221:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @gpiod_set_value(ptr noundef nonnull %265, i32 noundef 1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %266 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %266(i32 noundef 214748) #11
  %267 = ptrtoint ptr %gpiod_ready to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %gpiod_ready, align 4
  call void @gpiod_set_value(ptr noundef %268, i32 noundef 0) #11
  br label %if.end225

if.end225:                                        ; preds = %if.then221, %while.end.if.end225_crit_edge, %if.end214.if.end225_crit_edge
  %269 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %1, align 4
  %mmio_base.i.i444 = getelementptr inbounds %struct.ssp_device, ptr %270, i32 0, i32 3
  %271 = ptrtoint ptr %mmio_base.i.i444 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mmio_base.i.i444, align 4
  %add.ptr.i.i445 = getelementptr i8, ptr %272, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i445, i32 %cr1.0) #11, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %if.end225, %if.then103.cleanup_crit_edge, %do.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end28 ], [ 1, %if.end225 ], [ %call104, %if.then103.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_burst) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_thresh) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_slave_abort(ptr nocapture noundef readonly %controller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @int_error_stop(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef -4)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pxa2xx_spi_handle_err(ptr nocapture noundef readonly %controller, ptr nocapture noundef readnone %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @int_stop_and_reset(ptr noundef %1)
  %ssp_type.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ssp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssp_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 6
  br i1 %cmp.i.i, label %entry.pxa2xx_spi_off.exit_crit_edge, label %if.end.i

entry.pxa2xx_spi_off.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_off.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !136
  %and.i.i = and i32 %8, -129
  %9 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i.i) #11, !srcloc !137
  br label %pxa2xx_spi_off.exit

pxa2xx_spi_off.exit:                              ; preds = %if.end.i, %entry.pxa2xx_spi_off.exit_crit_edge
  %dma_running = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dma_running, i32 noundef 4) #11
  %11 = ptrtoint ptr %dma_running to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dma_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %pxa2xx_spi_off.exit.if.end_crit_edge, label %if.then

pxa2xx_spi_off.exit.if.end_crit_edge:             ; preds = %pxa2xx_spi_off.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %pxa2xx_spi_off.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pxa2xx_spi_dma_stop(ptr noundef %1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %pxa2xx_spi_off.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_unprepare_transfer(ptr nocapture noundef readonly %controller) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %controller, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ssp_type.i.i = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ssp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssp_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 6
  br i1 %cmp.i.i, label %entry.pxa2xx_spi_off.exit_crit_edge, label %if.end.i

entry.pxa2xx_spi_off.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_off.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !136
  %and.i.i = and i32 %8, -129
  %9 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i.i) #11, !srcloc !137
  br label %pxa2xx_spi_off.exit

pxa2xx_spi_off.exit:                              ; preds = %if.end.i, %entry.pxa2xx_spi_off.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa2xx_spi_fw_translate_cs(ptr nocapture noundef readonly %controller, i32 noundef returned %cs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %cs
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssp_int(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_sr = getelementptr inbounds %struct.driver_data, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %mask_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask_sr, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 18
  %6 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %8 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp eq i32 %11, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_id, align 4
  %mmio_base.i.i41 = getelementptr inbounds %struct.ssp_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mmio_base.i.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i.i41, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #11, !srcloc !136
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and6 = and i32 %1, -33
  %spec.select = select i1 %tobool.not, i32 %and6, i32 %1
  %and8 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %and11 = and i32 %spec.select, -524289
  %mask.1 = select i1 %tobool9.not, i32 %and11, i32 %spec.select
  %and13 = and i32 %mask.1, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end3.cleanup_crit_edge, label %if.end16

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end3
  %int_cr1 = getelementptr inbounds %struct.driver_data, ptr %dev_id, i32 0, i32 5
  %17 = ptrtoint ptr %int_cr1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %int_cr1, align 4
  %neg = xor i32 %18, -1
  %and17 = and i32 %16, %neg
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %mmio_base.i.i43 = getelementptr inbounds %struct.ssp_device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %mmio_base.i.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_base.i.i43, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44, i32 %and17) #11, !srcloc !137
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 4
  %mmio_base.i.i45 = getelementptr inbounds %struct.ssp_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %mmio_base.i.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_base.i.i45, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i46, i32 %16) #11, !srcloc !137
  %controller = getelementptr inbounds %struct.driver_data, ptr %dev_id, i32 0, i32 2
  %27 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %controller, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %28, i32 0, i32 31
  %29 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur_msg, align 4
  %tobool18.not = icmp eq ptr %30, null
  br i1 %tobool18.not, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  tail call fastcc void @int_stop_and_reset(ptr noundef %dev_id) #11
  %ssp_type.i.i.i = getelementptr inbounds %struct.driver_data, ptr %dev_id, i32 0, i32 1
  %31 = ptrtoint ptr %ssp_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ssp_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %32)
  %cmp.i.i.i = icmp eq i32 %32, 6
  br i1 %cmp.i.i.i, label %if.then19.handle_bad_msg.exit_crit_edge, label %if.end.i.i

if.then19.handle_bad_msg.exit_crit_edge:          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %handle_bad_msg.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #11, !srcloc !136
  %and.i.i.i = and i32 %37, -129
  %38 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %and.i.i.i) #11, !srcloc !137
  br label %handle_bad_msg.exit

handle_bad_msg.exit:                              ; preds = %if.end.i.i, %if.then19.handle_bad_msg.exit_crit_edge
  %40 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_id, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.58) #14
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %transfer_handler = getelementptr inbounds %struct.driver_data, ptr %dev_id, i32 0, i32 16
  %44 = ptrtoint ptr %transfer_handler to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %transfer_handler, align 4
  %call21 = tail call i32 %45(ptr noundef %dev_id) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %handle_bad_msg.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %pm_runtime_suspended.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ 1, %handle_bad_msg.exit ], [ 0, %pm_runtime_suspended.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_spi_dma_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pxa2xx_spi_can_dma(ptr nocapture noundef readnone %controller, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %xfer) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  %enable_dma = getelementptr inbounds %struct.chip_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enable_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.lhs.true

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %5)
  %cmp = icmp ult i32 %5, 65537
  br i1 %cmp, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dma_burst_size = getelementptr inbounds %struct.chip_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dma_burst_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_burst_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp uge i32 %5, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp3, %land.rhs ]
  ret i1 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pxa2xx_spi_max_dma_transfer_size(ptr nocapture noundef readnone %spi) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 65536
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pxa2xx_spi_dma_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pxa_ssp_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @pxa2xx_spi_idma_filter(ptr nocapture noundef readonly %chan, ptr noundef readnone %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %cmp = icmp eq ptr %3, %param
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_spi_set_dma_burst_and_threshold(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpss_ssp_cs_control(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %controller = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 1
  %0 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssp_type.i, align 4
  %sub.i = add i32 %5, -11
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %cs_sel_mask.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 9
  %6 = ptrtoint ptr %cs_sel_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_sel_mask.i, align 4
  %8 = and i32 %sub.i, 268435455
  %9 = lshr i32 11, %8
  %10 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.not = icmp eq i32 %10, 0
  br i1 %tobool.not.i.not, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %reg_cs_ctrl.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 3
  %11 = ptrtoint ptr %reg_cs_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_cs_ctrl.i, align 4
  %lpss_base.i.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %lpss_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lpss_base.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.__lpss_ssp_read_priv.exit.i_crit_edge, !prof !139

if.end.i.__lpss_ssp_read_priv.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_read_priv.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_read_priv.exit.i

__lpss_ssp_read_priv.exit.i:                      ; preds = %do.end.i.i, %if.end.i.__lpss_ssp_read_priv.exit.i_crit_edge
  %15 = ptrtoint ptr %lpss_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lpss_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %19 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_select.i, align 4
  %conv.i = zext i8 %20 to i32
  %cs_sel_shift.i = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 8
  %21 = ptrtoint ptr %cs_sel_shift.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cs_sel_shift.i, align 4
  %shl.i = shl i32 %conv.i, %22
  %and.i = and i32 %18, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %and.i)
  %cmp.not.i = icmp eq i32 %shl.i, %and.i
  br i1 %cmp.not.i, label %__lpss_ssp_read_priv.exit.i.if.end_crit_edge, label %if.then4.i

__lpss_ssp_read_priv.exit.i.if.end_crit_edge:     ; preds = %__lpss_ssp_read_priv.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4.i:                                       ; preds = %__lpss_ssp_read_priv.exit.i
  %neg.i = xor i32 %7, -1
  %and6.i = and i32 %18, %neg.i
  %or.i = or i32 %shl.i, %and6.i
  %23 = ptrtoint ptr %lpss_base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lpss_base.i.i, align 4
  %tobool.not.i28.i = icmp eq ptr %24, null
  br i1 %tobool.not.i28.i, label %do.end.i29.i, label %if.then4.i.__lpss_ssp_write_priv.exit.i_crit_edge, !prof !139

if.then4.i.__lpss_ssp_write_priv.exit.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit.i

do.end.i29.i:                                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit.i

__lpss_ssp_write_priv.exit.i:                     ; preds = %do.end.i29.i, %if.then4.i.__lpss_ssp_write_priv.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  %26 = ptrtoint ptr %lpss_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lpss_base.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %27, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %25) #11, !srcloc !137
  %controller8.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %controller8.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controller8.i, align 4
  %max_speed_hz.i = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_speed_hz.i, align 8
  %div26.i = lshr i32 %31, 1
  %div9.i = udiv i32 1000000000, %div26.i
  %sub.i.i = add nuw nsw i32 %div9.i, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %div.i.i) #11
  br label %if.end

if.end:                                           ; preds = %__lpss_ssp_write_priv.exit.i, %__lpss_ssp_read_priv.exit.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %reg_cs_ctrl = getelementptr [6 x %struct.lpss_config], ptr @lpss_platforms, i32 0, i32 %sub.i, i32 3
  %33 = ptrtoint ptr %reg_cs_ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reg_cs_ctrl, align 4
  %lpss_base.i = getelementptr inbounds %struct.driver_data, ptr %3, i32 0, i32 17
  %35 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i27 = icmp eq ptr %36, null
  br i1 %tobool.not.i27, label %do.end.i, label %if.end.__lpss_ssp_read_priv.exit_crit_edge, !prof !139

if.end.__lpss_ssp_read_priv.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_read_priv.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_read_priv.exit

__lpss_ssp_read_priv.exit:                        ; preds = %do.end.i, %if.end.__lpss_ssp_read_priv.exit_crit_edge
  %37 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 %34
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %40 = and i32 %39, -33554433
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %masksel = select i1 %enable, i32 0, i32 2
  %value.0 = or i32 %41, %masksel
  %42 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i30 = icmp eq ptr %43, null
  br i1 %tobool.not.i30, label %do.end.i31, label %__lpss_ssp_read_priv.exit.__lpss_ssp_write_priv.exit_crit_edge, !prof !139

__lpss_ssp_read_priv.exit.__lpss_ssp_write_priv.exit_crit_edge: ; preds = %__lpss_ssp_read_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit

do.end.i31:                                       ; preds = %__lpss_ssp_read_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit

__lpss_ssp_write_priv.exit:                       ; preds = %do.end.i31, %__lpss_ssp_read_priv.exit.__lpss_ssp_write_priv.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %44 = tail call i32 @llvm.bswap.i32(i32 %value.0) #11
  %45 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %46, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %44) #11, !srcloc !137
  %47 = and i32 %sub.i, 268435455
  %48 = add nsw i32 %47, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %48)
  %49 = icmp ult i32 %48, -2
  br i1 %49, label %__lpss_ssp_write_priv.exit.if.end12_crit_edge, label %if.then8

__lpss_ssp_write_priv.exit.if.end12_crit_edge:    ; preds = %__lpss_ssp_write_priv.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8:                                         ; preds = %__lpss_ssp_write_priv.exit
  %50 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i35 = icmp eq ptr %51, null
  br i1 %tobool.not.i35, label %do.end.i36, label %if.then8.__lpss_ssp_read_priv.exit39_crit_edge, !prof !139

if.then8.__lpss_ssp_read_priv.exit39_crit_edge:   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_read_priv.exit39

do.end.i36:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 315, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_read_priv.exit39

__lpss_ssp_read_priv.exit39:                      ; preds = %do.end.i36, %if.then8.__lpss_ssp_read_priv.exit39_crit_edge
  %52 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %53, i32 56
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #11, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %55 = or i32 %54, 50331648
  %56 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i41 = icmp eq ptr %57, null
  br i1 %tobool.not.i41, label %do.end.i42, label %__lpss_ssp_read_priv.exit39.__lpss_ssp_write_priv.exit45_crit_edge, !prof !139

__lpss_ssp_read_priv.exit39.__lpss_ssp_write_priv.exit45_crit_edge: ; preds = %__lpss_ssp_read_priv.exit39
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit45

do.end.i42:                                       ; preds = %__lpss_ssp_read_priv.exit39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit45

__lpss_ssp_write_priv.exit45:                     ; preds = %do.end.i42, %__lpss_ssp_read_priv.exit39.__lpss_ssp_write_priv.exit45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %59, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %55) #11, !srcloc !137
  %60 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lpss_base.i, align 4
  %tobool.not.i47 = icmp eq ptr %61, null
  br i1 %tobool.not.i47, label %do.end.i48, label %__lpss_ssp_write_priv.exit45.__lpss_ssp_write_priv.exit51_crit_edge, !prof !139

__lpss_ssp_write_priv.exit45.__lpss_ssp_write_priv.exit51_crit_edge: ; preds = %__lpss_ssp_write_priv.exit45
  call void @__sanitizer_cov_trace_pc() #13
  br label %__lpss_ssp_write_priv.exit51

do.end.i48:                                       ; preds = %__lpss_ssp_write_priv.exit45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 322, i32 noundef 9, ptr noundef null) #11
  br label %__lpss_ssp_write_priv.exit51

__lpss_ssp_write_priv.exit51:                     ; preds = %do.end.i48, %__lpss_ssp_write_priv.exit45.__lpss_ssp_write_priv.exit51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !141
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %lpss_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lpss_base.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %63, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %54) #11, !srcloc !137
  br label %if.end12

if.end12:                                         ; preds = %__lpss_ssp_write_priv.exit51, %__lpss_ssp_write_priv.exit.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8_reader(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 11
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i15 = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio_base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base.i.i.i15, align 4
  %add.ptr.i.i.i16 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i16) #11, !srcloc !136
  %and.i17 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx, align 4
  %7 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_end, align 4
  %cmp = icmp ult ptr %6, %8
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %9 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %conv = trunc i32 %13 to i8
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %15, align 1
  %17 = load ptr, ptr %rx, align 4
  %incdec.ptr = getelementptr i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %rx, align 4
  %18 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %22, 8
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %rx_end5 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  %25 = ptrtoint ptr %rx_end5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_end5, align 4
  %cmp6 = icmp eq ptr %24, %26
  %conv7 = zext i1 %cmp6 to i32
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_reader(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %n_bytes1 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 13
  %0 = ptrtoint ptr %n_bytes1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %n_bytes1, align 4
  %rx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 11
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i15 = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio_base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i.i.i15, align 4
  %add.ptr.i.i.i16 = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i16) #11, !srcloc !136
  %and.i17 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  %conv = zext i8 %1 to i32
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %7 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx, align 4
  %9 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_end, align 4
  %cmp = icmp ult ptr %8, %10
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %11 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %conv
  store ptr %add.ptr, ptr %rx, align 4
  %18 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %22, 8
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %rx_end5 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  %25 = ptrtoint ptr %rx_end5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_end5, align 4
  %cmp6 = icmp eq ptr %24, %26
  %conv7 = zext i1 %cmp6 to i32
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8_writer(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 768, i32 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %switch.selectcmp4.i = icmp eq i32 %1, 10
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 7936, i32 %switch.select.i
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %6, %switch.select5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %switch.select5.i)
  %cmp.i = icmp eq i32 %and.i.i, %switch.select5.i
  br i1 %cmp.i, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %tx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 9
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 10
  %9 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_end, align 4
  %cmp = icmp eq ptr %8, %10
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %8, align 1
  %conv = zext i8 %12 to i32
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv) #11, !srcloc !137
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx, align 4
  %incdec.ptr = getelementptr i8, ptr %18, i32 1
  store ptr %incdec.ptr, ptr %tx, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @null_writer(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %n_bytes1 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 13
  %0 = ptrtoint ptr %n_bytes1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %n_bytes1, align 4
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %2 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %switch.selectcmp.i = icmp eq i32 %3, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 768, i32 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %switch.selectcmp4.i = icmp eq i32 %3, 10
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 7936, i32 %switch.select.i
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %8, %switch.select5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %switch.select5.i)
  %cmp.i = icmp eq i32 %and.i.i, %switch.select5.i
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %tx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 9
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 10
  %11 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_end, align 4
  %cmp = icmp eq ptr %10, %12
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !137
  %conv = zext i8 %1 to i32
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %conv
  store ptr %add.ptr, ptr %tx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u16_reader(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 11
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i15 = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio_base.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base.i.i.i15, align 4
  %add.ptr.i.i.i16 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i16) #11, !srcloc !136
  %and.i17 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx, align 4
  %7 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_end, align 4
  %cmp = icmp ult ptr %6, %8
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %9 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %conv = trunc i32 %13 to i16
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %15, align 2
  %17 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr, ptr %rx, align 4
  %18 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %22, 8
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %rx_end5 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  %25 = ptrtoint ptr %rx_end5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_end5, align 4
  %cmp6 = icmp eq ptr %24, %26
  %conv7 = zext i1 %cmp6 to i32
  ret i32 %conv7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u16_writer(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 768, i32 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %switch.selectcmp4.i = icmp eq i32 %1, 10
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 7936, i32 %switch.select.i
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %6, %switch.select5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %switch.select5.i)
  %cmp.i = icmp eq i32 %and.i.i, %switch.select5.i
  br i1 %cmp.i, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %tx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 9
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 10
  %9 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_end, align 4
  %cmp = icmp eq ptr %8, %10
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %8, align 2
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %conv) #11, !srcloc !137
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr, ptr %tx, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_reader(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 11
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i14 = getelementptr inbounds %struct.ssp_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mmio_base.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_base.i.i.i14, align 4
  %add.ptr.i.i.i15 = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i15) #11, !srcloc !136
  %and.i16 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %5 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx, align 4
  %7 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_end, align 4
  %cmp = icmp ult ptr %6, %8
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %9 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %14 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %15, align 4
  %17 = load ptr, ptr %rx, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  store ptr %add.ptr, ptr %rx, align 4
  %18 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %22, 8
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %23 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx, align 4
  %rx_end5 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  %25 = ptrtoint ptr %rx_end5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_end5, align 4
  %cmp6 = icmp eq ptr %24, %26
  %conv = zext i1 %cmp6 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_writer(ptr nocapture noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %0 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 768, i32 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %switch.selectcmp4.i = icmp eq i32 %1, 10
  %switch.select5.i = select i1 %switch.selectcmp4.i, i32 7936, i32 %switch.select.i
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %6, %switch.select5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %switch.select5.i)
  %cmp.i = icmp eq i32 %and.i.i, %switch.select5.i
  br i1 %cmp.i, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %tx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 9
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 10
  %9 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_end, align 4
  %cmp = icmp eq ptr %8, %10
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %13 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #11, !srcloc !137
  %17 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 4
  store ptr %add.ptr, ptr %tx, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_spi_dma_transfer(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa2xx_spi_dma_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pxa2xx_spi_dma_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interrupt_transfer(ptr noundef %drv_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mask_sr = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 7
  %0 = ptrtoint ptr %mask_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask_sr, align 4
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %and.i = and i32 %6, %1
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !136
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %and.i, -33
  %spec.select = select i1 %tobool.not, i32 %and2, i32 %and.i
  %and3 = and i32 %spec.select, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @int_error_stop(ptr noundef %drv_data, ptr noundef nonnull @.str.53, i32 noundef -5)
  br label %cleanup

if.end6:                                          ; preds = %entry
  %and7 = and i32 %spec.select, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @int_error_stop(ptr noundef %drv_data, ptr noundef nonnull @.str.54, i32 noundef -5)
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %and11 = and i32 %spec.select, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end18_crit_edge, label %if.then13

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.end10
  %12 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i81 = getelementptr inbounds %struct.ssp_device, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %mmio_base.i.i81 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio_base.i.i81, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i82, i32 524288) #11, !srcloc !137
  %read = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 15
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 4
  %call14 = tail call i32 %17(ptr noundef %drv_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then16

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @int_stop_and_reset(ptr noundef %drv_data) #11
  %controller.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %18 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller.i, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %19) #11
  br label %cleanup

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %read19 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 15
  %write = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end18
  %20 = ptrtoint ptr %read19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read19, align 4
  %call20 = tail call i32 %21(ptr noundef %drv_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.cond, label %if.then22

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @int_stop_and_reset(ptr noundef %drv_data) #11
  %controller.i83 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %22 = ptrtoint ptr %controller.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %controller.i83, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %23) #11
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %call24 = tail call i32 %25(ptr noundef %drv_data) #11
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %do.cond
  %26 = ptrtoint ptr %read19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read19, align 4
  %call27 = tail call i32 %27(ptr noundef %drv_data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @int_stop_and_reset(ptr noundef %drv_data) #11
  %controller.i84 = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %28 = ptrtoint ptr %controller.i84 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %controller.i84, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %29) #11
  br label %cleanup

if.end30:                                         ; preds = %do.end
  %tx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 9
  %30 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx, align 4
  %tx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 10
  %32 = ptrtoint ptr %tx_end to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_end, align 4
  %cmp = icmp eq ptr %31, %33
  br i1 %cmp, label %if.then31, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end30
  %34 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i85 = getelementptr inbounds %struct.ssp_device, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %mmio_base.i.i85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio_base.i.i85, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i86) #11, !srcloc !136
  %and33 = and i32 %38, -3
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %39 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ssp_type.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %40, label %if.then31.if.end44_crit_edge [
    i32 1, label %if.then31.if.then36_crit_edge
    i32 8, label %if.then31.if.then36_crit_edge103
    i32 10, label %if.then31.if.then36_crit_edge104
  ]

if.then31.if.then36_crit_edge104:                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then31.if.then36_crit_edge103:                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then31.if.then36_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then36:                                        ; preds = %if.then31.if.then36_crit_edge, %if.then31.if.then36_crit_edge103, %if.then31.if.then36_crit_edge104
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %switch.selectcmp.i = icmp eq i32 %40, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 -3075, i32 -15363
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %switch.selectcmp2.i = icmp eq i32 %40, 10
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 -63491, i32 %switch.select.i
  %and.i88 = and i32 %switch.select3.i, %38
  %rx_end = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 12
  %42 = ptrtoint ptr %rx_end to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_end, align 4
  %rx = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 11
  %44 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %45 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %n_bytes = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 13
  %46 = ptrtoint ptr %n_bytes to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %n_bytes, align 4
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %47, label %if.then36.sw.epilog_crit_edge [
    i8 4, label %sw.bb
    i8 2, label %sw.bb37
  ]

if.then36.sw.epilog_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %shr = lshr i32 %sub.ptr.sub, 2
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %shr38 = lshr i32 %sub.ptr.sub, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb37, %sw.bb, %if.then36.sw.epilog_crit_edge
  %bytes_left.0 = phi i32 [ %sub.ptr.sub, %if.then36.sw.epilog_crit_edge ], [ %shr38, %sw.bb37 ], [ %shr, %sw.bb ]
  %switch.select.i91 = select i1 %switch.selectcmp.i, i32 2, i32 8
  %switch.select3.i93 = select i1 %switch.selectcmp2.i, i32 1, i32 %switch.select.i91
  %49 = tail call i32 @llvm.umin.i32(i32 %switch.select3.i93, i32 %bytes_left.0)
  %50 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %40, label %sw.default.i95 [
    i32 10, label %sw.epilog.pxa2xx_spi_set_rx_thre.exit_crit_edge
    i32 8, label %sw.bb1.i
  ]

sw.epilog.pxa2xx_spi_set_rx_thre.exit_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_set_rx_thre.exit

sw.bb1.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_set_rx_thre.exit

sw.default.i95:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_set_rx_thre.exit

pxa2xx_spi_set_rx_thre.exit:                      ; preds = %sw.default.i95, %sw.bb1.i, %sw.epilog.pxa2xx_spi_set_rx_thre.exit_crit_edge
  %.sink12.i = phi i32 [ 10, %sw.default.i95 ], [ 10, %sw.bb1.i ], [ 11, %sw.epilog.pxa2xx_spi_set_rx_thre.exit_crit_edge ]
  %.sink.i = phi i32 [ -1024, %sw.default.i95 ], [ -1024, %sw.bb1.i ], [ -2048, %sw.epilog.pxa2xx_spi_set_rx_thre.exit_crit_edge ]
  %sub5.i = shl nuw nsw i32 %49, %.sink12.i
  %shl6.i = add nsw i32 %sub5.i, %.sink.i
  %or7.i = or i32 %shl6.i, %and.i88
  br label %if.end44

if.end44:                                         ; preds = %pxa2xx_spi_set_rx_thre.exit, %if.then31.if.end44_crit_edge
  %sccr1_reg.0 = phi i32 [ %or7.i, %pxa2xx_spi_set_rx_thre.exit ], [ %and33, %if.then31.if.end44_crit_edge ]
  %51 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i96 = getelementptr inbounds %struct.ssp_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %mmio_base.i.i96 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio_base.i.i96, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i97, i32 %sccr1_reg.0) #11, !srcloc !137
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end30.cleanup_crit_edge, %if.then29, %if.then22, %if.then16, %if.then9, %if.then5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @int_error_stop(ptr nocapture noundef readonly %drv_data, ptr noundef %msg, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @int_stop_and_reset(ptr noundef %drv_data)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %0 = load i32, ptr @loops_per_jiffy, align 4
  %shl.i = shl i32 %0, 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %limit.0.i = phi i32 [ %shl.i, %entry ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i13.i = getelementptr inbounds %struct.ssp_device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %mmio_base.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio_base.i.i.i13.i, align 4
  %add.ptr.i.i.i14.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i14.i) #11, !srcloc !136
  %and.i15.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not16.i = icmp eq i32 %and.i15.i, 0
  br i1 %tobool.not16.i, label %do.body.i.do.cond.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !136
  %11 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %15, 8
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.cond.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.do.cond.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond.i

do.cond.i:                                        ; preds = %while.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %16 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i9.i = getelementptr inbounds %struct.ssp_device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %mmio_base.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio_base.i.i9.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i10.i) #11, !srcloc !136
  %and.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %dec.i = add i32 %limit.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  %or.cond = select i1 %tobool3.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  %ssp_type.i.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %21 = ptrtoint ptr %ssp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ssp_type.i.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %22, label %do.end.i.pxa2xx_spi_flush.exit_crit_edge [
    i32 8, label %do.end.i.if.then.i.i_crit_edge
    i32 10, label %do.end.i.if.then.i.i_crit_edge10
  ]

do.end.i.if.then.i.i_crit_edge10:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

do.end.i.if.then.i.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

do.end.i.pxa2xx_spi_flush.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_flush.exit

if.then.i.i:                                      ; preds = %do.end.i.if.then.i.i_crit_edge, %do.end.i.if.then.i.i_crit_edge10
  %24 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %mmio_base.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio_base.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #11, !srcloc !136
  %and.i.i.i = and i32 %28, 3
  %or.i.i = or i32 %and.i.i.i, 128
  br label %pxa2xx_spi_flush.exit

pxa2xx_spi_flush.exit:                            ; preds = %if.then.i.i, %do.end.i.pxa2xx_spi_flush.exit_crit_edge
  %val.addr.0.i.i = phi i32 [ %or.i.i, %if.then.i.i ], [ 128, %do.end.i.pxa2xx_spi_flush.exit_crit_edge ]
  %29 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i11.i = getelementptr inbounds %struct.ssp_device, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %mmio_base.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio_base.i.i.i11.i, align 4
  %add.ptr.i.i.i12.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i12.i, i32 %val.addr.0.i.i) #11, !srcloc !137
  %33 = ptrtoint ptr %ssp_type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ssp_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 6
  br i1 %cmp.i.i, label %pxa2xx_spi_flush.exit.pxa2xx_spi_off.exit_crit_edge, label %if.end.i

pxa2xx_spi_flush.exit.pxa2xx_spi_off.exit_crit_edge: ; preds = %pxa2xx_spi_flush.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %pxa2xx_spi_off.exit

if.end.i:                                         ; preds = %pxa2xx_spi_flush.exit
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i8 = getelementptr inbounds %struct.ssp_device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %mmio_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base.i.i.i8, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !136
  %and.i.i9 = and i32 %39, -129
  %40 = ptrtoint ptr %mmio_base.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio_base.i.i.i8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %and.i.i9) #11, !srcloc !137
  br label %pxa2xx_spi_off.exit

pxa2xx_spi_off.exit:                              ; preds = %if.end.i, %pxa2xx_spi_flush.exit.pxa2xx_spi_off.exit_crit_edge
  %42 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv_data, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.55, ptr noundef %msg) #14
  %controller = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %46 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %controller, align 4
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %47, i32 0, i32 31
  %48 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %err, ptr %status, align 4
  %51 = load ptr, ptr %controller, align 4
  tail call void @spi_finalize_current_transfer(ptr noundef %51) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @int_stop_and_reset(ptr nocapture noundef readonly %drv_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %clear_sr = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 6
  %0 = ptrtoint ptr %clear_sr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clear_sr, align 4
  %ssp_type.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 1
  %2 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssp_type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %3, label %entry.write_SSSR_CS.exit_crit_edge [
    i32 8, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge14
  ]

entry.if.then.i_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

entry.write_SSSR_CS.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %write_SSSR_CS.exit

if.then.i:                                        ; preds = %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge14
  %5 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %mmio_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio_base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !136
  %and.i.i = and i32 %9, 3
  %or.i = or i32 %and.i.i, %1
  br label %write_SSSR_CS.exit

write_SSSR_CS.exit:                               ; preds = %if.then.i, %entry.write_SSSR_CS.exit_crit_edge
  %val.addr.0.i = phi i32 [ %or.i, %if.then.i ], [ %1, %entry.write_SSSR_CS.exit_crit_edge ]
  %10 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i = getelementptr inbounds %struct.ssp_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %mmio_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio_base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %val.addr.0.i) #11, !srcloc !137
  %int_cr1.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 5
  %14 = ptrtoint ptr %int_cr1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %int_cr1.i, align 4
  %dma_cr1.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 4
  %16 = ptrtoint ptr %dma_cr1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_cr1.i, align 4
  %or.i5 = or i32 %17, %15
  %controller.i = getelementptr inbounds %struct.driver_data, ptr %drv_data, i32 0, i32 2
  %18 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %controller.i, align 4
  %cur_msg.i = getelementptr inbounds %struct.spi_controller, ptr %19, i32 0, i32 31
  %20 = ptrtoint ptr %cur_msg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur_msg.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %write_SSSR_CS.exit.if.end.i_crit_edge, label %if.then.i6

write_SSSR_CS.exit.if.end.i_crit_edge:            ; preds = %write_SSSR_CS.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i6:                                       ; preds = %write_SSSR_CS.exit
  call void @__sanitizer_cov_trace_pc() #13
  %spi.i = getelementptr inbounds %struct.spi_message, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i, align 4
  %controller_state.i.i = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %controller_state.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controller_state.i.i, align 8
  %threshold3.i = getelementptr inbounds %struct.chip_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %threshold3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %threshold3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i6, %write_SSSR_CS.exit.if.end.i_crit_edge
  %threshold.0.i = phi i32 [ %27, %if.then.i6 ], [ 0, %write_SSSR_CS.exit.if.end.i_crit_edge ]
  %28 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ssp_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %29)
  %switch.selectcmp.i = icmp eq i32 %29, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 3072, i32 15360
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %29)
  %switch.selectcmp16.i = icmp eq i32 %29, 10
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 63488, i32 %switch.select.i
  %or7.i = or i32 %or.i5, %switch.select17.i
  %30 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i.i.i8 = getelementptr inbounds %struct.ssp_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %mmio_base.i.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio_base.i.i.i.i8, align 4
  %add.ptr.i.i.i.i9 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i9) #11, !srcloc !136
  %and.i.i10 = and i32 %or7.i, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i10, i32 %threshold.0.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i10, %threshold.0.i
  br i1 %cmp.not.i.i, label %if.end.i.reset_sccr1.exit_crit_edge, label %if.then.i.i

if.end.i.reset_sccr1.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %reset_sccr1.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i.i = and i32 %or7.i, %threshold.0.i
  %35 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i6.i.i = getelementptr inbounds %struct.ssp_device, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %mmio_base.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio_base.i.i6.i.i, align 4
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7.i.i, i32 %and1.i.i) #11, !srcloc !137
  br label %reset_sccr1.exit

reset_sccr1.exit:                                 ; preds = %if.then.i.i, %if.end.i.reset_sccr1.exit_crit_edge
  %39 = ptrtoint ptr %ssp_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ssp_type.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %40, label %if.end [
    i32 1, label %reset_sccr1.exit.return_crit_edge
    i32 8, label %reset_sccr1.exit.return_crit_edge15
    i32 10, label %reset_sccr1.exit.return_crit_edge16
  ]

reset_sccr1.exit.return_crit_edge16:              ; preds = %reset_sccr1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

reset_sccr1.exit.return_crit_edge15:              ; preds = %reset_sccr1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

reset_sccr1.exit.return_crit_edge:                ; preds = %reset_sccr1.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %reset_sccr1.exit
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drv_data, align 4
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #11, !srcloc !137
  br label %return

return:                                           ; preds = %if.end, %reset_sccr1.exit.return_crit_edge, %reset_sccr1.exit.return_crit_edge15, %reset_sccr1.exit.return_crit_edge16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pxa2xx_spi_dma_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %controller = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmio_base.i.i = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio_base.i.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #11, !srcloc !136
  %and.i = and i32 %8, -129
  %9 = ptrtoint ptr %mmio_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %and.i) #11, !srcloc !137
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %11 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i = icmp eq i32 %12, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %13 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then4_crit_edge

pm_runtime_suspended.exit.if.then4_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %pm_runtime_suspended.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %clk = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.if.end5_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %clk = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i12 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i12, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %8) #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge
  %controller = getelementptr inbounds %struct.driver_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %controller, align 4
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %clk = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #11
  tail call void @clk_unprepare(ptr noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pxa2xx_spi_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %clk = getelementptr inbounds %struct.ssp_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i5 @llvm.bitreverse.i5(i5) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !109, !111, !112, !113, !114, !116, !118, !119, !120, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__UNIQUE_ID_author241, !1, !"__UNIQUE_ID_author241", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-pxa2xx.c", i32 35, i32 1}
!2 = !{ptr @__UNIQUE_ID_description242, !3, !"__UNIQUE_ID_description242", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-pxa2xx.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file243, !5, !"__UNIQUE_ID_file243", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-pxa2xx.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license244, !5, !"__UNIQUE_ID_license244", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias245, !8, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-pxa2xx.c", i32 38, i32 1}
!9 = !{ptr @__initcall__kmod_spi_pxa2xx_platform__251_1956_pxa2xx_spi_init4, !10, !"__initcall__kmod_spi_pxa2xx_platform__251_1956_pxa2xx_spi_init4", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1956, i32 1}
!11 = !{ptr @__exitcall_pxa2xx_spi_exit, !12, !"__exitcall_pxa2xx_spi_exit", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1962, i32 1}
!13 = !{ptr @__UNIQUE_ID_softdep252, !14, !"__UNIQUE_ID_softdep252", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1964, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1943, i32 11}
!17 = !{ptr @driver, !18, !"driver", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1941, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1638, i32 4}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pxa2xx_spi_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @pxa2xx_spi_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1648, i32 3}
!29 = !{ptr @pxa2xx_spi_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @pxa2xx_spi_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1658, i32 3}
!33 = !{ptr @pxa2xx_spi_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pxa2xx_spi_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1713, i32 3}
!37 = !{ptr @pxa2xx_spi_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pxa2xx_spi_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1721, i32 4}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pxa2xx_spi_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pxa2xx_spi_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1813, i32 7}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1829, i32 3}
!48 = !{ptr @pxa2xx_spi_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pxa2xx_spi_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1586, i32 58}
!52 = !{ptr @pxa2xx_spi_pci_compound_match, !53, !"pxa2xx_spi_pci_compound_match", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1404, i32 35}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1275, i32 5}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @setup._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @setup._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1334, i32 4}
!61 = !{ptr @setup._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @setup._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1337, i32 3}
!65 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @setup.__UNIQUE_ID_ddebug250, !64, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1199, i32 28}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1201, i32 4}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @setup_cs._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @setup_cs._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-pxa2xx.c", i32 968, i32 4}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @pxa2xx_spi_transfer_one._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @pxa2xx_spi_transfer_one._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/spi/spi-pxa2xx.c", i32 975, i32 3}
!81 = !{ptr @pxa2xx_spi_transfer_one._rs, !80, !"_rs", i1 false, i1 false}
!82 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pxa2xx_spi_transfer_one._entry.37, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @pxa2xx_spi_transfer_one._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-pxa2xx.c", i32 982, i32 3}
!87 = !{ptr @pxa2xx_spi_transfer_one._entry.40, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pxa2xx_spi_transfer_one._entry_ptr.42, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @pxa2xx_spi_transfer_one._rs.43, !90, !"_rs", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1018, i32 4}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pxa2xx_spi_transfer_one._entry.44, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @pxa2xx_spi_transfer_one._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1051, i32 3}
!96 = !{ptr @pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug248, !95, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!97 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pxa2xx_spi_transfer_one.__UNIQUE_ID_ddebug249, !100, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1056, i32 3}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1100, i32 4}
!103 = !{ptr @pxa2xx_spi_transfer_one._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @pxa2xx_spi_transfer_one._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-pxa2xx.c", i32 649, i32 28}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-pxa2xx.c", i32 654, i32 28}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-pxa2xx.c", i32 627, i32 2}
!111 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @int_error_stop._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @int_error_stop._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1130, i32 27}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/spi/spi-pxa2xx.c", i32 723, i32 2}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @handle_bad_msg._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @handle_bad_msg._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @lpss_platforms, !122, !"lpss_platforms", i1 false, i1 false}
!122 = !{!"../drivers/spi/spi-pxa2xx.c", i32 100, i32 33}
!123 = !{ptr @pxa2xx_spi_of_match, !124, !"pxa2xx_spi_of_match", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1490, i32 34}
!125 = !{ptr @pxa2xx_spi_pm_ops, !126, !"pxa2xx_spi_pm_ops", i1 false, i1 false}
!126 = !{!"../drivers/spi/spi-pxa2xx.c", i32 1935, i32 32}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 7010236}
!137 = !{i64 7009818}
!138 = !{i8 0, i8 2}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 2155440988}
!141 = !{i64 2155441723}
!142 = !{i32 0, i32 33}
!143 = !{i64 2148351895}
!144 = !{i64 836718, i64 836743, i64 836765, i64 836781, i64 836793, i64 836813, i64 836837, i64 836853, i64 836865}
!145 = !{i64 2148352083}
!146 = !{i64 2148996768, i64 2148996773, i64 2148996786, i64 2148996830, i64 2148996864, i64 2148996885}
!147 = !{i64 2155443304}
!148 = !{i64 2155443146}
