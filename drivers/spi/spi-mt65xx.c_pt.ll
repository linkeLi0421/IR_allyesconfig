; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-mt65xx.c_pt.bc'
source_filename = "../drivers/spi/spi-mt65xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_chip_config = type { i32, i32 }
%struct.mtk_spi_compatible = type { i8, i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mtk_spi = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_spi_mt65xx__253_1005_mtk_spi_driver_init6 = internal global ptr @mtk_spi_driver_init, section ".initcall6.init", align 4
@mtk_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_spi_probe, ptr @mtk_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_spi_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_spi_driver_exit = internal global ptr @mtk_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description254 = internal constant [49 x i8] c"spi_mt65xx.description=MTK SPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [53 x i8] c"spi_mt65xx.author=Leilk Liu <leilk.liu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [39 x i8] c"spi_mt65xx.file=drivers/spi/spi-mt65xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [26 x i8] c"spi_mt65xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias258 = internal constant [34 x i8] c"spi_mt65xx.alias=platform:mtk-spi\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk-spi\00", [24 x i8] zeroinitializer }, align 32
@mtk_spi_of_match = internal constant { [12 x %struct.of_device_id], [592 x i8] } { [12 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_common_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6589-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_common_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6765_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_common_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6765_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6893-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6893_compat }, %struct.of_device_id zeroinitializer], [592 x i8] zeroinitializer }, align 32
@mtk_spi_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_spi_suspend, ptr @mtk_spi_resume, ptr @mtk_spi_suspend, ptr @mtk_spi_resume, ptr @mtk_spi_suspend, ptr @mtk_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_spi_runtime_suspend, ptr @mtk_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 719, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to alloc spi master\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-mt65xx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr = internal global ptr @mtk_spi_probe._entry, section ".printk_index", align 4
@mtk_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to probe of_node\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.8 = internal global ptr @mtk_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,pad-select\00", [44 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 756, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No 'mediatek,pad-select' property\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.12 = internal global ptr @mtk_spi_probe._entry.10, section ".printk_index", align 4
@mtk_spi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 774, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wrong pad-sel[%d]: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.15 = internal global ptr @mtk_spi_probe._entry.13, section ".printk_index", align 4
@mtk_spi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 800, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register irq (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.18 = internal global ptr @mtk_spi_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"parent-clk\00", [21 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 807, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get parent-clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.22 = internal global ptr @mtk_spi_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sel-clk\00", [24 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get sel-clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.26 = internal global ptr @mtk_spi_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi-clk\00", [24 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get spi-clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.30 = internal global ptr @mtk_spi_probe._entry.28, section ".printk_index", align 4
@mtk_spi_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 827, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable spi_clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.33 = internal global ptr @mtk_spi_probe._entry.31, section ".printk_index", align 4
@mtk_spi_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to clk_set_parent (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.36 = internal global ptr @mtk_spi_probe._entry.34, section ".printk_index", align 4
@mtk_spi_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 851, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"pad_num does not match num_chipselect(%d != %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.39 = internal global ptr @mtk_spi_probe._entry.37, section ".printk_index", align 4
@mtk_spi_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 858, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cs_gpios not specified and num_chipselect > 1\0A\00", [49 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.42 = internal global ptr @mtk_spi_probe._entry.40, section ".printk_index", align 4
@mtk_spi_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 870, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get CS GPIO %i\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.45 = internal global ptr @mtk_spi_probe._entry.43, section ".printk_index", align 4
@mtk_spi_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 884, ptr @.str.48, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SPI dma_set_mask(%d) failed, ret:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.49 = internal global ptr @mtk_spi_probe._entry.46, section ".printk_index", align 4
@mtk_spi_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register master (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_spi_probe._entry_ptr.52 = internal global ptr @mtk_spi_probe._entry.50, section ".printk_index", align 4
@mtk_default_chip_info = internal constant { %struct.mtk_chip_config, [24 x i8] } zeroinitializer, align 32
@mtk_common_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } zeroinitializer, align 32
@mt2712_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } { %struct.mtk_spi_compatible { i8 0, i8 1, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@mt6765_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } { %struct.mtk_spi_compatible { i8 1, i8 1, i8 1, i8 1, i8 0 }, [27 x i8] zeroinitializer }, align 32
@mt7622_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } { %struct.mtk_spi_compatible { i8 0, i8 1, i8 1, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@mt8173_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } { %struct.mtk_spi_compatible { i8 1, i8 1, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@mt8183_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } { %struct.mtk_spi_compatible { i8 1, i8 1, i8 1, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@mt6893_compat = internal constant { %struct.mtk_spi_compatible, [27 x i8] } { %struct.mtk_spi_compatible { i8 1, i8 1, i8 1, i8 1, i8 1 }, [27 x i8] zeroinitializer }, align 32
@mtk_spi_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.53, ptr @.str.3, i32 943, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_spi_resume\00", [17 x i8] zeroinitializer }, align 32
@mtk_spi_resume._entry_ptr = internal global ptr @mtk_spi_resume._entry, section ".printk_index", align 4
@mtk_spi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.54, ptr @.str.3, i32 981, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_spi_runtime_resume\00", [41 x i8] zeroinitializer }, align 32
@mtk_spi_runtime_resume._entry_ptr = internal global ptr @mtk_spi_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"mtk_spi_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 995, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 997, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"mtk_spi_of_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 159, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"mtk_spi_pm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 989, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 719, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 736, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 753, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 755, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 773, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 800, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 804, i32 47 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 807, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 811, i32 44 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 814, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 818, i32 44 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 821, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 827, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 833, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 849, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 857, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 869, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 883, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 888, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [22 x i8] c"mtk_default_chip_info\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 154, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant [18 x i8] c"mtk_common_compat\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 113, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"mt2712_compat\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 115, i32 40 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"mt6765_compat\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 119, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"mt7622_compat\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 126, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant [14 x i8] c"mt8173_compat\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 131, i32 40 }
@___asan_gen_.202 = private unnamed_addr constant [14 x i8] c"mt8183_compat\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 136, i32 40 }
@___asan_gen_.205 = private unnamed_addr constant [14 x i8] c"mt6893_compat\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 142, i32 40 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 943, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [28 x i8] c"../drivers/spi/spi-mt65xx.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 981, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias258, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_mtk_spi_driver_exit, ptr @__initcall__kmod_spi_mt65xx__253_1005_mtk_spi_driver_init6, ptr @mtk_spi_driver_exit, ptr @mtk_spi_probe._entry, ptr @mtk_spi_probe._entry.10, ptr @mtk_spi_probe._entry.13, ptr @mtk_spi_probe._entry.16, ptr @mtk_spi_probe._entry.20, ptr @mtk_spi_probe._entry.24, ptr @mtk_spi_probe._entry.28, ptr @mtk_spi_probe._entry.31, ptr @mtk_spi_probe._entry.34, ptr @mtk_spi_probe._entry.37, ptr @mtk_spi_probe._entry.40, ptr @mtk_spi_probe._entry.43, ptr @mtk_spi_probe._entry.46, ptr @mtk_spi_probe._entry.50, ptr @mtk_spi_probe._entry.6, ptr @mtk_spi_probe._entry_ptr, ptr @mtk_spi_probe._entry_ptr.12, ptr @mtk_spi_probe._entry_ptr.15, ptr @mtk_spi_probe._entry_ptr.18, ptr @mtk_spi_probe._entry_ptr.22, ptr @mtk_spi_probe._entry_ptr.26, ptr @mtk_spi_probe._entry_ptr.30, ptr @mtk_spi_probe._entry_ptr.33, ptr @mtk_spi_probe._entry_ptr.36, ptr @mtk_spi_probe._entry_ptr.39, ptr @mtk_spi_probe._entry_ptr.42, ptr @mtk_spi_probe._entry_ptr.45, ptr @mtk_spi_probe._entry_ptr.49, ptr @mtk_spi_probe._entry_ptr.52, ptr @mtk_spi_probe._entry_ptr.8, ptr @mtk_spi_resume._entry, ptr @mtk_spi_resume._entry_ptr, ptr @mtk_spi_runtime_resume._entry, ptr @mtk_spi_runtime_resume._entry_ptr, ptr @mtk_spi_driver, ptr @.str, ptr @mtk_spi_of_match, ptr @mtk_spi_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.48, ptr @.str.51, ptr @mtk_default_chip_info, ptr @mtk_common_compat, ptr @mt2712_compat, ptr @mt6765_compat, ptr @mt7622_compat, ptr @mt8173_compat, ptr @mt8183_compat, ptr @mt6893_compat, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_of_match to i32), i32 2352, i32 2944, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_default_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_common_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6765_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6893_compat to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 64, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %0 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %auto_runtime_pm, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %of_node4 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %3 = ptrtoint ptr %of_node4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %of_node4, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %mode_bits, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %5 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mtk_spi_set_cs, ptr %set_cs, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %6 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_spi_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %7 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mtk_spi_transfer_one, ptr %transfer_one, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 24
  %8 = ptrtoint ptr %can_dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_spi_can_dma, ptr %can_dma, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_spi_setup, ptr %setup, align 4
  %set_cs_timing = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 21
  %10 = ptrtoint ptr %set_cs_timing to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_spi_set_hw_cs_timing, ptr %set_cs_timing, align 8
  %11 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @of_match_node(ptr noundef nonnull @mtk_spi_of_match, ptr noundef %11) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %spi_controller_put.exit

if.end14:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 14
  %16 = ptrtoint ptr %dev_comp to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %dev_comp, align 4
  %enhance_timing = getelementptr inbounds %struct.mtk_spi_compatible, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %enhance_timing to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enhance_timing, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.end14.if.end20_crit_edge, label %if.then18

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %mode_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode_bits, align 8
  %or = or i32 %20, 4
  store i32 %or, ptr %mode_bits, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end14.if.end20_crit_edge
  %21 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_comp, align 4
  %must_tx = getelementptr inbounds %struct.mtk_spi_compatible, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %must_tx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %must_tx, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp eq i8 %24, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 16, ptr %flags, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %26 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_comp, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool26.not = icmp eq i8 %29, 0
  br i1 %tobool26.not, label %if.end24.if.end62_crit_edge, label %if.then27

if.end24.if.end62_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then27:                                        ; preds = %if.end24
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call.i370 = tail call i32 @of_property_count_elems_of_size(ptr noundef %31, ptr noundef nonnull @.str.9, i32 noundef 4) #7
  %pad_num = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 2
  %32 = ptrtoint ptr %pad_num to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call.i370, ptr %pad_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i370)
  %cmp = icmp slt i32 %call.i370, 0
  br i1 %cmp, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %spi_controller_put.exit

if.end37:                                         ; preds = %if.then27
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i370, i32 4) #7
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !127

devm_kmalloc_array.exit.thread:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %pad_sel390 = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 3
  %35 = ptrtoint ptr %pad_sel390 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %pad_sel390, align 4
  br label %spi_controller_put.exit

devm_kmalloc_array.exit:                          ; preds = %if.end37
  %36 = extractvalue { i32, i1 } %33, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %36, i32 noundef 3264) #7
  %pad_sel = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 3
  %37 = ptrtoint ptr %pad_sel to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i, ptr %pad_sel, align 4
  %tobool42.not = icmp eq ptr %call5.i, null
  br i1 %tobool42.not, label %devm_kmalloc_array.exit.spi_controller_put.exit_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.spi_controller_put.exit_crit_edge: ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %38 = ptrtoint ptr %pad_num to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pad_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp46396 = icmp sgt i32 %39, 0
  br i1 %cmp46396, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end62_crit_edge

for.cond.preheader.if.end62_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0397 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %40 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %of_node, align 8
  %42 = ptrtoint ptr %pad_sel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pad_sel, align 4
  %arrayidx = getelementptr i32, ptr %43, i32 %i.0397
  %call50 = tail call i32 @of_property_read_u32_index(ptr noundef %41, ptr noundef nonnull @.str.9, i32 noundef %i.0397, ptr noundef %arrayidx) #7
  %44 = ptrtoint ptr %pad_sel to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pad_sel, align 4
  %arrayidx52 = getelementptr i32, ptr %45, i32 %i.0397
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp53 = icmp ugt i32 %47, 3
  br i1 %cmp53, label %do.end57, label %for.inc

do.end57:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %i.0397, i32 noundef %47) #10
  br label %spi_controller_put.exit

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0397, 1
  %48 = ptrtoint ptr %pad_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pad_num, align 4
  %cmp46 = icmp slt i32 %inc, %49
  br i1 %cmp46, label %for.inc.for.body_crit_edge, label %for.inc.if.end62_crit_edge

for.inc.if.end62_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end62:                                         ; preds = %for.inc.if.end62_crit_edge, %for.cond.preheader.if.end62_crit_edge, %if.end24.if.end62_crit_edge
  %driver_data.i.i371 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i371 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i371, align 4
  %call63 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call63, ptr %13, align 4
  %cmp.i = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call63 to i32
  br label %spi_controller_put.exit

if.end69:                                         ; preds = %if.end62
  %call70 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end69.spi_controller_put.exit_crit_edge, label %if.end73

if.end69.spi_controller_put.exit_crit_edge:       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end73:                                         ; preds = %if.end69
  %dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %53 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_mask, align 8
  %tobool75.not = icmp eq ptr %54, null
  br i1 %tobool75.not, label %if.then76, label %if.end73.if.end80_crit_edge

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %coherent_dma_mask = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %55 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %coherent_dma_mask, ptr %dma_mask, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.end73.if.end80_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i372, label %if.end80.dev_name.exit_crit_edge

if.end80.dev_name.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i372:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i372, %if.end80.dev_name.exit_crit_edge
  %retval.0.i373 = phi ptr [ %59, %if.end.i372 ], [ %57, %if.end80.dev_name.exit_crit_edge ]
  %call.i374 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call70, ptr noundef nonnull @mtk_spi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i373, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool85.not = icmp eq i32 %call.i374, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i374) #10
  br label %spi_controller_put.exit

if.end91:                                         ; preds = %dev_name.exit
  %call93 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  %parent_clk = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 4
  %60 = ptrtoint ptr %parent_clk to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call93, ptr %parent_clk, align 4
  %cmp.i375 = icmp ugt ptr %call93, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i375, label %if.then96, label %if.end103

if.then96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %call93 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %61) #10
  br label %spi_controller_put.exit

if.end103:                                        ; preds = %if.end91
  %call105 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.23) #7
  %sel_clk = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 5
  %62 = ptrtoint ptr %sel_clk to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call105, ptr %sel_clk, align 4
  %cmp.i376 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i376, label %if.then108, label %if.end115

if.then108:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call105 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %63) #10
  br label %spi_controller_put.exit

if.end115:                                        ; preds = %if.end103
  %call117 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  %spi_clk = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 6
  %64 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call117, ptr %spi_clk, align 4
  %cmp.i377 = icmp ugt ptr %call117, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i377, label %if.then120, label %if.end127

if.then120:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %call117 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %65) #10
  br label %spi_controller_put.exit

if.end127:                                        ; preds = %if.end115
  %call.i378 = tail call i32 @clk_prepare(ptr noundef %call117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %tobool.not.i379 = icmp eq i32 %call.i378, 0
  br i1 %tobool.not.i379, label %if.end.i380, label %if.end127.clk_prepare_enable.exit_crit_edge

if.end127.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i380:                                      ; preds = %if.end127
  %call1.i = tail call i32 @clk_enable(ptr noundef %call117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i380.if.end136_crit_edge, label %if.then3.i

if.end.i380.if.end136_crit_edge:                  ; preds = %if.end.i380
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then3.i:                                       ; preds = %if.end.i380
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call117) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end127.clk_prepare_enable.exit_crit_edge
  %retval.0.i381 = phi i32 [ %call.i378, %if.end127.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i381)
  %cmp130 = icmp slt i32 %retval.0.i381, 0
  br i1 %cmp130, label %do.end134, label %clk_prepare_enable.exit.if.end136_crit_edge

clk_prepare_enable.exit.if.end136_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

do.end134:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i381) #10
  br label %spi_controller_put.exit

if.end136:                                        ; preds = %clk_prepare_enable.exit.if.end136_crit_edge, %if.end.i380.if.end136_crit_edge
  %66 = ptrtoint ptr %sel_clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sel_clk, align 4
  %68 = ptrtoint ptr %parent_clk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %parent_clk, align 4
  %call139 = tail call i32 @clk_set_parent(ptr noundef %67, ptr noundef %69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %do.end144, label %if.end147

do.end144:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call139) #10
  %70 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %71) #7
  tail call void @clk_unprepare(ptr noundef %71) #7
  br label %spi_controller_put.exit

if.end147:                                        ; preds = %if.end136
  %72 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %spi_clk, align 4
  %call149 = tail call i32 @clk_get_rate(ptr noundef %73) #7
  %spi_clk_hz = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 15
  %74 = ptrtoint ptr %spi_clk_hz to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call149, ptr %spi_clk_hz, align 4
  %75 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_comp, align 4
  %no_need_unprepare = getelementptr inbounds %struct.mtk_spi_compatible, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %no_need_unprepare to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %no_need_unprepare, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool151.not = icmp eq i8 %78, 0
  %79 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %80) #7
  br i1 %tobool151.not, label %if.else, label %if.end147.if.end155_crit_edge

if.end147.if.end155_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155

if.else:                                          ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %80) #7
  br label %if.end155

if.end155:                                        ; preds = %if.else, %if.end147.if.end155_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %81 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_comp, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool159.not = icmp eq i8 %84, 0
  br i1 %tobool159.not, label %if.end155.if.end210_crit_edge, label %if.then160

if.end155.if.end210_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

if.then160:                                       ; preds = %if.end155
  %pad_num161 = getelementptr inbounds %struct.mtk_spi, ptr %13, i32 0, i32 2
  %85 = ptrtoint ptr %pad_num161 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pad_num161, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %87 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %num_chipselect, align 2
  %conv = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv)
  %cmp162.not = icmp eq i32 %86, %conv
  br i1 %cmp162.not, label %if.end172, label %do.end167

do.end167:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %86, i32 noundef %conv) #10
  br label %err_disable_runtime_pm

if.end172:                                        ; preds = %if.then160
  %cs_gpios = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 54
  %89 = ptrtoint ptr %cs_gpios to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cs_gpios, align 8
  %tobool173.not = icmp eq ptr %90, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %88)
  %cmp176 = icmp ugt i16 %88, 1
  %or.cond = select i1 %tobool173.not, i1 %cmp176, i1 false
  br i1 %or.cond, label %do.end181, label %if.end183

do.end181:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %err_disable_runtime_pm

if.end183:                                        ; preds = %if.end172
  br i1 %tobool173.not, label %if.end183.if.end210_crit_edge, label %for.cond187.preheader

if.end183.if.end210_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

for.cond187.preheader:                            ; preds = %if.end183
  %91 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %num_chipselect, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %cmp190399.not = icmp eq i16 %92, 0
  br i1 %cmp190399.not, label %for.cond187.preheader.if.end210_crit_edge, label %for.cond187.preheader.for.body192_crit_edge

for.cond187.preheader.for.body192_crit_edge:      ; preds = %for.cond187.preheader
  br label %for.body192

for.cond187.preheader.if.end210_crit_edge:        ; preds = %for.cond187.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

for.body192:                                      ; preds = %for.inc206.for.body192_crit_edge, %for.cond187.preheader.for.body192_crit_edge
  %i.1400 = phi i32 [ %inc207, %for.inc206.for.body192_crit_edge ], [ 0, %for.cond187.preheader.for.body192_crit_edge ]
  %93 = ptrtoint ptr %cs_gpios to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cs_gpios, align 8
  %arrayidx195 = getelementptr i32, ptr %94, i32 %i.1400
  %95 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx195, align 4
  %97 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i383 = icmp eq ptr %98, null
  br i1 %tobool.not.i383, label %if.end.i384, label %for.body192.dev_name.exit386_crit_edge

for.body192.dev_name.exit386_crit_edge:           ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit386

if.end.i384:                                      ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  br label %dev_name.exit386

dev_name.exit386:                                 ; preds = %if.end.i384, %for.body192.dev_name.exit386_crit_edge
  %retval.0.i385 = phi ptr [ %100, %if.end.i384 ], [ %98, %for.body192.dev_name.exit386_crit_edge ]
  %call198 = tail call i32 @devm_gpio_request(ptr noundef %dev, i32 noundef %96, ptr noundef %retval.0.i385) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %for.inc206, label %do.end203

do.end203:                                        ; preds = %dev_name.exit386
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %i.1400) #10
  br label %err_disable_runtime_pm

for.inc206:                                       ; preds = %dev_name.exit386
  %inc207 = add nuw nsw i32 %i.1400, 1
  %101 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %num_chipselect, align 2
  %conv189 = zext i16 %102 to i32
  %cmp190 = icmp ult i32 %inc207, %conv189
  br i1 %cmp190, label %for.inc206.for.body192_crit_edge, label %for.inc206.if.end210_crit_edge

for.inc206.if.end210_crit_edge:                   ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end210

for.inc206.for.body192_crit_edge:                 ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body192

if.end210:                                        ; preds = %for.inc206.if.end210_crit_edge, %for.cond187.preheader.if.end210_crit_edge, %if.end183.if.end210_crit_edge, %if.end155.if.end210_crit_edge
  %103 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev_comp, align 4
  %dma_ext = getelementptr inbounds %struct.mtk_spi_compatible, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %dma_ext to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dma_ext, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool212.not = icmp eq i8 %106, 0
  %. = select i1 %tobool212.not, i32 32, i32 36
  %sh_prom = zext i32 %. to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  %call219 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end210.if.end226_crit_edge, label %do.end224

if.end210.if.end226_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

do.end224:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %., i32 noundef %call219) #10
  br label %if.end226

if.end226:                                        ; preds = %do.end224, %if.end210.if.end226_crit_edge
  %call228 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %if.end226.cleanup_crit_edge, label %do.end233

if.end226.cleanup_crit_edge:                      ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end233:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %call228) #10
  br label %err_disable_runtime_pm

err_disable_runtime_pm:                           ; preds = %do.end233, %do.end203, %do.end181, %do.end167
  %ret.0 = phi i32 [ -22, %do.end167 ], [ %call198, %do.end203 ], [ %call228, %do.end233 ], [ -22, %do.end181 ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_disable_runtime_pm, %do.end144, %do.end134, %if.then120, %if.then108, %if.then96, %do.end89, %if.end69.spi_controller_put.exit_crit_edge, %if.then66, %do.end57, %devm_kmalloc_array.exit.spi_controller_put.exit_crit_edge, %devm_kmalloc_array.exit.thread, %do.end35, %do.end12
  %ret.1 = phi i32 [ -22, %do.end35 ], [ -22, %do.end57 ], [ %52, %if.then66 ], [ %call.i374, %do.end89 ], [ %61, %if.then96 ], [ %63, %if.then108 ], [ %65, %if.then120 ], [ %retval.0.i381, %do.end134 ], [ %call139, %do.end144 ], [ %ret.0, %err_disable_runtime_pm ], [ -22, %do.end12 ], [ -12, %devm_kmalloc_array.exit.spi_controller_put.exit_crit_edge ], [ %call70, %if.end69.spi_controller_put.exit_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ]
  tail call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end226.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %spi_controller_put.exit ], [ -12, %do.end ], [ 0, %if.end226.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %7 = or i32 %6, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #7, !srcloc !131
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %13 = and i32 %12, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr15.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %13) #7, !srcloc !131
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_comp, align 4
  %no_need_unprepare = getelementptr inbounds %struct.mtk_spi_compatible, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %no_need_unprepare to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %no_need_unprepare, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %spi_clk = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %spec.select = xor i1 %tobool.not, %enable
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  br i1 %spec.select, label %if.else, label %if.then6

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %9, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %10) #7, !srcloc !131
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and9 = and i32 %9, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and9)
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %13) #7, !srcloc !131
  %state = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %20 = or i32 %19, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %20) #7, !srcloc !131
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr7.i = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  %26 = and i32 %25, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add.ptr15.i = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %26) #7, !srcloc !131
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %11 = shl i32 %7, 8
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 8
  %and18 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %14 = and i32 %10, -3342337
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %masksel = select i1 %tobool19.not, i32 12288, i32 0
  %and15.masked = and i32 %11, 768
  %and22 = or i32 %and15.masked, %15
  %reg_val.2 = or i32 %and22, %masksel
  %or28 = or i32 %reg_val.2, 49152
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %5, i32 0, i32 14
  %16 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_comp, align 4
  %enhance_timing = getelementptr inbounds %struct.mtk_spi_compatible, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %enhance_timing to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enhance_timing, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool29.not = icmp eq i8 %19, 0
  br i1 %tobool29.not, label %entry.if.end45_crit_edge, label %if.then30

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then30:                                        ; preds = %entry
  %and32 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %or35 = or i32 %reg_val.2, 49280
  %and37 = and i32 %or28, -129
  %reg_val.3 = select i1 %tobool33.not, i32 %and37, i32 %or35
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool39.not = icmp eq i32 %21, 0
  br i1 %tobool39.not, label %if.else42, label %if.then40

if.then40:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %or41 = or i32 %reg_val.3, 64
  br label %if.end45

if.else42:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %and43 = and i32 %reg_val.3, -65
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then40, %entry.if.end45_crit_edge
  %reg_val.4 = phi i32 [ %or41, %if.then40 ], [ %and43, %if.else42 ], [ %or28, %entry.if.end45_crit_edge ]
  %or46 = and i32 %reg_val.4, -199713
  %and47 = or i32 %or46, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %and47)
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %add.ptr50 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %22) #7, !srcloc !131
  %25 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_comp, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool52.not = icmp eq i8 %28, 0
  br i1 %tobool52.not, label %if.end45.if.end59_crit_edge, label %do.body54

if.end45.if.end59_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.body54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %pad_sel = getelementptr inbounds %struct.mtk_spi, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %pad_sel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pad_sel, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chip_select, align 4
  %idxprom = zext i8 %32 to i32
  %arrayidx = getelementptr i32, ptr %30, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  %add.ptr58 = getelementptr i8, ptr %37, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %35) #7, !srcloc !131
  br label %if.end59

if.end59:                                         ; preds = %do.body54, %if.end45.if.end59_crit_edge
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %add.ptr63 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %41 = and i32 %40, -225
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %tick_delay = getelementptr inbounds %struct.mtk_chip_config, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %tick_delay to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tick_delay, align 4
  %shl = shl i32 %44, 29
  %or69 = or i32 %shl, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %5, align 4
  %add.ptr74 = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %45) #7, !srcloc !131
  %call75 = tail call i32 @mtk_spi_set_hw_cs_timing(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_transfer_one(ptr noundef %master, ptr noundef %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 24
  %0 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %can_dma, align 4
  %call = tail call zeroext i1 %1(ptr noundef %master, ptr noundef %spi, ptr noundef %xfer) #7
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %tx_sgl.i = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 10
  %rx_sgl.i = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 11
  %tx_sgl_len.i = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 12
  %rx_sgl_len.i = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 13
  %cur_transfer.i = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 7
  %4 = call ptr @memset(ptr %tx_sgl.i, i32 0, i32 16)
  %5 = ptrtoint ptr %cur_transfer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %xfer, ptr %cur_transfer.i, align 4
  %num_xfered.i = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %num_xfered.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_xfered.i, align 4
  tail call fastcc void @mtk_spi_prepare_transfer(ptr noundef %master, ptr noundef %xfer) #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %11 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %xfer, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %or.i = or i32 %10, 2048
  %spec.select.i = select i1 %tobool.not.i, i32 %10, i32 %or.i
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  %or5.i = or i32 %spec.select.i, 1024
  %cmd.1.i = select i1 %tobool3.not.i, i32 %spec.select.i, i32 %or5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %cmd.1.i) #7
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %add.ptr8.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %15) #7, !srcloc !131
  %18 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xfer, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %if.then.if.end13.i_crit_edge, label %if.then11.i

if.then.if.end13.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %tx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 5
  %20 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_sg.i, align 4
  %22 = ptrtoint ptr %tx_sgl.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %tx_sgl.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.then.if.end13.i_crit_edge
  %23 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_buf.i, align 4
  %tobool15.not.i = icmp eq ptr %24, null
  br i1 %tobool15.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then16.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_sg.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 6
  %25 = ptrtoint ptr %rx_sg.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_sg.i, align 4
  %27 = ptrtoint ptr %rx_sgl.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %rx_sgl.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end19.i_crit_edge
  %28 = ptrtoint ptr %tx_sgl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_sgl.i, align 4
  %tobool21.not.i = icmp eq ptr %29, null
  br i1 %tobool21.not.i, label %if.end19.i.if.end26.i_crit_edge, label %if.then22.i

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address.i, align 4
  %tx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %32 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tx_dma.i, align 4
  %33 = ptrtoint ptr %tx_sgl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_sgl.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_length.i, align 4
  %37 = ptrtoint ptr %tx_sgl_len.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tx_sgl_len.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %if.end19.i.if.end26.i_crit_edge
  %38 = ptrtoint ptr %rx_sgl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_sgl.i, align 4
  %tobool28.not.i = icmp eq ptr %39, null
  br i1 %tobool28.not.i, label %if.end26.i.if.end35.i_crit_edge, label %if.then29.i

if.end26.i.if.end35.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address31.i = getelementptr inbounds %struct.scatterlist, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dma_address31.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_address31.i, align 4
  %rx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %42 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %rx_dma.i, align 4
  %43 = ptrtoint ptr %rx_sgl.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rx_sgl.i, align 4
  %dma_length33.i = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %dma_length33.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_length33.i, align 4
  %47 = ptrtoint ptr %rx_sgl_len.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %rx_sgl_len.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end35.i_crit_edge
  %48 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i, align 4
  %tx_sgl_len.i.i = getelementptr inbounds %struct.mtk_spi, ptr %49, i32 0, i32 12
  %50 = ptrtoint ptr %tx_sgl_len.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_sgl_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  %rx_sgl_len32.i.i = getelementptr inbounds %struct.mtk_spi, ptr %49, i32 0, i32 13
  %52 = ptrtoint ptr %rx_sgl_len32.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_sgl_len32.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool33.not.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i, label %if.else31.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end35.i
  br i1 %tobool33.not.i.i, label %if.then24.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.i.i = icmp ugt i32 %51, %53
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.else.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %53)
  %cmp.i.i.i = icmp ugt i32 %53, 1024
  %rem.i.i.i = and i32 %53, 1023
  %mult_delta.0.i.i.i = select i1 %cmp.i.i.i, i32 %rem.i.i.i, i32 0
  %sub.i.i = sub i32 %53, %mult_delta.0.i.i.i
  %xfer_len.i.i = getelementptr inbounds %struct.mtk_spi, ptr %49, i32 0, i32 8
  %54 = ptrtoint ptr %xfer_len.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i.i, ptr %xfer_len.i.i, align 4
  %55 = ptrtoint ptr %rx_sgl_len32.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mult_delta.0.i.i.i, ptr %rx_sgl_len32.i.i, align 4
  %sub11.i.i = sub i32 %51, %sub.i.i
  %56 = ptrtoint ptr %tx_sgl_len.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub11.i.i, ptr %tx_sgl_len.i.i, align 4
  br label %mtk_spi_update_mdata_len.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %51)
  %cmp.i79.i.i = icmp ugt i32 %51, 1024
  %rem.i80.i.i = and i32 %51, 1023
  %mult_delta.0.i81.i.i = select i1 %cmp.i79.i.i, i32 %rem.i80.i.i, i32 0
  %sub15.i.i = sub i32 %51, %mult_delta.0.i81.i.i
  %xfer_len16.i.i = getelementptr inbounds %struct.mtk_spi, ptr %49, i32 0, i32 8
  %57 = ptrtoint ptr %xfer_len16.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub15.i.i, ptr %xfer_len16.i.i, align 4
  %58 = ptrtoint ptr %tx_sgl_len.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mult_delta.0.i81.i.i, ptr %tx_sgl_len.i.i, align 4
  %sub20.i.i = sub i32 %53, %sub15.i.i
  %59 = ptrtoint ptr %rx_sgl_len32.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub20.i.i, ptr %rx_sgl_len32.i.i, align 4
  br label %mtk_spi_update_mdata_len.exit.i

if.then24.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %51)
  %cmp.i82.i.i = icmp ugt i32 %51, 1024
  %rem.i83.i.i = and i32 %51, 1023
  %mult_delta.0.i84.i.i = select i1 %cmp.i82.i.i, i32 %rem.i83.i.i, i32 0
  %sub28.i.i = sub i32 %51, %mult_delta.0.i84.i.i
  %xfer_len29.i.i = getelementptr inbounds %struct.mtk_spi, ptr %49, i32 0, i32 8
  %60 = ptrtoint ptr %xfer_len29.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub28.i.i, ptr %xfer_len29.i.i, align 4
  %61 = ptrtoint ptr %tx_sgl_len.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mult_delta.0.i84.i.i, ptr %tx_sgl_len.i.i, align 4
  br label %mtk_spi_update_mdata_len.exit.i

if.else31.i.i:                                    ; preds = %if.end35.i
  br i1 %tobool33.not.i.i, label %if.else31.i.i.mtk_spi_update_mdata_len.exit.i_crit_edge, label %if.then34.i.i

if.else31.i.i.mtk_spi_update_mdata_len.exit.i_crit_edge: ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_spi_update_mdata_len.exit.i

if.then34.i.i:                                    ; preds = %if.else31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %53)
  %cmp.i85.i.i = icmp ugt i32 %53, 1024
  %rem.i86.i.i = and i32 %53, 1023
  %mult_delta.0.i87.i.i = select i1 %cmp.i85.i.i, i32 %rem.i86.i.i, i32 0
  %sub38.i.i = sub i32 %53, %mult_delta.0.i87.i.i
  %xfer_len39.i.i = getelementptr inbounds %struct.mtk_spi, ptr %49, i32 0, i32 8
  %62 = ptrtoint ptr %xfer_len39.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub38.i.i, ptr %xfer_len39.i.i, align 4
  %63 = ptrtoint ptr %rx_sgl_len32.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mult_delta.0.i87.i.i, ptr %rx_sgl_len32.i.i, align 4
  br label %mtk_spi_update_mdata_len.exit.i

mtk_spi_update_mdata_len.exit.i:                  ; preds = %if.then34.i.i, %if.else31.i.i.mtk_spi_update_mdata_len.exit.i_crit_edge, %if.then24.i.i, %if.else.i.i, %if.then4.i.i
  %64 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i.i, align 4
  %xfer_len.i2.i = getelementptr inbounds %struct.mtk_spi, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %xfer_len.i2.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %xfer_len.i2.i, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %67, i32 1024) #7
  %div.i.i = udiv i32 %67, %68
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %65, align 4
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %72 = and i32 %71, -16776964
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #7
  %sub.i3.i = shl nuw nsw i32 %68, 16
  %shl.i.i = add nsw i32 %sub.i3.i, -65536
  %sub5.i.i = shl i32 %div.i.i, 8
  %shl6.i.i = add i32 %sub5.i.i, -256
  %or.i.i = or i32 %shl6.i.i, %shl.i.i
  %or7.i.i = or i32 %or.i.i, %73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %74 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i) #7
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %65, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %74) #7, !srcloc !131
  %77 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver_data.i.i.i, align 4
  %tx_sgl.i.i = getelementptr inbounds %struct.mtk_spi, ptr %78, i32 0, i32 10
  %79 = ptrtoint ptr %tx_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tx_sgl.i.i, align 4
  %tobool.not.i5.i = icmp eq ptr %80, null
  br i1 %tobool.not.i5.i, label %mtk_spi_update_mdata_len.exit.i.if.end.i.i_crit_edge, label %do.body.i.i

mtk_spi_update_mdata_len.exit.i.if.end.i.i_crit_edge: ; preds = %mtk_spi_update_mdata_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.body.i.i:                                      ; preds = %mtk_spi_update_mdata_len.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %tx_dma.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %81 = ptrtoint ptr %tx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_dma.i.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #7
  %84 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %78, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %85, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %83) #7, !srcloc !131
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i, %mtk_spi_update_mdata_len.exit.i.if.end.i.i_crit_edge
  %rx_sgl.i.i = getelementptr inbounds %struct.mtk_spi, ptr %78, i32 0, i32 11
  %86 = ptrtoint ptr %rx_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx_sgl.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %87, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.mtk_spi_dma_transfer.exit_crit_edge, label %do.body3.i.i

if.end.i.i.mtk_spi_dma_transfer.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_spi_dma_transfer.exit

do.body3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %rx_dma.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %88 = ptrtoint ptr %rx_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_dma.i.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #7
  %91 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %78, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %92, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %90) #7, !srcloc !131
  br label %mtk_spi_dma_transfer.exit

mtk_spi_dma_transfer.exit:                        ; preds = %do.body3.i.i, %if.end.i.i.mtk_spi_dma_transfer.exit_crit_edge
  %93 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %96, i32 24
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !128
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %state.i.i = getelementptr inbounds %struct.mtk_spi, ptr %94, i32 0, i32 1
  %99 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i9.i = icmp eq i32 %100, 0
  %cmd.0.v.i.i = select i1 %cmp.i9.i, i32 1, i32 2
  %cmd.0.i.i = or i32 %cmd.0.v.i.i, %98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %101 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i.i) #7
  %102 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %94, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %103, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %101) #7, !srcloc !131
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i)
  %driver_data.i.i.i10 = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %104 = ptrtoint ptr %driver_data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %driver_data.i.i.i10, align 4
  %cur_transfer.i11 = getelementptr inbounds %struct.mtk_spi, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %cur_transfer.i11 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %xfer, ptr %cur_transfer.i11, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %107 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i, align 4
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 32) #7
  %xfer_len.i = getelementptr inbounds %struct.mtk_spi, ptr %105, i32 0, i32 8
  %110 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %xfer_len.i, align 4
  %num_xfered.i12 = getelementptr inbounds %struct.mtk_spi, ptr %105, i32 0, i32 9
  %111 = ptrtoint ptr %num_xfered.i12 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %num_xfered.i12, align 4
  tail call fastcc void @mtk_spi_prepare_transfer(ptr noundef %master, ptr noundef %xfer) #7
  %112 = ptrtoint ptr %driver_data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %driver_data.i.i.i10, align 4
  %xfer_len.i.i13 = getelementptr inbounds %struct.mtk_spi, ptr %113, i32 0, i32 8
  %114 = ptrtoint ptr %xfer_len.i.i13 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %xfer_len.i.i13, align 4
  %116 = tail call i32 @llvm.umin.i32(i32 %115, i32 1024) #7
  %div.i.i14 = udiv i32 %115, %116
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %113, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %118, i32 4
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %120 = and i32 %119, -16776964
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #7
  %sub.i.i16 = shl nuw nsw i32 %116, 16
  %shl.i.i17 = add nsw i32 %sub.i.i16, -65536
  %sub5.i.i18 = shl i32 %div.i.i14, 8
  %shl6.i.i19 = add i32 %sub5.i.i18, -256
  %or.i.i20 = or i32 %shl6.i.i19, %shl.i.i17
  %or7.i.i21 = or i32 %or.i.i20, %121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %122 = tail call i32 @llvm.bswap.i32(i32 %or7.i.i21) #7
  %123 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %113, align 4
  %add.ptr9.i.i22 = getelementptr i8, ptr %124, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i22, i32 %122) #7, !srcloc !131
  %125 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xfer, align 4
  %tobool.not.i23 = icmp eq ptr %126, null
  br i1 %tobool.not.i23, label %if.else.mtk_spi_fifo_transfer.exit_crit_edge, label %if.then.i

if.else.mtk_spi_fifo_transfer.exit_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_spi_fifo_transfer.exit

if.then.i:                                        ; preds = %if.else
  %127 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i, align 4
  %div1.i = lshr i32 %128, 2
  %129 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %105, align 4
  %add.ptr.i24 = getelementptr i8, ptr %130, i32 16
  tail call void @__raw_writesl(ptr noundef %add.ptr.i24, ptr noundef nonnull %126, i32 noundef %div1.i) #7
  %131 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len.i, align 4
  %rem.i = and i32 %132, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.not.i, label %if.then.i.mtk_spi_fifo_transfer.exit_crit_edge, label %if.then5.i

if.then.i.mtk_spi_fifo_transfer.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_spi_fifo_transfer.exit

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %reg_val.i, align 4
  %134 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %xfer, align 4
  %mul.i = and i32 %128, -4
  %add.ptr7.i = getelementptr i8, ptr %135, i32 %mul.i
  %136 = call ptr @memcpy(ptr %reg_val.i, ptr %add.ptr7.i, i32 %rem.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %137 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0..i = load i32, ptr %reg_val.i, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0..i) #7
  %139 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %105, align 4
  %add.ptr9.i = getelementptr i8, ptr %140, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %138) #7, !srcloc !131
  br label %mtk_spi_fifo_transfer.exit

mtk_spi_fifo_transfer.exit:                       ; preds = %if.then5.i, %if.then.i.mtk_spi_fifo_transfer.exit_crit_edge, %if.else.mtk_spi_fifo_transfer.exit_crit_edge
  %141 = ptrtoint ptr %driver_data.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %driver_data.i.i.i10, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %142, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %144, i32 24
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3.i) #7, !srcloc !128
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %state.i.i25 = getelementptr inbounds %struct.mtk_spi, ptr %142, i32 0, i32 1
  %147 = ptrtoint ptr %state.i.i25 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %state.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.i.i26 = icmp eq i32 %148, 0
  %cmd.0.v.i.i27 = select i1 %cmp.i.i26, i32 1, i32 2
  %cmd.0.i.i28 = or i32 %cmd.0.v.i.i27, %146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %149 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i.i28) #7
  %150 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %142, align 4
  %add.ptr5.i.i29 = getelementptr i8, ptr %151, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i29, i32 %149) #7, !srcloc !131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i)
  br label %return

return:                                           ; preds = %mtk_spi_fifo_transfer.exit, %mtk_spi_dma_transfer.exit
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mtk_spi_can_dma(ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %xfer) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xfer, align 4
  %4 = ptrtoint ptr %3 to i32
  %rem = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %7 = ptrtoint ptr %6 to i32
  %rem2 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem2)
  %cmp3 = icmp eq i32 %rem2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %8 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cmp3, %land.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_setup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller_data = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %4 = ptrtoint ptr %controller_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %controller_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_default_chip_info, ptr %controller_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_comp, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %11 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %12)
  %13 = icmp ult i32 %12, 2048
  br i1 %13, label %if.then4, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 8
  %and = lshr i32 %15, 2
  %and.lobit = and i32 %and, 1
  %16 = xor i32 %and.lobit, 1
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %12) #7
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %16) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_set_hw_cs_timing(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cs_setup1 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 16
  %cs_inactive3 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 18
  %call4 = tail call i32 @spi_delay_to_ns(ptr noundef %cs_setup1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cs_hold2 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 17
  %spi_clk_hz = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %spi_clk_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spi_clk_hz, align 4
  %sub = add i32 %5, 999999
  %div = udiv i32 %sub, 1000000
  %mul = mul i32 %div, %call4
  %div5 = udiv i32 %mul, 1000
  %call6 = tail call i32 @spi_delay_to_ns(ptr noundef %cs_hold2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %spi_clk_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_clk_hz, align 4
  %sub12 = add i32 %7, 999999
  %div13 = udiv i32 %sub12, 1000000
  %mul14 = mul i32 %div13, %call6
  %div15 = udiv i32 %mul14, 1000
  %call16 = tail call i32 @spi_delay_to_ns(ptr noundef %cs_inactive3, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end9.cleanup_crit_edge, label %if.end19

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %spi_clk_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spi_clk_hz, align 4
  %sub22 = add i32 %9, 999999
  %div23 = udiv i32 %sub22, 1000000
  %mul24 = mul i32 %div23, %call16
  %div25 = udiv i32 %mul24, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul14)
  %10 = icmp ult i32 %mul14, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul)
  %11 = icmp ult i32 %mul, 1000
  %or.cond = select i1 %10, i1 %11, i1 false
  br i1 %or.cond, label %if.end19.if.end84_crit_edge, label %if.then27

if.end19.if.end84_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then27:                                        ; preds = %if.end19
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !128
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_comp, align 4
  %enhance_timing = getelementptr inbounds %struct.mtk_spi_compatible, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %enhance_timing to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enhance_timing, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool30.not = icmp eq i8 %19, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.then27
  br i1 %10, label %if.then31.if.end38_crit_edge, label %if.then33

if.then31.if.end38_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %mul14)
  %cmp35 = icmp ult i32 %mul14, 65536000
  %phi.bo182 = add nuw nsw i32 %div15, 65535
  %phi.bo183 = and i32 %phi.bo182, 65535
  %cond = select i1 %cmp35, i32 %phi.bo183, i32 65535
  %and = and i32 %15, -65536
  %or = or i32 %and, %cond
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then31.if.end38_crit_edge
  %reg_val.0 = phi i32 [ %or, %if.then33 ], [ %15, %if.then31.if.end38_crit_edge ]
  br i1 %11, label %if.end38.do.body_crit_edge, label %if.then40

if.end38.do.body_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536000, i32 %mul)
  %cmp42 = icmp ult i32 %mul, 65536000
  %phi.bo179 = shl i32 %div5, 16
  %phi.bo181 = add i32 %phi.bo179, -65536
  %cond46 = select i1 %cmp42, i32 %phi.bo181, i32 -65536
  %and47 = and i32 %reg_val.0, 65535
  %or51 = or i32 %and47, %cond46
  br label %do.body

if.else:                                          ; preds = %if.then27
  br i1 %10, label %if.else.if.end66_crit_edge, label %if.then54

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %mul14)
  %cmp56 = icmp ult i32 %mul14, 256000
  %phi.bo176 = shl i32 %div15, 16
  %phi.bo177 = add i32 %phi.bo176, 16711680
  %phi.bo178 = and i32 %phi.bo177, 16711680
  %cond60 = select i1 %cmp56, i32 %phi.bo178, i32 16711680
  %and61 = and i32 %15, -16711681
  %or65 = or i32 %and61, %cond60
  br label %if.end66

if.end66:                                         ; preds = %if.then54, %if.else.if.end66_crit_edge
  %reg_val.1 = phi i32 [ %or65, %if.then54 ], [ %15, %if.else.if.end66_crit_edge ]
  br i1 %11, label %if.end66.do.body_crit_edge, label %if.then68

if.end66.do.body_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %mul)
  %cmp70 = icmp ult i32 %mul, 256000
  %phi.bo173 = shl i32 %div5, 24
  %phi.bo175 = add i32 %phi.bo173, -16777216
  %cond74 = select i1 %cmp70, i32 %phi.bo175, i32 -16777216
  %and75 = and i32 %reg_val.1, 16777215
  %or79 = or i32 %and75, %cond74
  br label %do.body

do.body:                                          ; preds = %if.then68, %if.end66.do.body_crit_edge, %if.then40, %if.end38.do.body_crit_edge
  %reg_val.2 = phi i32 [ %or51, %if.then40 ], [ %reg_val.0, %if.end38.do.body_crit_edge ], [ %or79, %if.then68 ], [ %reg_val.1, %if.end66.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg_val.2)
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #7, !srcloc !131
  br label %if.end84

if.end84:                                         ; preds = %do.body, %if.end19.if.end84_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul24)
  %23 = icmp ult i32 %mul24, 1000
  br i1 %23, label %if.end84.cleanup_crit_edge, label %if.then86

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then86:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %mul24)
  %cmp88 = icmp ult i32 %mul24, 256000
  %phi.bo = add nuw nsw i32 %div25, 255
  %phi.bo172 = and i32 %phi.bo, 255
  %cond92 = select i1 %cmp88, i32 %phi.bo172, i32 255
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %add.ptr96 = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %27 = and i32 %26, 16777215
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %or104 = or i32 %28, %cond92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or104)
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add.ptr109 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %29) #7, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %if.end84.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call16, %if.end9.cleanup_crit_edge ], [ 0, %if.then86 ], [ 0, %if.end84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val)
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_transfer = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_transfer, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %7 = lshr i32 %6, 25
  %.lobit = and i32 %7, 1
  %8 = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.lobit, ptr %8, align 4
  %can_dma = getelementptr inbounds %struct.spi_controller, ptr %dev_id, i32 0, i32 24
  %10 = ptrtoint ptr %can_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %can_dma, align 4
  %call4 = tail call zeroext i1 %11(ptr noundef %dev_id, ptr noundef null, ptr noundef %3) #7
  br i1 %call4, label %if.end57, label %if.then5

if.then5:                                         ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_buf, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %if.then5.if.end26_crit_edge, label %if.then7

if.then5.if.end26_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then7:                                         ; preds = %if.then5
  %xfer_len = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfer_len, align 4
  %div212 = lshr i32 %15, 2
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr9 = getelementptr i8, ptr %17, i32 20
  %num_xfered = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %num_xfered to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_xfered, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 %19
  tail call void @__raw_readsl(ptr noundef %add.ptr9, ptr noundef %add.ptr11, i32 noundef %div212) #7
  %20 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xfer_len, align 4
  %rem = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.then7.if.end26_crit_edge, label %if.then13

if.then7.if.end26_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr17 = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !128
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %26 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %reg_val, align 4
  %27 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_buf, align 4
  %29 = ptrtoint ptr %num_xfered to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_xfered, align 4
  %add.ptr23 = getelementptr i8, ptr %28, i32 %30
  %mul = and i32 %15, -4
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 %mul
  %31 = call ptr @memcpy(ptr %add.ptr24, ptr %reg_val, i32 %rem)
  br label %if.end26

if.end26:                                         ; preds = %if.then13, %if.then7.if.end26_crit_edge, %if.then5.if.end26_crit_edge
  %xfer_len27 = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %xfer_len27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_len27, align 4
  %num_xfered28 = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %num_xfered28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_xfered28, align 4
  %add = add i32 %35, %33
  store i32 %add, ptr %num_xfered28, align 4
  %len30 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add)
  %cmp31 = icmp eq i32 %37, %add
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #7
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %sub = sub i32 %37, %add
  %38 = tail call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %39 = ptrtoint ptr %xfer_len27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %xfer_len27, align 4
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i, align 4
  %xfer_len.i = getelementptr inbounds %struct.mtk_spi, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xfer_len.i, align 4
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 1024) #7
  %div.i = udiv i32 %43, %44
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %41, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %48 = and i32 %47, -16776964
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %sub.i = shl nuw nsw i32 %44, 16
  %shl.i = add nsw i32 %sub.i, -65536
  %sub5.i = shl i32 %div.i, 8
  %shl6.i = add i32 %sub5.i, -256
  %or.i = or i32 %shl6.i, %shl.i
  %or7.i = or i32 %or.i, %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #7
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %41, align 4
  %add.ptr9.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %50) #7, !srcloc !131
  %53 = ptrtoint ptr %xfer_len27 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %xfer_len27, align 4
  %div40211 = lshr i32 %54, 2
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %add.ptr42 = getelementptr i8, ptr %56, i32 16
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %59 = ptrtoint ptr %num_xfered28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_xfered28, align 4
  %add.ptr44 = getelementptr i8, ptr %58, i32 %60
  tail call void @__raw_writesl(ptr noundef %add.ptr42, ptr noundef %add.ptr44, i32 noundef %div40211) #7
  %61 = ptrtoint ptr %xfer_len27 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %xfer_len27, align 4
  %rem46 = and i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem46)
  %cmp47.not = icmp eq i32 %rem46, 0
  br i1 %cmp47.not, label %if.end33.if.end56_crit_edge, label %if.then48

if.end33.if.end56_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then48:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %reg_val, align 4
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %mul50 = and i32 %54, -4
  %add.ptr51 = getelementptr i8, ptr %65, i32 %mul50
  %66 = ptrtoint ptr %num_xfered28 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_xfered28, align 4
  %add.ptr53 = getelementptr i8, ptr %add.ptr51, i32 %67
  %68 = call ptr @memcpy(ptr %reg_val, ptr %add.ptr53, i32 %rem46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  tail call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %69)
  %reg_val.0.reg_val.0.reg_val.0.205 = load i32, ptr %reg_val, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0.reg_val.0.reg_val.0.205)
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %add.ptr55 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %70) #7, !srcloc !131
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %if.end33.if.end56_crit_edge
  %73 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver_data.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %add.ptr.i214 = getelementptr i8, ptr %76, i32 24
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i214) #7, !srcloc !128
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %state.i = getelementptr inbounds %struct.mtk_spi, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp.i = icmp eq i32 %80, 0
  %cmd.0.v.i = select i1 %cmp.i, i32 1, i32 2
  %cmd.0.i = or i32 %cmd.0.v.i, %78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i) #7
  %82 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %74, align 4
  %add.ptr5.i = getelementptr i8, ptr %83, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %81) #7, !srcloc !131
  br label %cleanup

if.end57:                                         ; preds = %entry
  %tx_sgl = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 10
  %84 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_sgl, align 4
  %tobool58.not = icmp eq ptr %85, null
  br i1 %tobool58.not, label %if.end57.if.end62_crit_edge, label %if.then59

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_len60 = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 8
  %86 = ptrtoint ptr %xfer_len60 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xfer_len60, align 4
  %tx_dma = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 3
  %88 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_dma, align 4
  %add61 = add i32 %89, %87
  store i32 %add61, ptr %tx_dma, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57.if.end62_crit_edge
  %rx_sgl = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 11
  %90 = ptrtoint ptr %rx_sgl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rx_sgl, align 4
  %tobool63.not = icmp eq ptr %91, null
  br i1 %tobool63.not, label %if.end62.if.end67_crit_edge, label %if.then64

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then64:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %xfer_len65 = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 8
  %92 = ptrtoint ptr %xfer_len65 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %xfer_len65, align 4
  %rx_dma = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 4
  %94 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_dma, align 4
  %add66 = add i32 %95, %93
  store i32 %add66, ptr %rx_dma, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end62.if.end67_crit_edge
  %96 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_sgl, align 4
  %tobool69.not = icmp eq ptr %97, null
  br i1 %tobool69.not, label %if.end67.if.end83_crit_edge, label %land.lhs.true

if.end67.if.end83_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end67
  %tx_sgl_len = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 12
  %98 = ptrtoint ptr %tx_sgl_len to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_sgl_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp70 = icmp eq i32 %99, 0
  br i1 %cmp70, label %if.then71, label %land.lhs.true.if.end83_crit_edge

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then71:                                        ; preds = %land.lhs.true
  %call73 = tail call ptr @sg_next(ptr noundef nonnull %97) #7
  %100 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call73, ptr %tx_sgl, align 4
  %tobool76.not = icmp eq ptr %call73, null
  br i1 %tobool76.not, label %if.then71.if.end83_crit_edge, label %if.then77

if.then71.if.end83_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then77:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %call73, i32 0, i32 3
  %101 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dma_address, align 4
  %tx_dma79 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 3
  %103 = ptrtoint ptr %tx_dma79 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %tx_dma79, align 4
  %104 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tx_sgl, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_length, align 4
  %108 = ptrtoint ptr %tx_sgl_len to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %tx_sgl_len, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.then71.if.end83_crit_edge, %land.lhs.true.if.end83_crit_edge, %if.end67.if.end83_crit_edge
  %109 = ptrtoint ptr %rx_sgl to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_sgl, align 4
  %tobool85.not = icmp eq ptr %110, null
  br i1 %tobool85.not, label %if.end83.if.end102_crit_edge, label %land.lhs.true86

if.end83.if.end102_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

land.lhs.true86:                                  ; preds = %if.end83
  %rx_sgl_len = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 13
  %111 = ptrtoint ptr %rx_sgl_len to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rx_sgl_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp87 = icmp eq i32 %112, 0
  br i1 %cmp87, label %if.then88, label %land.lhs.true86.if.end102_crit_edge

land.lhs.true86.if.end102_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then88:                                        ; preds = %land.lhs.true86
  %call90 = tail call ptr @sg_next(ptr noundef nonnull %110) #7
  %113 = ptrtoint ptr %rx_sgl to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call90, ptr %rx_sgl, align 4
  %tobool93.not = icmp eq ptr %call90, null
  br i1 %tobool93.not, label %if.then88.if.end102_crit_edge, label %if.then94

if.then88.if.end102_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then94:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address96 = getelementptr inbounds %struct.scatterlist, ptr %call90, i32 0, i32 3
  %114 = ptrtoint ptr %dma_address96 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_address96, align 4
  %rx_dma97 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 4
  %116 = ptrtoint ptr %rx_dma97 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %rx_dma97, align 4
  %117 = ptrtoint ptr %rx_sgl to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_sgl, align 4
  %dma_length99 = getelementptr inbounds %struct.scatterlist, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %dma_length99 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_length99, align 4
  %121 = ptrtoint ptr %rx_sgl_len to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %rx_sgl_len, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then94, %if.then88.if.end102_crit_edge, %land.lhs.true86.if.end102_crit_edge, %if.end83.if.end102_crit_edge
  %122 = ptrtoint ptr %tx_sgl to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx_sgl, align 4
  %tobool104.not = icmp eq ptr %123, null
  br i1 %tobool104.not, label %land.lhs.true105, label %if.end102.if.end123_crit_edge

if.end102.if.end123_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

land.lhs.true105:                                 ; preds = %if.end102
  %124 = ptrtoint ptr %rx_sgl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rx_sgl, align 4
  %tobool107.not = icmp eq ptr %125, null
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true105.if.end123_crit_edge

land.lhs.true105.if.end123_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then108:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %add.ptr112 = getelementptr i8, ptr %127, i32 24
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %129 = and i32 %128, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %add.ptr122 = getelementptr i8, ptr %131, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %129) #7, !srcloc !131
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #7
  br label %cleanup

if.end123:                                        ; preds = %land.lhs.true105.if.end123_crit_edge, %if.end102.if.end123_crit_edge
  %132 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %driver_data.i.i, align 4
  %tx_sgl_len.i = getelementptr inbounds %struct.mtk_spi, ptr %133, i32 0, i32 12
  %134 = ptrtoint ptr %tx_sgl_len.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx_sgl_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i = icmp eq i32 %135, 0
  %rx_sgl_len32.i = getelementptr inbounds %struct.mtk_spi, ptr %133, i32 0, i32 13
  %136 = ptrtoint ptr %rx_sgl_len32.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rx_sgl_len32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool33.not.i = icmp eq i32 %137, 0
  br i1 %tobool.not.i, label %if.else31.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end123
  br i1 %tobool33.not.i, label %if.then24.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %137)
  %cmp.i216 = icmp ugt i32 %135, %137
  br i1 %cmp.i216, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %137)
  %cmp.i.i = icmp ugt i32 %137, 1024
  %rem.i.i = and i32 %137, 1023
  %mult_delta.0.i.i = select i1 %cmp.i.i, i32 %rem.i.i, i32 0
  %sub.i217 = sub i32 %137, %mult_delta.0.i.i
  %xfer_len.i218 = getelementptr inbounds %struct.mtk_spi, ptr %133, i32 0, i32 8
  %138 = ptrtoint ptr %xfer_len.i218 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %sub.i217, ptr %xfer_len.i218, align 4
  %139 = ptrtoint ptr %rx_sgl_len32.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %mult_delta.0.i.i, ptr %rx_sgl_len32.i, align 4
  %sub11.i = sub i32 %135, %sub.i217
  %140 = ptrtoint ptr %tx_sgl_len.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %sub11.i, ptr %tx_sgl_len.i, align 4
  br label %mtk_spi_update_mdata_len.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %135)
  %cmp.i79.i = icmp ugt i32 %135, 1024
  %rem.i80.i = and i32 %135, 1023
  %mult_delta.0.i81.i = select i1 %cmp.i79.i, i32 %rem.i80.i, i32 0
  %sub15.i = sub i32 %135, %mult_delta.0.i81.i
  %xfer_len16.i = getelementptr inbounds %struct.mtk_spi, ptr %133, i32 0, i32 8
  %141 = ptrtoint ptr %xfer_len16.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %sub15.i, ptr %xfer_len16.i, align 4
  %142 = ptrtoint ptr %tx_sgl_len.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %mult_delta.0.i81.i, ptr %tx_sgl_len.i, align 4
  %sub20.i = sub i32 %137, %sub15.i
  %143 = ptrtoint ptr %rx_sgl_len32.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %sub20.i, ptr %rx_sgl_len32.i, align 4
  br label %mtk_spi_update_mdata_len.exit

if.then24.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %135)
  %cmp.i82.i = icmp ugt i32 %135, 1024
  %rem.i83.i = and i32 %135, 1023
  %mult_delta.0.i84.i = select i1 %cmp.i82.i, i32 %rem.i83.i, i32 0
  %sub28.i = sub i32 %135, %mult_delta.0.i84.i
  %xfer_len29.i = getelementptr inbounds %struct.mtk_spi, ptr %133, i32 0, i32 8
  %144 = ptrtoint ptr %xfer_len29.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub28.i, ptr %xfer_len29.i, align 4
  %145 = ptrtoint ptr %tx_sgl_len.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %mult_delta.0.i84.i, ptr %tx_sgl_len.i, align 4
  br label %mtk_spi_update_mdata_len.exit

if.else31.i:                                      ; preds = %if.end123
  br i1 %tobool33.not.i, label %if.else31.i.mtk_spi_update_mdata_len.exit_crit_edge, label %if.then34.i

if.else31.i.mtk_spi_update_mdata_len.exit_crit_edge: ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_spi_update_mdata_len.exit

if.then34.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %137)
  %cmp.i85.i = icmp ugt i32 %137, 1024
  %rem.i86.i = and i32 %137, 1023
  %mult_delta.0.i87.i = select i1 %cmp.i85.i, i32 %rem.i86.i, i32 0
  %sub38.i = sub i32 %137, %mult_delta.0.i87.i
  %xfer_len39.i = getelementptr inbounds %struct.mtk_spi, ptr %133, i32 0, i32 8
  %146 = ptrtoint ptr %xfer_len39.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %sub38.i, ptr %xfer_len39.i, align 4
  %147 = ptrtoint ptr %rx_sgl_len32.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %mult_delta.0.i87.i, ptr %rx_sgl_len32.i, align 4
  br label %mtk_spi_update_mdata_len.exit

mtk_spi_update_mdata_len.exit:                    ; preds = %if.then34.i, %if.else31.i.mtk_spi_update_mdata_len.exit_crit_edge, %if.then24.i, %if.else.i, %if.then4.i
  %148 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %driver_data.i.i, align 4
  %xfer_len.i220 = getelementptr inbounds %struct.mtk_spi, ptr %149, i32 0, i32 8
  %150 = ptrtoint ptr %xfer_len.i220 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %xfer_len.i220, align 4
  %152 = tail call i32 @llvm.umin.i32(i32 %151, i32 1024) #7
  %div.i221 = udiv i32 %151, %152
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %149, align 4
  %add.ptr.i222 = getelementptr i8, ptr %154, i32 4
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %156 = and i32 %155, -16776964
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #7
  %sub.i223 = shl nuw nsw i32 %152, 16
  %shl.i224 = add nsw i32 %sub.i223, -65536
  %sub5.i225 = shl i32 %div.i221, 8
  %shl6.i226 = add i32 %sub5.i225, -256
  %or.i227 = or i32 %shl6.i226, %shl.i224
  %or7.i228 = or i32 %or.i227, %157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %158 = tail call i32 @llvm.bswap.i32(i32 %or7.i228) #7
  %159 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %149, align 4
  %add.ptr9.i229 = getelementptr i8, ptr %160, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i229, i32 %158) #7, !srcloc !131
  %161 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %driver_data.i.i, align 4
  %tx_sgl.i = getelementptr inbounds %struct.mtk_spi, ptr %162, i32 0, i32 10
  %163 = ptrtoint ptr %tx_sgl.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %tx_sgl.i, align 4
  %tobool.not.i231 = icmp eq ptr %164, null
  br i1 %tobool.not.i231, label %mtk_spi_update_mdata_len.exit.if.end.i_crit_edge, label %do.body.i

mtk_spi_update_mdata_len.exit.if.end.i_crit_edge: ; preds = %mtk_spi_update_mdata_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i:                                        ; preds = %mtk_spi_update_mdata_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %tx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 3
  %165 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tx_dma.i, align 4
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #7
  %168 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %162, align 4
  %add.ptr.i232 = getelementptr i8, ptr %169, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i232, i32 %167) #7, !srcloc !131
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %mtk_spi_update_mdata_len.exit.if.end.i_crit_edge
  %rx_sgl.i = getelementptr inbounds %struct.mtk_spi, ptr %162, i32 0, i32 11
  %170 = ptrtoint ptr %rx_sgl.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rx_sgl.i, align 4
  %tobool1.not.i = icmp eq ptr %171, null
  br i1 %tobool1.not.i, label %if.end.i.mtk_spi_setup_dma_addr.exit_crit_edge, label %do.body3.i

if.end.i.mtk_spi_setup_dma_addr.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_spi_setup_dma_addr.exit

do.body3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %rx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 4
  %172 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %rx_dma.i, align 4
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #7
  %175 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %162, align 4
  %add.ptr8.i = getelementptr i8, ptr %176, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %174) #7, !srcloc !131
  br label %mtk_spi_setup_dma_addr.exit

mtk_spi_setup_dma_addr.exit:                      ; preds = %do.body3.i, %if.end.i.mtk_spi_setup_dma_addr.exit_crit_edge
  %177 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %driver_data.i.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %add.ptr.i234 = getelementptr i8, ptr %180, i32 24
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i234) #7, !srcloc !128
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %state.i235 = getelementptr inbounds %struct.mtk_spi, ptr %178, i32 0, i32 1
  %183 = ptrtoint ptr %state.i235 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %state.i235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp.i236 = icmp eq i32 %184, 0
  %cmd.0.v.i237 = select i1 %cmp.i236, i32 1, i32 2
  %cmd.0.i238 = or i32 %cmd.0.v.i237, %182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %185 = tail call i32 @llvm.bswap.i32(i32 %cmd.0.i238) #7
  %186 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %178, align 4
  %add.ptr5.i239 = getelementptr i8, ptr %187, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i239, i32 %185) #7, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %mtk_spi_setup_dma_addr.exit, %if.then108, %if.end56, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_spi_prepare_transfer(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %xfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 12
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  %spi_clk_hz = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %spi_clk_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spi_clk_hz, align 4
  %div164 = lshr i32 %5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div164)
  %cmp = icmp ult i32 %3, %div164
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %3, -1
  %sub = add i32 %add, %5
  %div5 = udiv i32 %sub, %3
  %phi.bo = add i32 %div5, 1
  %phi.bo6566 = lshr i32 %phi.bo, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %div.0 = phi i32 [ %phi.bo6566, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_comp, align 4
  %enhance_timing = getelementptr inbounds %struct.mtk_spi_compatible, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %enhance_timing to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enhance_timing, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  br i1 %tobool.not, label %if.else20, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %11, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %sub11 = add nuw i32 %div.0, 65535
  %and12 = and i32 %sub11, 65535
  %shl16 = shl i32 %sub11, 16
  %or17 = or i32 %and12, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr19 = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %13) #7, !srcloc !131
  br label %if.end43

if.else20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %sub29 = add nuw i32 %div.0, 255
  %and30 = and i32 %sub29, 255
  %17 = and i32 %16, 65535
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and33 = or i32 %and30, %18
  %shl36 = shl nuw nsw i32 %and30, 8
  %or37 = or i32 %and33, %shl36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !131
  br label %if.end43

if.end43:                                         ; preds = %if.else20, %if.then8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_to_ns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

pm_runtime_suspended.exit:                        ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup_crit_edge, label %pm_runtime_suspended.exit.if.then4_crit_edge

pm_runtime_suspended.exit.if.then4_crit_edge:     ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %pm_runtime_suspended.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %spi_clk = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %spi_clk = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %8) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end5_crit_edge

clk_prepare_enable.exit.if.end5_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i) #10
  br label %cleanup

if.end5:                                          ; preds = %clk_prepare_enable.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %spi_clk9 = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %spi_clk9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi_clk9, align 4
  tail call void @clk_disable(ptr noundef %10) #7
  tail call void @clk_unprepare(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_comp, align 4
  %no_need_unprepare = getelementptr inbounds %struct.mtk_spi_compatible, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %no_need_unprepare to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %no_need_unprepare, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spi_clk2 = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %spi_clk2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_clk2, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev_comp = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_comp, align 4
  %no_need_unprepare = getelementptr inbounds %struct.mtk_spi_compatible, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %no_need_unprepare to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %no_need_unprepare, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %spi_clk3 = getelementptr inbounds %struct.mtk_spi, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %spi_clk3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_clk3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @clk_enable(ptr noundef %9) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.else.if.end_crit_edge, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call.i, %if.else.if.end_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %ret.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_spi_mt65xx__253_1005_mtk_spi_driver_init6, !1, !"__initcall__kmod_spi_mt65xx__253_1005_mtk_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-mt65xx.c", i32 1005, i32 1}
!2 = !{ptr @__exitcall_mtk_spi_driver_exit, !1, !"__exitcall_mtk_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description254, !4, !"__UNIQUE_ID_description254", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-mt65xx.c", i32 1007, i32 1}
!5 = !{ptr @__UNIQUE_ID_author255, !6, !"__UNIQUE_ID_author255", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-mt65xx.c", i32 1008, i32 1}
!7 = !{ptr @__UNIQUE_ID_file256, !8, !"__UNIQUE_ID_file256", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-mt65xx.c", i32 1009, i32 1}
!9 = !{ptr @__UNIQUE_ID_license257, !8, !"__UNIQUE_ID_license257", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias258, !11, !"__UNIQUE_ID_alias258", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-mt65xx.c", i32 1010, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-mt65xx.c", i32 997, i32 11}
!14 = !{ptr @mtk_spi_driver, !15, !"mtk_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-mt65xx.c", i32 995, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-mt65xx.c", i32 719, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-mt65xx.c", i32 736, i32 3}
!26 = !{ptr @mtk_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-mt65xx.c", i32 753, i32 4}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-mt65xx.c", i32 755, i32 4}
!32 = !{ptr @mtk_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-mt65xx.c", i32 773, i32 5}
!36 = !{ptr @mtk_spi_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_spi_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-mt65xx.c", i32 800, i32 3}
!40 = !{ptr @mtk_spi_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_spi_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-mt65xx.c", i32 804, i32 47}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-mt65xx.c", i32 807, i32 3}
!46 = !{ptr @mtk_spi_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtk_spi_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-mt65xx.c", i32 811, i32 44}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-mt65xx.c", i32 814, i32 3}
!52 = !{ptr @mtk_spi_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtk_spi_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-mt65xx.c", i32 818, i32 44}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-mt65xx.c", i32 821, i32 3}
!58 = !{ptr @mtk_spi_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_spi_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-mt65xx.c", i32 827, i32 3}
!62 = !{ptr @mtk_spi_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_spi_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-mt65xx.c", i32 833, i32 3}
!66 = !{ptr @mtk_spi_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_spi_probe._entry_ptr.36, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-mt65xx.c", i32 849, i32 4}
!70 = !{ptr @mtk_spi_probe._entry.37, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_spi_probe._entry_ptr.39, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-mt65xx.c", i32 857, i32 4}
!74 = !{ptr @mtk_spi_probe._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_spi_probe._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-mt65xx.c", i32 869, i32 6}
!78 = !{ptr @mtk_spi_probe._entry.43, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtk_spi_probe._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spi/spi-mt65xx.c", i32 883, i32 3}
!82 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mtk_spi_probe._entry.46, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mtk_spi_probe._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.51, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/spi/spi-mt65xx.c", i32 888, i32 3}
!87 = !{ptr @mtk_spi_probe._entry.50, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mtk_spi_probe._entry_ptr.52, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @mtk_default_chip_info, !90, !"mtk_default_chip_info", i1 false, i1 false}
!90 = !{!"../drivers/spi/spi-mt65xx.c", i32 154, i32 37}
!91 = !{ptr @mtk_spi_of_match, !92, !"mtk_spi_of_match", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-mt65xx.c", i32 159, i32 34}
!93 = !{ptr @mtk_common_compat, !94, !"mtk_common_compat", i1 false, i1 false}
!94 = !{!"../drivers/spi/spi-mt65xx.c", i32 113, i32 40}
!95 = !{ptr @mt2712_compat, !96, !"mt2712_compat", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-mt65xx.c", i32 115, i32 40}
!97 = !{ptr @mt6765_compat, !98, !"mt6765_compat", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-mt65xx.c", i32 119, i32 40}
!99 = !{ptr @mt7622_compat, !100, !"mt7622_compat", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-mt65xx.c", i32 126, i32 40}
!101 = !{ptr @mt8173_compat, !102, !"mt8173_compat", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-mt65xx.c", i32 131, i32 40}
!103 = !{ptr @mt8183_compat, !104, !"mt8183_compat", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-mt65xx.c", i32 136, i32 40}
!105 = !{ptr @mt6893_compat, !106, !"mt6893_compat", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-mt65xx.c", i32 142, i32 40}
!107 = !{ptr @mtk_spi_pm, !108, !"mtk_spi_pm", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-mt65xx.c", i32 989, i32 32}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-mt65xx.c", i32 943, i32 4}
!111 = !{ptr @mtk_spi_resume._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @mtk_spi_resume._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/spi/spi-mt65xx.c", i32 981, i32 3}
!115 = !{ptr @mtk_spi_runtime_resume._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @mtk_spi_runtime_resume._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i8 0, i8 2}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{i64 4915468}
!129 = !{i64 2154512873}
!130 = !{i64 2154513183}
!131 = !{i64 4915050}
!132 = !{i64 2154513878}
!133 = !{i64 2154514188}
!134 = !{i64 2154529543}
!135 = !{i64 2154529853}
!136 = !{i64 2154530353}
!137 = !{i64 2154525319}
!138 = !{i64 2154527273}
!139 = !{i64 2154527716}
!140 = !{i64 2154528486}
!141 = !{i64 2154528728}
!142 = !{i64 2154540029}
!143 = !{i64 2154540421}
!144 = !{i64 2154534836}
!145 = !{i64 2154535086}
!146 = !{i64 2154536796}
!147 = !{i64 2154537339}
!148 = !{i64 2154535837}
!149 = !{i64 2154536227}
!150 = !{i64 2154539254}
!151 = !{i64 2154515205}
!152 = !{i64 2154521857}
!153 = !{i64 2154524185}
!154 = !{i64 2154524420}
!155 = !{i64 2154541448}
!156 = !{i64 2154541993}
!157 = !{i64 2154543500}
!158 = !{i64 2154544329}
!159 = !{i64 2154544721}
!160 = !{i64 2154531200}
!161 = !{i64 2154531438}
!162 = !{i64 2154532133}
!163 = !{i64 2154532369}
