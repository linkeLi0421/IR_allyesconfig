; ModuleID = '/llk/IR_all_yes/drivers/usb/cdns3/cdns3-plat.c_pt.bc'
source_filename = "../drivers/usb/cdns3/cdns3-plat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.cdns = type { ptr, ptr, [2 x %struct.resource], ptr, %struct.resource, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, [3 x ptr], i32, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i8, i8, ptr, %struct.spinlock, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cdns3_platform_data = type { ptr, i32 }

@__initcall__kmod_cdns3__296_333_cdns3_driver_init6 = internal global ptr @cdns3_driver_init, section ".initcall6.init", align 4
@cdns3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns3_plat_probe, ptr @cdns3_plat_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_cdns3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns3_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns3_driver_exit = internal global ptr @cdns3_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias297 = internal constant [27 x i8] c"cdns3.alias=platform:cdns3\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [49 x i8] c"cdns3.author=Pawel Laszczak <pawell@cadence.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [35 x i8] c"cdns3.file=drivers/usb/cdns3/cdns3\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"cdns3.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [53 x i8] c"cdns3.description=Cadence USB3 DRD Controller Driver\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdns-usb3\00", [22 x i8] zeroinitializer }, align 32
@of_cdns3_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,usb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdns3_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns3_plat_suspend, ptr @cdns3_plat_resume, ptr @cdns3_plat_suspend, ptr @cdns3_plat_resume, ptr @cdns3_plat_suspend, ptr @cdns3_plat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns3_plat_runtime_suspend, ptr @cdns3_plat_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xhci\00", [27 x i8] zeroinitializer }, align 32
@cdns3_plat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 80, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't get xhci resource\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdns3_plat_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/usb/cdns3/cdns3-plat.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns3_plat_probe._entry_ptr = internal global ptr @cdns3_plat_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"otg\00", [28 x i8] zeroinitializer }, align 32
@cdns3_plat_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 102, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't get otg resource\0A\00", [37 x i8] zeroinitializer }, align 32
@cdns3_plat_probe._entry_ptr.13 = internal global ptr @cdns3_plat_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns,phyrst-a-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@cdns3_plat_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.4, ptr @.str.5, ptr @.str.17, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdns3\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't get wakeup irq\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns3,usb2-phy\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns3,usb3-phy\00", [17 x i8] zeroinitializer }, align 32
@cdns3_controller_suspend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns3_controller_suspend\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s ends\0A\00", [23 x i8] zeroinitializer }, align 32
@cdns3_controller_resume.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.22, ptr @.str.5, ptr @.str.21, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns3_controller_resume\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"cdns3_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 323, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 327, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"of_cdns3_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 316, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"cdns3_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 309, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 69, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 78, i32 59 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 80, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 86, i32 48 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 91, i32 53 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 96, i32 48 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 102, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 106, i32 57 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 110, i32 60 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 117, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 121, i32 46 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 129, i32 46 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 228, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [34 x i8] c"../drivers/usb/cdns3/cdns3-plat.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 268, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_cdns3_driver_exit, ptr @__initcall__kmod_cdns3__296_333_cdns3_driver_init6, ptr @cdns3_driver_exit, ptr @cdns3_plat_probe._entry, ptr @cdns3_plat_probe._entry.11, ptr @cdns3_plat_probe._entry_ptr, ptr @cdns3_plat_probe._entry_ptr.13, ptr @cdns3_driver, ptr @.str, ptr @of_cdns3_match, ptr @cdns3_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_cdns3_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_plat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns3_plat_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns3_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns3_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns3_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_plat_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 340, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %pdata = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 26
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pdata, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %xhci_res = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %xhci_res to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call4, ptr %xhci_res, align 4
  %end = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %end, align 4
  %call.i194 = tail call ptr @irq_get_irq_data(i32 noundef %call4) #5
  %tobool.not.i = icmp eq ptr %call.i194, null
  br i1 %tobool.not.i, label %if.end6.irq_get_trigger_type.exit_crit_edge, label %cond.true.i

if.end6.irq_get_trigger_type.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_get_trigger_type.exit

cond.true.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i194, i32 0, i32 3
  %7 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i.i = and i32 %10, 15
  %phi.bo = or i32 %and.i.i, 1024
  br label %irq_get_trigger_type.exit

irq_get_trigger_type.exit:                        ; preds = %cond.true.i, %if.end6.irq_get_trigger_type.exit_crit_edge
  %cond.i = phi i32 [ %phi.bo, %cond.true.i ], [ 1024, %if.end6.irq_get_trigger_type.exit_crit_edge ]
  %flags = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %flags, align 4
  %name = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.1, ptr %name, align 4
  %call14 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #5
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end, label %if.end17

do.end:                                           ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end17:                                         ; preds = %irq_get_trigger_type.exit
  %arrayidx19 = getelementptr %struct.cdns, ptr %call.i, i32 0, i32 2, i32 1
  %13 = call ptr @memcpy(ptr %arrayidx19, ptr %call14, i32 32)
  %call20 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.8) #5
  %dev_irq = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %dev_irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call20, ptr %dev_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp22 = icmp slt i32 %call20, 0
  br i1 %cmp22, label %if.end17.cleanup_crit_edge, label %if.end25

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.9) #5
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %dev_regs = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %dev_regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %dev_regs, align 4
  %call31 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.10) #5
  %otg_irq = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %otg_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call31, ptr %otg_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %if.end36

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %call37 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #5
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end43

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  %call.i195 = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.14) #5
  %phyrst_a_enable = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 11
  %frombool = zext i1 %call.i195 to i8
  %18 = ptrtoint ptr %phyrst_a_enable to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %phyrst_a_enable, align 4
  %otg_res = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %otg_res, ptr %call37, i32 32)
  %call45 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %pdev, ptr noundef nonnull @.str.15) #5
  %wakeup_irq = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 14
  %20 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call45, ptr %wakeup_irq, align 4
  %21 = zext i32 %call45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call45, label %if.end54 [
    i32 -517, label %if.end43.cleanup_crit_edge
    i32 0, label %if.then52
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp56 = icmp slt i32 %call45, 0
  br i1 %cmp56, label %do.body58, label %if.end54.if.end69_crit_edge

if.end54.if.end69_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body58:                                        ; preds = %if.end54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_plat_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_plat_probe, %if.then64)) #5
          to label %do.end67 [label %if.then64], !srcloc !70

if.then64:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_plat_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev1, ptr noundef nonnull @.str.17) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body58
  %22 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %wakeup_irq, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %if.end54.if.end69_crit_edge
  %call70 = tail call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.18) #5
  %usb2_phy = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 19
  %23 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call70, ptr %usb2_phy, align 4
  %cmp.i196 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i196, label %if.then73, label %if.end76

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call70 to i32
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %call78 = tail call i32 @phy_init(ptr noundef %call70) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %if.end76
  %call82 = tail call ptr @devm_phy_optional_get(ptr noundef %dev1, ptr noundef nonnull @.str.19) #5
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call82, ptr %usb3_phy, align 4
  %cmp.i197 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call82 to i32
  br label %cleanup

if.end88:                                         ; preds = %if.end81
  %call90 = tail call i32 @phy_init(ptr noundef %call82) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.err_phy3_init_crit_edge

if.end88.err_phy3_init_crit_edge:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_phy3_init

if.end93:                                         ; preds = %if.end88
  %call94 = tail call fastcc i32 @set_phy_power_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.err_phy_power_on_crit_edge

if.end93.err_phy_power_on_crit_edge:              ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_phy_power_on

if.end97:                                         ; preds = %if.end93
  %gadget_init = getelementptr inbounds %struct.cdns, ptr %call.i, i32 0, i32 29
  %27 = ptrtoint ptr %gadget_init to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @cdns3_gadget_init, ptr %gadget_init, align 4
  %call98 = tail call i32 @cdns_init(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %err_cdns_init

if.end101:                                        ; preds = %if.end97
  tail call void @device_set_wakeup_capable(ptr noundef %dev1, i1 noundef zeroext true) #5
  %call.i198 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %28 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata, align 4
  %tobool104.not = icmp eq ptr %29, null
  br i1 %tobool104.not, label %if.end101.if.then107_crit_edge, label %land.lhs.true

if.end101.if.then107_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then107

land.lhs.true:                                    ; preds = %if.end101
  %quirks = getelementptr inbounds %struct.cdns3_platform_data, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quirks, align 4
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool106.not = icmp eq i32 %and, 0
  br i1 %tobool106.not, label %land.lhs.true.if.then107_crit_edge, label %land.lhs.true.if.end108_crit_edge

land.lhs.true.if.end108_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

land.lhs.true.if.then107_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then107

if.then107:                                       ; preds = %land.lhs.true.if.then107_crit_edge, %if.end101.if.then107_crit_edge
  tail call void @pm_runtime_forbid(ptr noundef %dev1) #5
  br label %if.end108

if.end108:                                        ; preds = %if.then107, %land.lhs.true.if.end108_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 20) #5
  %call.i199 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %32 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store volatile i64 %call.i199, ptr %last_busy.i, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

err_cdns_init:                                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @set_phy_power_off(ptr noundef nonnull %call.i)
  br label %err_phy_power_on

err_phy_power_on:                                 ; preds = %err_cdns_init, %if.end93.err_phy_power_on_crit_edge
  %ret.0 = phi i32 [ %call94, %if.end93.err_phy_power_on_crit_edge ], [ %call98, %err_cdns_init ]
  %33 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %usb3_phy, align 4
  %call110 = tail call i32 @phy_exit(ptr noundef %34) #5
  br label %err_phy3_init

err_phy3_init:                                    ; preds = %err_phy_power_on, %if.end88.err_phy3_init_crit_edge
  %ret.1 = phi i32 [ %call90, %if.end88.err_phy3_init_crit_edge ], [ %ret.0, %err_phy_power_on ]
  %35 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb2_phy, align 4
  %call112 = tail call i32 @phy_exit(ptr noundef %36) #5
  br label %cleanup

cleanup:                                          ; preds = %err_phy3_init, %if.end108, %if.then85, %if.end76.cleanup_crit_edge, %if.then73, %if.then52, %if.end43.cleanup_crit_edge, %do.end42, %if.end30.cleanup_crit_edge, %if.then28, %if.end17.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then28 ], [ -22, %if.then52 ], [ %24, %if.then73 ], [ %26, %if.then85 ], [ %ret.1, %err_phy3_init ], [ 0, %if.end108 ], [ -6, %do.end42 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call20, %if.end17.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ], [ %call78, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_plat_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #5
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !72
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !73
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %call3 = tail call i32 @cdns_remove(ptr noundef %1) #5
  %usb3_phy.i = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %usb3_phy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb3_phy.i, align 4
  %call.i12 = tail call i32 @phy_power_off(ptr noundef %6) #5
  %usb2_phy.i = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %usb2_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb2_phy.i, align 4
  %call1.i = tail call i32 @phy_power_off(ptr noundef %8) #5
  %9 = ptrtoint ptr %usb2_phy.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb2_phy.i, align 4
  %call4 = tail call i32 @phy_exit(ptr noundef %10) #5
  %11 = ptrtoint ptr %usb3_phy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb3_phy.i, align 4
  %call5 = tail call i32 @phy_exit(ptr noundef %12) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_optional_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_phy_power_on(ptr nocapture noundef readonly %cdns) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb2_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 19
  %0 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb2_phy, align 4
  %call = tail call i32 @phy_power_on(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %2 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb3_phy, align 4
  %call1 = tail call i32 @phy_power_on(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb2_phy, align 4
  %call5 = tail call i32 @phy_power_off(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns3_gadget_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_phy_power_off(ptr nocapture noundef readonly %cdns) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 20
  %0 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb3_phy, align 4
  %call = tail call i32 @phy_power_off(ptr noundef %1) #5
  %usb2_phy = getelementptr inbounds %struct.cdns, ptr %cdns, i32 0, i32 19
  %2 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb2_phy, align 4
  %call1 = tail call i32 @phy_power_off(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_plat_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cdns_suspend(ptr noundef %1) #5
  tail call fastcc void @cdns3_controller_suspend(ptr noundef %dev, [1 x i32] [i32 2])
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %land.lhs.true

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %wakeup_irq = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wakeup_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_plat_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cdns3_controller_resume(ptr noundef %dev, [1 x i32] [i32 16])
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_plat_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cdns3_controller_suspend(ptr noundef %dev, [1 x i32] [i32 1026])
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns3_plat_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cdns3_controller_resume(ptr noundef %dev, [1 x i32] [i32 1040])
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns3_controller_suspend(ptr nocapture noundef readonly %dev, [1 x i32] %msg.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_lpm = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg.coerce.fca.0.extract = extractvalue [1 x i32] %msg.coerce, 0
  %and = and i32 %msg.coerce.fca.0.extract, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.else:                                          ; preds = %if.end
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.if.end3_crit_edge, label %land.rhs.i

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

land.rhs.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %6, null
  br label %if.end3

if.end3:                                          ; preds = %land.rhs.i, %if.else.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %wakeup.0.off0 = phi i1 [ true, %if.end.if.end3_crit_edge ], [ false, %if.else.if.end3_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.cdns, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i1 = icmp eq ptr %12, null
  br i1 %tobool.not.i1, label %if.end3.cdns3_set_platform_suspend.exit_crit_edge, label %land.lhs.true.i

if.end3.cdns3_set_platform_suspend.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns3_set_platform_suspend.exit

land.lhs.true.i:                                  ; preds = %if.end3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool3.not.i = icmp eq ptr %14, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cdns3_set_platform_suspend.exit_crit_edge, label %if.then.i

land.lhs.true.i.cdns3_set_platform_suspend.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns3_set_platform_suspend.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 %14(ptr noundef %8, i1 noundef zeroext true, i1 noundef zeroext %wakeup.0.off0) #5
  br label %cdns3_set_platform_suspend.exit

cdns3_set_platform_suspend.exit:                  ; preds = %if.then.i, %land.lhs.true.i.cdns3_set_platform_suspend.exit_crit_edge, %if.end3.cdns3_set_platform_suspend.exit_crit_edge
  %usb3_phy.i = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %usb3_phy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb3_phy.i, align 4
  %call.i = tail call i32 @phy_power_off(ptr noundef %16) #5
  %usb2_phy.i = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 19
  %17 = ptrtoint ptr %usb2_phy.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb2_phy.i, align 4
  %call1.i = tail call i32 @phy_power_off(ptr noundef %18) #5
  %lock = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 27
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %19 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %in_lpm, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_controller_suspend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_controller_suspend, %if.then22)) #5
          to label %cleanup [label %if.then22], !srcloc !70

if.then22:                                        ; preds = %cdns3_set_platform_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_controller_suspend.__UNIQUE_ID_ddebug294, ptr noundef %21, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %cdns3_set_platform_suspend.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns3_controller_resume(ptr nocapture noundef readonly %dev, [1 x i32] %msg.coerce) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msg.coerce.fca.0.extract = extractvalue [1 x i32] %msg.coerce, 0
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %in_lpm = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %in_lpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %in_lpm, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @cdns_power_is_lost(ptr noundef %1) #5
  br i1 %call1, label %if.then2, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then2:                                         ; preds = %if.end
  %usb2_phy = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb2_phy, align 4
  %call3 = tail call i32 @phy_exit(ptr noundef %5) #5
  %6 = ptrtoint ptr %usb2_phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb2_phy, align 4
  %call5 = tail call i32 @phy_init(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.then2
  %usb3_phy = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb3_phy, align 4
  %call9 = tail call i32 @phy_exit(ptr noundef %9) #5
  %10 = ptrtoint ptr %usb3_phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb3_phy, align 4
  %call11 = tail call i32 @phy_init(ptr noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end8.if.end15_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.end15:                                         ; preds = %if.end8.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %usb2_phy.i = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %usb2_phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb2_phy.i, align 4
  %call.i = tail call i32 @phy_power_on(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %usb3_phy.i = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %usb3_phy.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usb3_phy.i, align 4
  %call1.i = tail call i32 @phy_power_on(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %usb2_phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usb2_phy.i, align 4
  %call5.i = tail call i32 @phy_power_off(ptr noundef %17) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %pdata.i = getelementptr inbounds %struct.cdns, ptr %21, i32 0, i32 26
  %22 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata.i, align 4
  %tobool.not.i75 = icmp eq ptr %23, null
  br i1 %tobool.not.i75, label %if.end19.cdns3_set_platform_suspend.exit_crit_edge, label %land.lhs.true.i

if.end19.cdns3_set_platform_suspend.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns3_set_platform_suspend.exit

land.lhs.true.i:                                  ; preds = %if.end19
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %tobool3.not.i = icmp eq ptr %25, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cdns3_set_platform_suspend.exit_crit_edge, label %if.then.i

land.lhs.true.i.cdns3_set_platform_suspend.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cdns3_set_platform_suspend.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 %25(ptr noundef %19, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cdns3_set_platform_suspend.exit

cdns3_set_platform_suspend.exit:                  ; preds = %if.then.i, %land.lhs.true.i.cdns3_set_platform_suspend.exit_crit_edge, %if.end19.cdns3_set_platform_suspend.exit_crit_edge
  %lock = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 27
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %and = lshr i32 %msg.coerce.fca.0.extract, 10
  %26 = trunc i32 %and to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %call30 = tail call i32 @cdns_resume(ptr noundef %1, i8 noundef zeroext %28) #5
  %29 = ptrtoint ptr %in_lpm to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %in_lpm, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call24) #5
  %wakeup_pending = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 25
  %30 = ptrtoint ptr %wakeup_pending to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %wakeup_pending, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool33.not = icmp eq i8 %31, 0
  br i1 %tobool33.not, label %cdns3_set_platform_suspend.exit.do.body37_crit_edge, label %if.then34

cdns3_set_platform_suspend.exit.do.body37_crit_edge: ; preds = %cdns3_set_platform_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body37

if.then34:                                        ; preds = %cdns3_set_platform_suspend.exit
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %wakeup_pending to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %wakeup_pending, align 1
  %wakeup_irq = getelementptr inbounds %struct.cdns, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %wakeup_irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wakeup_irq, align 4
  tail call void @enable_irq(i32 noundef %34) #5
  br label %do.body37

do.body37:                                        ; preds = %if.then34, %cdns3_set_platform_suspend.exit.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns3_controller_resume.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns3_controller_resume, %if.then46)) #5
          to label %cleanup [label %if.then46], !srcloc !70

if.then46:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns3_controller_resume.__UNIQUE_ID_ddebug295, ptr noundef %36, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body37, %if.then3.i, %if.end15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5, %if.then2.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %do.body37 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cdns_power_is_lost(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_resume(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !52, !54, !56, !57, !58, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_cdns3__296_333_cdns3_driver_init6, !1, !"__initcall__kmod_cdns3__296_333_cdns3_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 333, i32 1}
!2 = !{ptr @__exitcall_cdns3_driver_exit, !1, !"__exitcall_cdns3_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias297, !4, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!4 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 335, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 336, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 337, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_description301, !11, !"__UNIQUE_ID_description301", i1 false, i1 false}
!11 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 338, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 327, i32 11}
!14 = !{ptr @cdns3_driver, !15, !"cdns3_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 323, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 69, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 78, i32 59}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 80, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cdns3_plat_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @cdns3_plat_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 86, i32 48}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 91, i32 53}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 96, i32 48}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 102, i32 3}
!36 = !{ptr @cdns3_plat_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cdns3_plat_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 106, i32 57}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 110, i32 60}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 117, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cdns3_plat_probe.__UNIQUE_ID_ddebug293, !43, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 121, i32 46}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 129, i32 46}
!50 = !{ptr @of_cdns3_match, !51, !"of_cdns3_match", i1 false, i1 false}
!51 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 316, i32 34}
!52 = !{ptr @cdns3_pm_ops, !53, !"cdns3_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 309, i32 32}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 228, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cdns3_controller_suspend.__UNIQUE_ID_ddebug294, !55, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/cdns3/cdns3-plat.c", i32 268, i32 2}
!60 = !{ptr @cdns3_controller_resume.__UNIQUE_ID_ddebug295, !59, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148958971, i64 2148958976, i64 2148958989, i64 2148959033, i64 2148959067, i64 2148959088}
!71 = !{i64 2148345013}
!72 = !{i64 830633, i64 830658, i64 830680, i64 830696, i64 830708, i64 830728, i64 830752, i64 830768, i64 830780}
!73 = !{i64 2148345201}
!74 = !{i8 0, i8 2}
