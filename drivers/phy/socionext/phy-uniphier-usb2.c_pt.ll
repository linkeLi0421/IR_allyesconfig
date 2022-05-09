; ModuleID = '/llk/IR_all_yes/drivers/phy/socionext/phy-uniphier-usb2.c_pt.bc'
source_filename = "../drivers/phy/socionext/phy-uniphier-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uniphier_u2phy_soc_data = type { %struct.uniphier_u2phy_param, %struct.uniphier_u2phy_param }
%struct.uniphier_u2phy_param = type { i32, i32 }
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
%struct.uniphier_u2phy_priv = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_phy_uniphier_usb2__289_240_uniphier_u2phy_driver_init6 = internal global ptr @uniphier_u2phy_driver_init, section ".initcall6.init", align 4
@uniphier_u2phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @uniphier_u2phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_u2phy_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uniphier_u2phy_driver_exit = internal global ptr @uniphier_u2phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [75 x i8] c"phy_uniphier_usb2.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [70 x i8] c"phy_uniphier_usb2.description=UniPhier PHY driver for USB2 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [63 x i8] c"phy_uniphier_usb2.file=drivers/phy/socionext/phy-uniphier-usb2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [33 x i8] c"phy_uniphier_usb2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uniphier-usb2-phy\00", [46 x i8] zeroinitializer }, align 32
@uniphier_u2phy_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld11-usb2-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_ld11_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/socionext/phy-uniphier-usb2.c\00", [54 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uniphier_u2phy_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry_ptr = internal global ptr @uniphier_u2phy_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@uniphier_u2phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @uniphier_u2phy_init, ptr null, ptr @uniphier_u2phy_power_on, ptr @uniphier_u2phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.1, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create phy\0A\00", [42 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry_ptr.9 = internal global ptr @uniphier_u2phy_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.1, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get reg property\0A\00", [36 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry_ptr.13 = internal global ptr @uniphier_u2phy_probe._entry.11, section ".printk_index", align 4
@uniphier_u2phy_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.1, i32 166, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No phy configuration: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uniphier_u2phy_probe._entry_ptr.17 = internal global ptr @uniphier_u2phy_probe._entry.14, section ".printk_index", align 4
@uniphier_u2phy_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.1, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to find appropriate phy\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uniphier_u2phy_xlate\00", [43 x i8] zeroinitializer }, align 32
@uniphier_u2phy_xlate._entry_ptr = internal global ptr @uniphier_u2phy_xlate._entry, section ".printk_index", align 4
@uniphier_pro4_data = internal constant { [5 x %struct.uniphier_u2phy_soc_data], [48 x i8] } { [5 x %struct.uniphier_u2phy_soc_data] [%struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1280, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1292, i32 65552 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1288, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1292, i32 65552 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1296, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1308, i32 65552 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1304, i32 85206016 }, %struct.uniphier_u2phy_param { i32 1308, i32 65552 } }, %struct.uniphier_u2phy_soc_data zeroinitializer], [48 x i8] zeroinitializer }, align 32
@uniphier_ld11_data = internal constant { [4 x %struct.uniphier_u2phy_soc_data], [32 x i8] } { [4 x %struct.uniphier_u2phy_soc_data] [%struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1280, i32 -2111307776 }, %struct.uniphier_u2phy_param { i32 1284, i32 262 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1288, i32 -2111307776 }, %struct.uniphier_u2phy_param { i32 1292, i32 262 } }, %struct.uniphier_u2phy_soc_data { %struct.uniphier_u2phy_param { i32 1296, i32 -2111307776 }, %struct.uniphier_u2phy_param { i32 1300, i32 262 } }, %struct.uniphier_u2phy_soc_data zeroinitializer], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"uniphier_u2phy_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 233, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 236, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"uniphier_u2phy_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 220, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 117, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 128, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 140, i32 49 }
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"uniphier_u2phy_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 99, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 151, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 156, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 158, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 165, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 92, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"uniphier_pro4_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 184, i32 45 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"uniphier_ld11_data\00", align 1
@___asan_gen_.90 = private constant [45 x i8] c"../drivers/phy/socionext/phy-uniphier-usb2.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 204, i32 45 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_uniphier_u2phy_driver_exit, ptr @__initcall__kmod_phy_uniphier_usb2__289_240_uniphier_u2phy_driver_init6, ptr @uniphier_u2phy_driver_exit, ptr @uniphier_u2phy_probe._entry, ptr @uniphier_u2phy_probe._entry.11, ptr @uniphier_u2phy_probe._entry.14, ptr @uniphier_u2phy_probe._entry.7, ptr @uniphier_u2phy_probe._entry_ptr, ptr @uniphier_u2phy_probe._entry_ptr.13, ptr @uniphier_u2phy_probe._entry_ptr.17, ptr @uniphier_u2phy_probe._entry_ptr.9, ptr @uniphier_u2phy_xlate._entry, ptr @uniphier_u2phy_xlate._entry_ptr, ptr @uniphier_u2phy_driver, ptr @.str, ptr @uniphier_u2phy_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @uniphier_u2phy_ops, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @uniphier_pro4_data, ptr @uniphier_ld11_data], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_u2phy_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_data to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld11_data to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_u2phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uniphier_u2phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_u2phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %data_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_idx) #5
  %0 = ptrtoint ptr %data_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_idx, align 4, !annotation !62
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.for.cond_crit_edge, !prof !63

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 117, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry.for.cond_crit_edge
  %ndatas.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %entry.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.uniphier_u2phy_soc_data, ptr %call, i32 %ndatas.0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %tobool25.not = icmp eq i32 %2, 0
  %inc = add i32 %ndatas.0, 1
  br i1 %tobool25.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call26 = tail call ptr @of_get_parent(ptr noundef %4) #5
  %call27 = tail call ptr @syscon_node_to_regmap(ptr noundef %call26) #5
  tail call void @of_node_put(ptr noundef %call26) #5
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end32, label %if.end34

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %5 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end34:                                         ; preds = %for.end
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call36 = tail call ptr @of_get_next_child(ptr noundef %7, ptr noundef null) #5
  %cmp.not151 = icmp eq ptr %call36, null
  br i1 %cmp.not151, label %if.end34.for.end87_crit_edge, label %if.end34.for.body38_crit_edge

if.end34.for.body38_crit_edge:                    ; preds = %if.end34
  br label %for.body38

if.end34.for.end87_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end87

for.body38:                                       ; preds = %if.end81.for.body38_crit_edge, %if.end34.for.body38_crit_edge
  %next.0153 = phi ptr [ %call.i, %if.end81.for.body38_crit_edge ], [ null, %if.end34.for.body38_crit_edge ]
  %child.0152 = phi ptr [ %call86, %if.end81.for.body38_crit_edge ], [ %call36, %if.end34.for.body38_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %for.body38.out_put_child_crit_edge, label %if.end42

for.body38.out_put_child_crit_edge:               ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_child

if.end42:                                         ; preds = %for.body38
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27, ptr %call.i, align 4
  %call44 = call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %vbus = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call44, ptr %vbus, align 4
  %cmp.i141 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then47, label %if.end42.if.end56_crit_edge

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then47:                                        ; preds = %if.end42
  %cmp50 = icmp eq ptr %call44, inttoptr (i32 -517 to ptr)
  br i1 %cmp50, label %if.then47.out_put_child_crit_edge, label %if.end54

if.then47.out_put_child_crit_edge:                ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put_child

if.end54:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vbus, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.end54, %if.end42.if.end56_crit_edge
  %call57 = call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef nonnull %child.0152, ptr noundef nonnull @uniphier_u2phy_ops) #5
  %phy = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call57, ptr %phy, align 4
  %cmp.i142 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %do.end63, label %if.end66

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %out_put_child

if.end66:                                         ; preds = %if.end56
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0152, ptr noundef nonnull @.str.10, ptr noundef nonnull %data_idx, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool68.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool68.not, label %if.end73, label %do.end72

do.end72:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  br label %out_put_child

if.end73:                                         ; preds = %if.end66
  %15 = ptrtoint ptr %data_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %ndatas.0)
  %cmp74 = icmp slt i32 %16, %ndatas.0
  br i1 %cmp74, label %if.then75, label %do.end80

if.then75:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx76 = getelementptr %struct.uniphier_u2phy_soc_data, ptr %call, i32 %16
  %data77 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %data77 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx76, ptr %data77, align 4
  br label %if.end81

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %full_name = getelementptr inbounds %struct.device_node, ptr %child.0152, i32 0, i32 2
  %18 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %19) #8
  br label %if.end81

if.end81:                                         ; preds = %do.end80, %if.then75
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %next83 = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %next83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %next.0153, ptr %next83, align 4
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call86 = call ptr @of_get_next_child(ptr noundef %25, ptr noundef nonnull %child.0152) #5
  %cmp.not = icmp eq ptr %call86, null
  br i1 %cmp.not, label %if.end81.for.end87_crit_edge, label %if.end81.for.body38_crit_edge

if.end81.for.body38_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body38

if.end81.for.end87_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end87

for.end87:                                        ; preds = %if.end81.for.end87_crit_edge, %if.end34.for.end87_crit_edge
  %next.0.lcssa = phi ptr [ null, %if.end34.for.end87_crit_edge ], [ %call.i, %if.end81.for.end87_crit_edge ]
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %next.0.lcssa, ptr %driver_data.i, align 4
  %call88 = call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @uniphier_u2phy_xlate) #5
  %cmp.i.i = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %call88 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %27, i32 0
  br label %cleanup

out_put_child:                                    ; preds = %do.end72, %do.end63, %if.then47.out_put_child_crit_edge, %for.body38.out_put_child_crit_edge
  %ret.0 = phi i32 [ %14, %do.end63 ], [ %call.i.i, %do.end72 ], [ -12, %for.body38.out_put_child_crit_edge ], [ -517, %if.then47.out_put_child_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0152) #5
  br label %cleanup

cleanup:                                          ; preds = %out_put_child, %for.end87, %do.end32, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %5, %do.end32 ], [ %ret.0, %out_put_child ], [ %spec.select.i, %for.end87 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_idx) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @uniphier_u2phy_xlate(ptr noundef %dev, ptr nocapture noundef readonly %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %priv.010 = load ptr, ptr %driver_data.i, align 4
  %tobool.not11 = icmp eq ptr %priv.010, null
  br i1 %tobool.not11, label %entry.do.end.critedge_crit_edge, label %land.rhs.lr.ph

entry.do.end.critedge_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.critedge

land.rhs.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %land.rhs

while.cond:                                       ; preds = %land.rhs
  %next = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %priv.012, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %priv.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %priv.0, null
  br i1 %tobool.not, label %while.cond.do.end.critedge_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.cond.do.end.critedge_crit_edge:             ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.critedge

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %priv.012 = phi ptr [ %priv.010, %land.rhs.lr.ph ], [ %priv.0, %while.cond.land.rhs_crit_edge ]
  %phy = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %priv.012, i32 0, i32 1
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %cmp.not = icmp eq ptr %2, %7
  br i1 %cmp.not, label %land.rhs.cleanup_crit_edge, label %while.cond

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.critedge:                                  ; preds = %while.cond.do.end.critedge_crit_edge, %entry.do.end.critedge_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.critedge ], [ %5, %land.rhs.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %value = getelementptr inbounds %struct.uniphier_u2phy_param, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %7, i32 noundef %9) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %config1 = getelementptr inbounds %struct.uniphier_u2phy_soc_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config1, align 4
  %value10 = getelementptr inbounds %struct.uniphier_u2phy_soc_data, ptr %13, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %value10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value10, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %15, i32 noundef %17) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_power_on(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_u2phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vbus = getelementptr inbounds %struct.uniphier_u2phy_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_phy_uniphier_usb2__289_240_uniphier_u2phy_driver_init6, !1, !"__initcall__kmod_phy_uniphier_usb2__289_240_uniphier_u2phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_uniphier_u2phy_driver_exit, !1, !"__exitcall_uniphier_u2phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 242, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 243, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 244, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 236, i32 11}
!12 = !{ptr @uniphier_u2phy_driver, !13, !"uniphier_u2phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 233, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 117, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 128, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @uniphier_u2phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @uniphier_u2phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 140, i32 49}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 151, i32 4}
!27 = !{ptr @uniphier_u2phy_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @uniphier_u2phy_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 156, i32 37}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 158, i32 4}
!33 = !{ptr @uniphier_u2phy_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @uniphier_u2phy_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 165, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @uniphier_u2phy_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @uniphier_u2phy_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @uniphier_u2phy_ops, !41, !"uniphier_u2phy_ops", i1 false, i1 false}
!41 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 99, i32 29}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 92, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @uniphier_u2phy_xlate._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @uniphier_u2phy_xlate._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @uniphier_u2phy_match, !48, !"uniphier_u2phy_match", i1 false, i1 false}
!48 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 220, i32 34}
!49 = !{ptr @uniphier_pro4_data, !50, !"uniphier_pro4_data", i1 false, i1 false}
!50 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 184, i32 45}
!51 = !{ptr @uniphier_ld11_data, !52, !"uniphier_ld11_data", i1 false, i1 false}
!52 = !{!"../drivers/phy/socionext/phy-uniphier-usb2.c", i32 204, i32 45}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 1, i32 2000}
