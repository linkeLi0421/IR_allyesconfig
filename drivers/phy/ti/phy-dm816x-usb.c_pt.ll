; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-dm816x-usb.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-dm816x-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dm816x_usb_phy = type { ptr, ptr, i32, ptr, %struct.usb_phy, i32, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_dm816x_usb__293_290_dm816x_usb_phy_driver_init6 = internal global ptr @dm816x_usb_phy_driver_init, section ".initcall6.init", align 4
@dm816x_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dm816x_usb_phy_probe, ptr @dm816x_usb_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dm816x_usb_phy_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm816x_usb_phy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dm816x_usb_phy_driver_exit = internal global ptr @dm816x_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias294 = internal constant [41 x i8] c"phy_dm816x_usb.alias=platform:dm816x_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [55 x i8] c"phy_dm816x_usb.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [49 x i8] c"phy_dm816x_usb.description=dm816x usb phy driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [50 x i8] c"phy_dm816x_usb.file=drivers/phy/ti/phy-dm816x-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [30 x i8] c"phy_dm816x_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm816x-usb-phy\00", [17 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm8168-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm816x_usb_phy_runtime_suspend, ptr @dm816x_usb_phy_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm8168_usb_phy\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @dm816x_usb_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 87, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nonstandard phy refclk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dm816x_usb_phy_init\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/phy/ti/phy-dm816x-usb.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_init._entry_ptr = internal global ptr @dm816x_usb_phy_init._entry, section ".printk_index", align 4
@dm816x_usb_phy_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 99, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Working dm816x USB_CTRL! (0x%08x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_init._entry_ptr.12 = internal global ptr @dm816x_usb_phy_init._entry.9, section ".printk_index", align 4
@dm816x_usb_phy_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.6, i32 132, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy%i failed to power off\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dm816x_usb_phy_runtime_suspend\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_runtime_suspend._entry_ptr = internal global ptr @dm816x_usb_phy_runtime_suspend._entry, section ".printk_index", align 4
@dm816x_usb_phy_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 160, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"phy%i failed to power on\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dm816x_usb_phy_runtime_resume\00", [34 x i8] zeroinitializer }, align 32
@dm816x_usb_phy_runtime_resume._entry_ptr = internal global ptr @dm816x_usb_phy_runtime_resume._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"dm816x_usb_phy_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 280, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 284, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [24 x i8] c"dm816x_usb_phy_id_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 174, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [22 x i8] c"dm816x_usb_phy_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 168, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 207, i32 13 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 227, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 236, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 115, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 87, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 97, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 131, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [35 x i8] c"../drivers/phy/ti/phy-dm816x-usb.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 159, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_dm816x_usb_phy_driver_exit, ptr @__initcall__kmod_phy_dm816x_usb__293_290_dm816x_usb_phy_driver_init6, ptr @dm816x_usb_phy_driver_exit, ptr @dm816x_usb_phy_init._entry, ptr @dm816x_usb_phy_init._entry.9, ptr @dm816x_usb_phy_init._entry_ptr, ptr @dm816x_usb_phy_init._entry_ptr.12, ptr @dm816x_usb_phy_runtime_resume._entry, ptr @dm816x_usb_phy_runtime_resume._entry_ptr, ptr @dm816x_usb_phy_runtime_suspend._entry, ptr @dm816x_usb_phy_runtime_suspend._entry_ptr, ptr @dm816x_usb_phy_driver, ptr @.str, ptr @dm816x_usb_phy_id_table, ptr @dm816x_usb_phy_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm816x_usb_phy_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dm816x_usb_phy_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm816x_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dm816x_usb_phy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @dm816x_usb_phy_id_table, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call11 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %usb_ctrl = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %usb_ctrl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %usb_ctrl, align 4
  %5 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call6, align 4
  %and = and i32 %6, 255
  %add = add nuw nsw i32 %and, 4
  %usbphy_ctrl = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %usbphy_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %usbphy_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %add)
  %cmp = icmp eq i32 %add, 44
  br i1 %cmp, label %if.then19, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %instance = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %instance, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %call.i115 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool23.not = icmp eq ptr %call.i115, null
  br i1 %tobool23.not, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %dev27 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev27, align 4
  %phy29 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %phy29 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %phy29, align 4
  %label = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.2, ptr %label, align 4
  %otg33 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 4, i32 5
  %12 = ptrtoint ptr %otg33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i115, ptr %otg33, align 4
  %type = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %type, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %call.i115, i32 0, i32 6
  %14 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @dm816x_usb_phy_set_host, ptr %set_host, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %call.i115, i32 0, i32 7
  %15 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @dm816x_usb_phy_set_peripheral, ptr %set_peripheral, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %call.i115, i32 0, i32 2
  %16 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %phy29, ptr %usb_phy, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call37 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #6
  %refclk = getelementptr inbounds %struct.dm816x_usb_phy, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call37, ptr %refclk, align 4
  %cmp.i116 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end25
  %call45 = tail call i32 @clk_prepare(ptr noundef %call37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %20 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev27, align 4
  tail call void @pm_runtime_enable(ptr noundef %21) #6
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 4
  %call51 = tail call ptr @devm_phy_create(ptr noundef %23, ptr noundef null, ptr noundef nonnull @ops) #6
  %cmp.i117 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %if.end48.clk_unprepare_crit_edge, label %if.end55

if.end48.clk_unprepare_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_unprepare

if.end55:                                         ; preds = %if.end48
  %driver_data.i.i118 = getelementptr inbounds %struct.device, ptr %call51, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i.i118 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i118, align 4
  %25 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev27, align 4
  %call57 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #6
  %cmp.i119 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.end55.clk_unprepare_crit_edge, label %if.end61

if.end55.clk_unprepare_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_unprepare

if.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = tail call i32 @usb_add_phy_dev(ptr noundef %phy29) #6
  br label %cleanup

clk_unprepare:                                    ; preds = %if.end55.clk_unprepare_crit_edge, %if.end48.clk_unprepare_crit_edge
  %error.0.in = phi ptr [ %call51, %if.end48.clk_unprepare_crit_edge ], [ %call57, %if.end55.clk_unprepare_crit_edge ]
  %error.0 = ptrtoint ptr %error.0.in to i32
  %27 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev27, align 4
  tail call void @__pm_runtime_disable(ptr noundef %28, i1 noundef zeroext true) #6
  %29 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %refclk, align 4
  tail call void @clk_unprepare(ptr noundef %30) #6
  br label %cleanup

cleanup:                                          ; preds = %clk_unprepare, %if.end61, %if.end43.cleanup_crit_edge, %if.then40, %if.end20.cleanup_crit_edge, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then14 ], [ %19, %if.then40 ], [ %error.0, %clk_unprepare ], [ 0, %if.end61 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -2, %if.end5.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy1 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 4
  tail call void @usb_remove_phy(ptr noundef %phy1) #6
  %dev = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #6
  %refclk = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dm816x_usb_phy_set_host(ptr nocapture noundef writeonly %otg, ptr noundef %host) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %0 = ptrtoint ptr %host1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %host, ptr %host1, align 4
  %tobool.not = icmp eq ptr %host, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dm816x_usb_phy_set_peripheral(ptr nocapture noundef writeonly %otg, ptr noundef %gadget) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gadget1 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 4
  %0 = ptrtoint ptr %gadget1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %gadget, ptr %gadget1, align 4
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 5
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_init(ptr nocapture noundef readonly %x) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %x, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !61
  %refclk = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %refclk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000000, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 24000000
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %usb_ctrl = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %usb_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usb_ctrl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef 259, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %usb_ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_ctrl, align 4
  %call5 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %val) #6
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %if.end.if.end12_crit_edge, label %do.end10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev11, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef %16) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end.if.end12_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %usbphy_ctrl = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %usbphy_ctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %usbphy_ctrl, align 4
  %call14 = call i32 @regmap_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %val) #6
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %or = or i32 %24, 15
  store i32 %or, ptr %val, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %usbphy_ctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usbphy_ctrl, align 4
  %call17 = call i32 @regmap_write(ptr noundef %26, i32 noundef %28, i32 noundef %or) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %instance = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %instance, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %usb_ctrl = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %usb_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_ctrl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %shl, i32 noundef %neg, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %instance, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %refclk = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm816x_usb_phy_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %refclk = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %instance = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance, align 4
  %shl = shl nuw i32 1, %5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %usb_ctrl = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %usb_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_ctrl, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.dm816x_usb_phy, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  %12 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %instance, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef %13) #9
  %14 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_phy_dm816x_usb__293_290_dm816x_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_dm816x_usb__293_290_dm816x_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_dm816x_usb_phy_driver_exit, !1, !"__exitcall_dm816x_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias294, !4, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!4 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 292, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_description296, !8, !"__UNIQUE_ID_description296", i1 false, i1 false}
!8 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 295, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 284, i32 11}
!14 = !{ptr @dm816x_usb_phy_driver, !15, !"dm816x_usb_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 280, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 207, i32 13}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 227, i32 19}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 236, i32 39}
!22 = !{ptr @ops, !23, !"ops", i1 false, i1 false}
!23 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 115, i32 29}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 87, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dm816x_usb_phy_init._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @dm816x_usb_phy_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 97, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dm816x_usb_phy_init._entry.9, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dm816x_usb_phy_init._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @dm816x_usb_phy_id_table, !38, !"dm816x_usb_phy_id_table", i1 false, i1 false}
!38 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 174, i32 34}
!39 = !{ptr @dm816x_usb_phy_pm_ops, !40, !"dm816x_usb_phy_pm_ops", i1 false, i1 false}
!40 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 168, i32 8}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 131, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dm816x_usb_phy_runtime_suspend._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @dm816x_usb_phy_runtime_suspend._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/ti/phy-dm816x-usb.c", i32 159, i32 3}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dm816x_usb_phy_runtime_resume._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dm816x_usb_phy_runtime_resume._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
