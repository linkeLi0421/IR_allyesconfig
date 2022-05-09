; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-slave-mt27xx.c_pt.bc'
source_filename = "../drivers/spi/spi-slave-mt27xx.c"
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
%struct.mtk_spi_compatible = type { i32, i8 }
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
%struct.mtk_spi_slave = type { ptr, ptr, ptr, %struct.completion, ptr, i8, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__initcall__kmod_spi_slave_mt27xx__237_566_mtk_spi_slave_driver_init6 = internal global ptr @mtk_spi_slave_driver_init, section ".initcall6.init", align 4
@mtk_spi_slave_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_spi_slave_probe, ptr @mtk_spi_slave_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_spi_slave_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_spi_slave_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_spi_slave_driver_exit = internal global ptr @mtk_spi_slave_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [61 x i8] c"spi_slave_mt27xx.description=MTK SPI Slave Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [59 x i8] c"spi_slave_mt27xx.author=Leilk Liu <leilk.liu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [51 x i8] c"spi_slave_mt27xx.file=drivers/spi/spi-slave-mt27xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [32 x i8] c"spi_slave_mt27xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [46 x i8] c"spi_slave_mt27xx.alias=platform:mtk-spi-slave\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk-spi-slave\00", [18 x i8] zeroinitializer }, align 32
@mtk_spi_slave_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-spi-slave\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-spi-slave\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8195_compat }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mtk_spi_slave_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_spi_slave_suspend, ptr @mtk_spi_slave_resume, ptr @mtk_spi_slave_suspend, ptr @mtk_spi_slave_resume, ptr @mtk_spi_slave_suspend, ptr @mtk_spi_slave_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_spi_slave_runtime_suspend, ptr @mtk_spi_slave_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to alloc spi slave\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_spi_slave_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/spi/spi-slave-mt27xx.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry_ptr = internal global ptr @mtk_spi_slave_probe._entry, section ".printk_index", align 4
@mtk_spi_slave_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to probe of_node\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry_ptr.8 = internal global ptr @mtk_spi_slave_probe._entry.6, section ".printk_index", align 4
@mtk_spi_slave_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register irq (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry_ptr.11 = internal global ptr @mtk_spi_slave_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get spi-clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry_ptr.15 = internal global ptr @mtk_spi_slave_probe._entry.13, section ".printk_index", align 4
@mtk_spi_slave_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable spi_clk (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry_ptr.18 = internal global ptr @mtk_spi_slave_probe._entry.16, section ".printk_index", align 4
@mtk_spi_slave_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register slave controller(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@mtk_spi_slave_probe._entry_ptr.21 = internal global ptr @mtk_spi_slave_probe._entry.19, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mtk_spi_slave_wait_for_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interrupted\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mtk_spi_slave_wait_for_completion\00", [62 x i8] zeroinitializer }, align 32
@mtk_spi_slave_wait_for_completion._entry_ptr = internal global ptr @mtk_spi_slave_wait_for_completion._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mtk_spi_slave_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 374, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cmd invalid\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_spi_slave_interrupt\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_spi_slave_interrupt._entry_ptr = internal global ptr @mtk_spi_slave_interrupt._entry, section ".printk_index", align 4
@mt2712_compat = internal constant { %struct.mtk_spi_compatible, [24 x i8] } { %struct.mtk_spi_compatible { i32 512, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mt8195_compat = internal constant { %struct.mtk_spi_compatible, [24 x i8] } { %struct.mtk_spi_compatible { i32 128, i8 1 }, [24 x i8] zeroinitializer }, align 32
@mtk_spi_slave_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.30, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_spi_slave_resume\00", [43 x i8] zeroinitializer }, align 32
@mtk_spi_slave_resume._entry_ptr = internal global ptr @mtk_spi_slave_resume._entry, section ".printk_index", align 4
@mtk_spi_slave_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.31, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_spi_slave_runtime_resume\00", [35 x i8] zeroinitializer }, align 32
@mtk_spi_slave_runtime_resume._entry_ptr = internal global ptr @mtk_spi_slave_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"mtk_spi_slave_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 556, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 558, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"mtk_spi_slave_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 89, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"mtk_spi_slave_pm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 550, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 393, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 409, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 438, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 442, i32 44 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 445, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 451, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 459, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 326, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 122, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 87, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 374, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"mt2712_compat\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 81, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"mt8195_compat\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 84, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 510, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [34 x i8] c"../drivers/spi/spi-slave-mt27xx.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 542, i32 3 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_mtk_spi_slave_driver_exit, ptr @__initcall__kmod_spi_slave_mt27xx__237_566_mtk_spi_slave_driver_init6, ptr @mtk_spi_slave_driver_exit, ptr @mtk_spi_slave_interrupt._entry, ptr @mtk_spi_slave_interrupt._entry_ptr, ptr @mtk_spi_slave_probe._entry, ptr @mtk_spi_slave_probe._entry.13, ptr @mtk_spi_slave_probe._entry.16, ptr @mtk_spi_slave_probe._entry.19, ptr @mtk_spi_slave_probe._entry.6, ptr @mtk_spi_slave_probe._entry.9, ptr @mtk_spi_slave_probe._entry_ptr, ptr @mtk_spi_slave_probe._entry_ptr.11, ptr @mtk_spi_slave_probe._entry_ptr.15, ptr @mtk_spi_slave_probe._entry_ptr.18, ptr @mtk_spi_slave_probe._entry_ptr.21, ptr @mtk_spi_slave_probe._entry_ptr.8, ptr @mtk_spi_slave_resume._entry, ptr @mtk_spi_slave_resume._entry_ptr, ptr @mtk_spi_slave_runtime_resume._entry, ptr @mtk_spi_slave_runtime_resume._entry_ptr, ptr @mtk_spi_slave_wait_for_completion._entry, ptr @mtk_spi_slave_wait_for_completion._entry_ptr, ptr @mtk_spi_slave_driver, ptr @.str, ptr @mtk_spi_slave_of_match, ptr @mtk_spi_slave_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mt2712_compat, ptr @mt8195_compat, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_wait_for_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_compat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_compat to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spi_slave_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_spi_slave_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_spi_slave_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_spi_slave_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 80, i1 noundef zeroext true) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
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
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %5 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mtk_spi_slave_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %6 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mtk_spi_slave_transfer_one, ptr %transfer_one, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mtk_spi_slave_setup, ptr %setup, align 4
  %slave_abort = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 49
  %8 = ptrtoint ptr %slave_abort to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mtk_slave_abort, ptr %slave_abort, align 4
  %9 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_match_node(ptr noundef nonnull @mtk_spi_slave_of_match, ptr noundef %9) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %spi_controller_put.exit

if.end15:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call8, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %dev_comp = getelementptr inbounds %struct.mtk_spi_slave, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %dev_comp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dev_comp, align 4
  %must_rx = getelementptr inbounds %struct.mtk_spi_compatible, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %must_rx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %must_rx, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not = icmp eq i8 %16, 0
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 8, ptr %flags, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %driver_data.i.i136 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i136 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i136, align 4
  %xfer_done = getelementptr inbounds %struct.mtk_spi_slave, ptr %11, i32 0, i32 3
  %19 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.mtk_spi_slave, ptr %11, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #6
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %11, align 4
  %call23 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.mtk_spi_slave, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call23, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call23 to i32
  br label %spi_controller_put.exit

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %if.end29.spi_controller_put.exit_crit_edge, label %if.end32

if.end29.spi_controller_put.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end32:                                         ; preds = %if.end29
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end32.dev_name.exit_crit_edge ]
  %call.i137 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call30, ptr noundef nonnull @mtk_spi_slave_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool37.not = icmp eq i32 %call.i137, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i137) #9
  br label %spi_controller_put.exit

if.end43:                                         ; preds = %dev_name.exit
  %call45 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #6
  %spi_clk = getelementptr inbounds %struct.mtk_spi_slave, ptr %11, i32 0, i32 2
  %27 = ptrtoint ptr %spi_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call45, ptr %spi_clk, align 4
  %cmp.i138 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call45 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %28) #9
  br label %spi_controller_put.exit

if.end55:                                         ; preds = %if.end43
  %call.i139 = tail call i32 @clk_prepare(ptr noundef %call45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i140 = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i140, label %if.end.i141, label %if.end55.clk_prepare_enable.exit_crit_edge

if.end55.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i141:                                      ; preds = %if.end55
  %call1.i = tail call i32 @clk_enable(ptr noundef %call45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i141.if.end64_crit_edge, label %if.then3.i

if.end.i141.if.end64_crit_edge:                   ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then3.i:                                       ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call45) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end55.clk_prepare_enable.exit_crit_edge
  %retval.0.i142 = phi i32 [ %call.i139, %if.end55.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i142)
  %cmp58 = icmp slt i32 %retval.0.i142, 0
  br i1 %cmp58, label %do.end62, label %clk_prepare_enable.exit.if.end64_crit_edge

clk_prepare_enable.exit.if.end64_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end62:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i142) #9
  br label %spi_controller_put.exit

if.end64:                                         ; preds = %clk_prepare_enable.exit.if.end64_crit_edge, %if.end.i141.if.end64_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call67 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end75, label %do.end72

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call67) #9
  %29 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %30) #6
  tail call void @clk_unprepare(ptr noundef %30) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %spi_controller_put.exit

if.end75:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  br label %cleanup

spi_controller_put.exit:                          ; preds = %do.end72, %do.end62, %if.then48, %do.end41, %if.end29.spi_controller_put.exit_crit_edge, %if.then26, %do.end13
  %ret.0 = phi i32 [ %22, %if.then26 ], [ %call.i137, %do.end41 ], [ %28, %if.then48 ], [ %retval.0.i142, %do.end62 ], [ %call67, %do.end72 ], [ -22, %do.end13 ], [ %call30, %if.end29.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end75, %do.end
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ 0, %if.end75 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_prepare_message(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %base = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 8
  %and20 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %masksel = select i1 %tobool21.not, i32 48, i32 0
  %11 = and i32 %8, 67108863
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %trunc = trunc i32 %5 to i4
  %rev = call i4 @llvm.bitreverse.i4(i4 %trunc)
  %mask = and i4 %rev, -4
  %and17.masked.masked = zext i4 %mask to i32
  %and23.masked = or i32 %12, %and17.masked.masked
  %and28 = or i32 %and23.masked, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and28)
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %13) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_transfer_one(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi, ptr noundef %xfer) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xfer_done = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %xfer_done, align 4
  %slave_aborted = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %slave_aborted, align 4
  %cur_transfer = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %xfer, ptr %cur_transfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %dev_comp = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_comp, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %10)
  %cmp = icmp ugt i32 %6, %10
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %base.i = getelementptr inbounds %struct.mtk_spi_slave, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !93
  %17 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xfer, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then.if.end8.i_crit_edge, label %if.then.i

if.then.if.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i:                                        ; preds = %if.then
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %18) #6
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !95

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %14) #6
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i.i ], [ %22, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %tx_dma29.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %25 = ptrtoint ptr %tx_dma29.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %tx_dma29.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #6
  br label %disable_transfer.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then.i
  tail call void @debug_dma_map_single(ptr noundef %14, ptr noundef nonnull %18, i32 noundef %20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %18 to i32
  %sub.i.i = add i32 %27, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %26, i32 %shr.i.i
  %and.i.i = and i32 %27, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %20, i32 noundef 1, i32 noundef 0) #6
  %tx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %28 = ptrtoint ptr %tx_dma.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call41.i.i, ptr %tx_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef %call41.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.disable_transfer.i_crit_edge, label %dma_map_single_attrs.exit.i.if.end8.i_crit_edge

dma_map_single_attrs.exit.i.if.end8.i_crit_edge:  ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

dma_map_single_attrs.exit.i.disable_transfer.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_transfer.i

if.end8.i:                                        ; preds = %dma_map_single_attrs.exit.i.if.end8.i_crit_edge, %if.then.if.end8.i_crit_edge
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %29 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_buf.i, align 4
  %tobool9.not.i = icmp eq ptr %30, null
  br i1 %tobool9.not.i, label %if.end8.i.do.body20.i_crit_edge, label %if.then10.i

if.end8.i.do.body20.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20.i

if.then10.i:                                      ; preds = %if.end8.i
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %call.i2.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %30) #6
  br i1 %call.i2.i, label %land.rhs.i4.i, label %dma_map_single_attrs.exit19.i

land.rhs.i4.i:                                    ; preds = %if.then10.i
  %.b1.i3.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i3.i, label %land.rhs.i4.i.dma_map_single_attrs.exit19.thread.i_crit_edge, label %if.then.i8.i, !prof !95

land.rhs.i4.i.dma_map_single_attrs.exit19.thread.i_crit_edge: ; preds = %land.rhs.i4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit19.thread.i

if.then.i8.i:                                     ; preds = %land.rhs.i4.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i5.i = tail call ptr @dev_driver_string(ptr noundef %14) #6
  %init_name.i.i6.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i6.i, align 8
  %tobool.not.i.i7.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i7.i, label %if.end.i.i9.i, label %if.then.i8.i.dev_name.exit.i11.i_crit_edge

if.then.i8.i.dev_name.exit.i11.i_crit_edge:       ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i11.i

if.end.i.i9.i:                                    ; preds = %if.then.i8.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %14, align 4
  br label %dev_name.exit.i11.i

dev_name.exit.i11.i:                              ; preds = %if.end.i.i9.i, %if.then.i8.i.dev_name.exit.i11.i_crit_edge
  %retval.0.i.i10.i = phi ptr [ %36, %if.end.i.i9.i ], [ %34, %if.then.i8.i.dev_name.exit.i11.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i5.i, ptr noundef %retval.0.i.i10.i) #6
  br label %dma_map_single_attrs.exit19.thread.i

dma_map_single_attrs.exit19.thread.i:             ; preds = %dev_name.exit.i11.i, %land.rhs.i4.i.dma_map_single_attrs.exit19.thread.i_crit_edge
  %rx_dma34.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %37 = ptrtoint ptr %rx_dma34.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %rx_dma34.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef -1) #6
  br label %unmap_txdma.i

dma_map_single_attrs.exit19.i:                    ; preds = %if.then10.i
  tail call void @debug_dma_map_single(ptr noundef %14, ptr noundef nonnull %30, i32 noundef %32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %38 = load ptr, ptr @mem_map, align 4
  %39 = ptrtoint ptr %30 to i32
  %sub.i12.i = add i32 %39, 1073741824
  %shr.i13.i = lshr i32 %sub.i12.i, 12
  %add.ptr.i14.i = getelementptr %struct.page, ptr %38, i32 %shr.i13.i
  %and.i15.i = and i32 %39, 4095
  %call41.i16.i = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %add.ptr.i14.i, i32 noundef %and.i15.i, i32 noundef %32, i32 noundef 2, i32 noundef 0) #6
  %rx_dma.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %40 = ptrtoint ptr %rx_dma.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call41.i16.i, ptr %rx_dma.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %14, i32 noundef %call41.i16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i16.i)
  %cmp.i20.i = icmp eq i32 %call41.i16.i, -1
  br i1 %cmp.i20.i, label %dma_map_single_attrs.exit19.i.unmap_txdma.i_crit_edge, label %dma_map_single_attrs.exit19.i.do.body20.i_crit_edge

dma_map_single_attrs.exit19.i.do.body20.i_crit_edge: ; preds = %dma_map_single_attrs.exit19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20.i

dma_map_single_attrs.exit19.i.unmap_txdma.i_crit_edge: ; preds = %dma_map_single_attrs.exit19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_txdma.i

do.body20.i:                                      ; preds = %dma_map_single_attrs.exit19.i.do.body20.i_crit_edge, %if.end8.i.do.body20.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %tx_dma23.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %41 = ptrtoint ptr %tx_dma23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_dma23.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %45, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %43) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %rx_dma29.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 4
  %46 = ptrtoint ptr %rx_dma29.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_dma29.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %50, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %48) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %52, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 33554432) #6, !srcloc !93
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %54, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #6, !srcloc !90
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %57 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %xfer, align 4
  %tobool42.not.i = icmp eq ptr %58, null
  %or.i = or i32 %56, 2
  %spec.select.i = select i1 %tobool42.not.i, i32 %56, i32 %or.i
  %59 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_buf.i, align 4
  %tobool46.not.i = icmp ne ptr %60, null
  %or48.i = zext i1 %tobool46.not.i to i32
  %reg_val.1.i = or i32 %spec.select.i, %or48.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %reg_val.1.i) #6
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr54.i = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %61) #6, !srcloc !93
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len, align 4
  %sub.i = add i32 %65, 1048575
  %and.i = and i32 %sub.i, 1048575
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %66 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %68, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %66) #6, !srcloc !93
  %69 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %70, i32 48
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i) #6, !srcloc !90
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %73 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xfer, align 4
  %tobool70.not.i = icmp eq ptr %74, null
  %or72.i = or i32 %72, 1073741824
  %reg_val.2.i = select i1 %tobool70.not.i, i32 %72, i32 %or72.i
  %75 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_buf.i, align 4
  %tobool75.not.i = icmp eq ptr %76, null
  %or77.i = or i32 %reg_val.2.i, 536870912
  %reg_val.3.i = select i1 %tobool75.not.i, i32 %reg_val.2.i, i32 %or77.i
  %or79.i = or i32 %reg_val.3.i, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %77 = tail call i32 @llvm.bswap.i32(i32 %or79.i) #6
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %79, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i, i32 %77) #6, !srcloc !93
  %xfer_done.i.i = getelementptr inbounds %struct.mtk_spi_slave, ptr %12, i32 0, i32 3
  %call.i22.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %xfer_done.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %do.body20.i.unmap_rxdma.i_crit_edge

do.body20.i.unmap_rxdma.i_crit_edge:              ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_rxdma.i

lor.lhs.false.i.i:                                ; preds = %do.body20.i
  %slave_aborted.i.i = getelementptr inbounds %struct.mtk_spi_slave, ptr %12, i32 0, i32 5
  %80 = ptrtoint ptr %slave_aborted.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %slave_aborted.i.i, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool1.not.i.i = icmp eq i8 %81, 0
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.unmap_rxdma.i_crit_edge

lor.lhs.false.i.i.unmap_rxdma.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_rxdma.i

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unmap_rxdma.i:                                    ; preds = %lor.lhs.false.i.i.unmap_rxdma.i_crit_edge, %do.body20.i.unmap_rxdma.i_crit_edge
  %82 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.24) #9
  %84 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_buf.i, align 4
  %tobool90.not.i = icmp eq ptr %85, null
  br i1 %tobool90.not.i, label %unmap_rxdma.i.unmap_txdma.i_crit_edge, label %if.then91.i

unmap_rxdma.i.unmap_txdma.i_crit_edge:            ; preds = %unmap_rxdma.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap_txdma.i

if.then91.i:                                      ; preds = %unmap_rxdma.i
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %rx_dma29.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_dma29.i, align 4
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %87, i32 noundef %89, i32 noundef 2, i32 noundef 0) #6
  br label %unmap_txdma.i

unmap_txdma.i:                                    ; preds = %if.then91.i, %unmap_rxdma.i.unmap_txdma.i_crit_edge, %dma_map_single_attrs.exit19.i.unmap_txdma.i_crit_edge, %dma_map_single_attrs.exit19.thread.i
  %ret.1.i = phi i32 [ -4, %if.then91.i ], [ -4, %unmap_rxdma.i.unmap_txdma.i_crit_edge ], [ -12, %dma_map_single_attrs.exit19.i.unmap_txdma.i_crit_edge ], [ -12, %dma_map_single_attrs.exit19.thread.i ]
  %90 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xfer, align 4
  %tobool96.not.i = icmp eq ptr %91, null
  br i1 %tobool96.not.i, label %unmap_txdma.i.disable_transfer.i_crit_edge, label %if.then97.i

unmap_txdma.i.disable_transfer.i_crit_edge:       ; preds = %unmap_txdma.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_transfer.i

if.then97.i:                                      ; preds = %unmap_txdma.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_dma98.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 3
  %92 = ptrtoint ptr %tx_dma98.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx_dma98.i, align 4
  %94 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %14, i32 noundef %93, i32 noundef %95, i32 noundef 1, i32 noundef 0) #6
  br label %disable_transfer.i

disable_transfer.i:                               ; preds = %if.then97.i, %unmap_txdma.i.disable_transfer.i_crit_edge, %dma_map_single_attrs.exit.i.disable_transfer.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %ret.2.i = phi i32 [ %ret.1.i, %if.then97.i ], [ %ret.1.i, %unmap_txdma.i.disable_transfer.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.i.disable_transfer.i_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread.i ]
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %97, i32 48
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %99 = and i32 %98, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %101, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %99) #6, !srcloc !93
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %103, i32 16
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %105 = and i32 %104, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr4.i27.i = getelementptr i8, ptr %107, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i27.i, i32 %105) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %108 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %109, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 16777216) #6, !srcloc !93
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %base.i13 = getelementptr inbounds %struct.mtk_spi_slave, ptr %12, i32 0, i32 1
  %110 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %111, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #6, !srcloc !93
  %112 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i13, align 4
  %add.ptr2.i = getelementptr i8, ptr %113, i32 16
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !90
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %116 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %reg_val.i, align 4
  %rx_buf.i15 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %117 = ptrtoint ptr %rx_buf.i15 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %rx_buf.i15, align 4
  %tobool.not.i16 = icmp eq ptr %118, null
  br i1 %tobool.not.i16, label %if.else.if.end.i_crit_edge, label %if.then.i18

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i18:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or.i17 = or i32 %115, 1
  %119 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or.i17, ptr %reg_val.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i18, %if.else.if.end.i_crit_edge
  %120 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %xfer, align 4
  %tobool5.not.i = icmp eq ptr %121, null
  br i1 %tobool5.not.i, label %if.end.i.do.body9.i_crit_edge, label %if.then6.i

if.end.i.do.body9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0.45.i = load i32, ptr %reg_val.i, align 4
  %or7.i = or i32 %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0.45.i, 2
  store i32 %or7.i, ptr %reg_val.i, align 4
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then6.i, %if.end.i.do.body9.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %123 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0.46.i = load i32, ptr %reg_val.i, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0.46.i) #6
  %125 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i13, align 4
  %add.ptr13.i = getelementptr i8, ptr %126, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %124) #6, !srcloc !93
  %127 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len, align 4
  %129 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %xfer, align 4
  %tobool15.not.i = icmp eq ptr %130, null
  br i1 %tobool15.not.i, label %do.body9.i.if.end20.i_crit_edge, label %if.then16.i

do.body9.i.if.end20.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then16.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = lshr i32 %128, 2
  %131 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i13, align 4
  %add.ptr18.i = getelementptr i8, ptr %132, i32 24
  tail call void @__raw_writesl(ptr noundef %add.ptr18.i, ptr noundef nonnull %130, i32 noundef %div1.i) #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then16.i, %do.body9.i.if.end20.i_crit_edge
  %133 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %len, align 4
  %rem.i = and i32 %134, 3
  %135 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %xfer, align 4
  %tobool23.not.i = icmp eq ptr %136, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end20.i.if.end32.i_crit_edge, label %if.then24.i

if.end20.i.if.end32.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %reg_val.i, align 4
  %mul.i = and i32 %128, -4
  %add.ptr26.i = getelementptr i8, ptr %136, i32 %mul.i
  %138 = call ptr @memcpy(ptr %reg_val.i, ptr %add.ptr26.i, i32 %rem.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %139 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0.47.i = load i32, ptr %reg_val.i, align 4
  %140 = tail call i32 @llvm.bswap.i32(i32 %reg_val.i.0.reg_val.i.0.reg_val.0.reg_val.0.reg_val.0.47.i) #6
  %141 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i13, align 4
  %add.ptr31.i20 = getelementptr i8, ptr %142, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i20, i32 %140) #6, !srcloc !93
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then24.i, %if.end20.i.if.end32.i_crit_edge
  %xfer_done.i.i21 = getelementptr inbounds %struct.mtk_spi_slave, ptr %12, i32 0, i32 3
  %call.i.i22 = tail call i32 @wait_for_completion_interruptible(ptr noundef %xfer_done.i.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i.i23, label %lor.lhs.false.i.i26, label %if.end32.i.if.then35.i_crit_edge

if.end32.i.if.then35.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i

lor.lhs.false.i.i26:                              ; preds = %if.end32.i
  %slave_aborted.i.i24 = getelementptr inbounds %struct.mtk_spi_slave, ptr %12, i32 0, i32 5
  %143 = ptrtoint ptr %slave_aborted.i.i24 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %slave_aborted.i.i24, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool1.not.i.i25 = icmp eq i8 %144, 0
  br i1 %tobool1.not.i.i25, label %lor.lhs.false.i.i26.mtk_spi_slave_fifo_transfer.exit_crit_edge, label %lor.lhs.false.i.i26.if.then35.i_crit_edge

lor.lhs.false.i.i26.if.then35.i_crit_edge:        ; preds = %lor.lhs.false.i.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then35.i

lor.lhs.false.i.i26.mtk_spi_slave_fifo_transfer.exit_crit_edge: ; preds = %lor.lhs.false.i.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %mtk_spi_slave_fifo_transfer.exit

if.then35.i:                                      ; preds = %lor.lhs.false.i.i26.if.then35.i_crit_edge, %if.end32.i.if.then35.i_crit_edge
  %145 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.24) #9
  %147 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i13, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %148, i32 16
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %150 = and i32 %149, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i13, align 4
  %add.ptr4.i.i28 = getelementptr i8, ptr %152, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i28, i32 %150) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %153 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i13, align 4
  %add.ptr40.i = getelementptr i8, ptr %154, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 16777216) #6, !srcloc !93
  br label %mtk_spi_slave_fifo_transfer.exit

mtk_spi_slave_fifo_transfer.exit:                 ; preds = %if.then35.i, %lor.lhs.false.i.i26.mtk_spi_slave_fifo_transfer.exit_crit_edge
  %retval.0.i4.i = phi i32 [ -4, %if.then35.i ], [ 0, %lor.lhs.false.i.i26.mtk_spi_slave_fifo_transfer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i)
  br label %cleanup

cleanup:                                          ; preds = %mtk_spi_slave_fifo_transfer.exit, %disable_transfer.i, %lor.lhs.false.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i4.i, %mtk_spi_slave_fifo_transfer.exit ], [ %ret.2.i, %disable_transfer.i ], [ 0, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.mtk_spi_slave, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -2030043136) #6, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -2030043136) #6, !srcloc !93
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 48
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %11 = and i32 %10, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #6, !srcloc !93
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr.i11 = getelementptr i8, ptr %15, i32 16
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %17 = and i32 %16, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr4.i12 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i12, i32 %17) #6, !srcloc !93
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_slave_abort(ptr nocapture noundef readonly %ctlr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slave_aborted = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %slave_aborted to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %slave_aborted, align 4
  %xfer_done = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %xfer_done) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cur_transfer = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_transfer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val)
  %base = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !90
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #6, !srcloc !93
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %10 = and i32 %7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %land.lhs.true27, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  br i1 %11, label %land.lhs.true.if.end57_crit_edge, label %do.body11

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

do.body11:                                        ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16777216) #6, !srcloc !93
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %do.body11.if.end18_crit_edge, label %if.then17

do.body11.if.end18_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tx_dma = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %tx_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_dma, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef 1, i32 noundef 0) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body11.if.end18_crit_edge
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf, align 4
  %tobool19.not = icmp eq ptr %23, null
  br i1 %tobool19.not, label %if.end57.critedge111, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %rx_dma = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %rx_dma to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_dma, align 4
  %len22 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %len22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len22, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef 2, i32 noundef 0) #6
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 48
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %33 = and i32 %32, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %35, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %33) #6, !srcloc !93
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.i113 = getelementptr i8, ptr %37, i32 16
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %39 = and i32 %38, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr4.i114 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i114, i32 %39) #6, !srcloc !93
  br label %if.end57

land.lhs.true27:                                  ; preds = %if.end
  br i1 %11, label %land.lhs.true27.if.end57_crit_edge, label %if.then33

land.lhs.true27.if.end57_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then33:                                        ; preds = %land.lhs.true27
  %len34 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len34, align 4
  %rx_buf35 = getelementptr inbounds %struct.spi_transfer, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %rx_buf35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_buf35, align 4
  %tobool36.not = icmp eq ptr %45, null
  br i1 %tobool36.not, label %if.then33.if.end41_crit_edge, label %if.then37

if.then33.if.end41_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %div108 = lshr i32 %43, 2
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %47, i32 20
  tail call void @__raw_readsl(ptr noundef %add.ptr39, ptr noundef nonnull %45, i32 noundef %div108) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.then33.if.end41_crit_edge
  %48 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len34, align 4
  %rem = and i32 %49, 3
  %50 = ptrtoint ptr %rx_buf35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_buf35, align 4
  %tobool44.not = icmp eq ptr %51, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  %or.cond110 = select i1 %tobool44.not, i1 true, i1 %cmp.not
  br i1 %or.cond110, label %if.end41.if.end56_crit_edge, label %if.then46

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %53, i32 20
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #6, !srcloc !90
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %56 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %reg_val, align 4
  %57 = ptrtoint ptr %rx_buf35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_buf35, align 4
  %mul = and i32 %43, -4
  %add.ptr55 = getelementptr i8, ptr %58, i32 %mul
  %59 = call ptr @memcpy(ptr %add.ptr55, ptr %reg_val, i32 %rem)
  br label %if.end56

if.end56:                                         ; preds = %if.then46, %if.end41.if.end56_crit_edge
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr.i116 = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %63 = and i32 %62, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr4.i117 = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i117, i32 %63) #6, !srcloc !93
  br label %if.end57

if.end57.critedge111:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr.i119 = getelementptr i8, ptr %67, i32 48
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %69 = and i32 %68, -97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr4.i120 = getelementptr i8, ptr %71, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i120, i32 %69) #6, !srcloc !93
  %72 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base, align 4
  %add.ptr.i122 = getelementptr i8, ptr %73, i32 16
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #6, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %75 = and i32 %74, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  %add.ptr4.i123 = getelementptr i8, ptr %77, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i123, i32 %75) #6, !srcloc !93
  br label %if.end57

if.end57:                                         ; preds = %if.end57.critedge111, %if.end56, %land.lhs.true27.if.end57_crit_edge, %if.then20, %land.lhs.true.if.end57_crit_edge
  %and58 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev_id, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %cur_transfer to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %cur_transfer, align 4
  %xfer_done = getelementptr inbounds %struct.mtk_spi_slave, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %xfer_done) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end63, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end63 ], [ 1, %if.end65 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

pm_runtime_suspended.exit.cleanup_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %pm_runtime_suspended.exit.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %spi_clk = getelementptr inbounds %struct.mtk_spi_slave, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %8) #6
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %pm_runtime_suspended.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

pm_runtime_suspended.exit.if.end5_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %spi_clk = getelementptr inbounds %struct.mtk_spi_slave, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i21 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i21, label %if.end.i, label %if.then.clk_prepare_enable.exit_crit_edge

if.then.clk_prepare_enable.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5_crit_edge, label %if.then3.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %8) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end5_crit_edge

clk_prepare_enable.exit.if.end5_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i) #9
  br label %cleanup

if.end5:                                          ; preds = %clk_prepare_enable.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %pm_runtime_suspended.exit.if.end5_crit_edge
  %call6 = tail call i32 @spi_controller_resume(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %spi_clk9 = getelementptr inbounds %struct.mtk_spi_slave, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %spi_clk9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi_clk9, align 4
  tail call void @clk_disable(ptr noundef %10) #6
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spi_clk = getelementptr inbounds %struct.mtk_spi_slave, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spi_slave_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spi_clk = getelementptr inbounds %struct.mtk_spi_slave, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.cleanup_crit_edge

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ 0, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !64, !66, !68, !70, !72, !74, !75, !76, !78, !79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_spi_slave_mt27xx__237_566_mtk_spi_slave_driver_init6, !1, !"__initcall__kmod_spi_slave_mt27xx__237_566_mtk_spi_slave_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 566, i32 1}
!2 = !{ptr @__exitcall_mtk_spi_slave_driver_exit, !1, !"__exitcall_mtk_spi_slave_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 568, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 569, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 570, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 571, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 558, i32 11}
!14 = !{ptr @mtk_spi_slave_driver, !15, !"mtk_spi_slave_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 556, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 393, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_spi_slave_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_spi_slave_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 409, i32 3}
!26 = !{ptr @mtk_spi_slave_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_spi_slave_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 438, i32 3}
!30 = !{ptr @mtk_spi_slave_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_spi_slave_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 442, i32 44}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 445, i32 3}
!36 = !{ptr @mtk_spi_slave_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_spi_slave_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 451, i32 3}
!40 = !{ptr @mtk_spi_slave_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_spi_slave_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 459, i32 3}
!44 = !{ptr @mtk_spi_slave_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mtk_spi_slave_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 122, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mtk_spi_slave_wait_for_completion._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_spi_slave_wait_for_completion._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @init_completion.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../include/linux/completion.h", i32 87, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 374, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mtk_spi_slave_interrupt._entry, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_spi_slave_interrupt._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mtk_spi_slave_of_match, !65, !"mtk_spi_slave_of_match", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 89, i32 34}
!66 = !{ptr @mt2712_compat, !67, !"mt2712_compat", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 81, i32 40}
!68 = !{ptr @mt8195_compat, !69, !"mt8195_compat", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 84, i32 40}
!70 = !{ptr @mtk_spi_slave_pm, !71, !"mtk_spi_slave_pm", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 550, i32 32}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 510, i32 4}
!74 = !{ptr @mtk_spi_slave_resume._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mtk_spi_slave_resume._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-slave-mt27xx.c", i32 542, i32 3}
!78 = !{ptr @mtk_spi_slave_runtime_resume._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mtk_spi_slave_runtime_resume._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{i64 6260761}
!91 = !{i64 2154374705}
!92 = !{i64 2154375823}
!93 = !{i64 6260343}
!94 = !{i64 2154378987}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{i64 2154379625}
!97 = !{i64 2154380057}
!98 = !{i64 2154380586}
!99 = !{i64 2154381329}
!100 = !{i64 2154381717}
!101 = !{i64 2154382137}
!102 = !{i64 2154382820}
!103 = !{i64 2154383296}
!104 = !{i64 2154370910}
!105 = !{i64 2154371302}
!106 = !{i64 2154371985}
!107 = !{i64 2154372373}
!108 = !{i64 2154383970}
!109 = !{i64 2154376337}
!110 = !{i64 2154377080}
!111 = !{i64 2154377468}
!112 = !{i64 2154377899}
!113 = !{i64 2154378413}
!114 = !{i64 2154384768}
!115 = !{i64 2154385505}
!116 = !{i64 2154386182}
!117 = !{i64 2154386407}
!118 = !{i64 2154387175}
!119 = !{i64 2154388360}
