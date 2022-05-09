; ModuleID = '/llk/IR_all_yes/drivers/usb/phy/phy-tahvo.c_pt.bc'
source_filename = "../drivers/usb/phy/phy-tahvo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.tahvo_usb = type { ptr, %struct.usb_phy, i32, %struct.mutex, ptr, i32, i32, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_phy_tahvo__294_435_tahvo_usb_driver_init6 = internal global ptr @tahvo_usb_driver_init, section ".initcall6.init", align 4
@tahvo_usb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tahvo_usb_probe, ptr @tahvo_usb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tahvo_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tahvo_usb_driver_exit = internal global ptr @tahvo_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [51 x i8] c"phy_tahvo.description=Tahvo USB transceiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [41 x i8] c"phy_tahvo.file=drivers/usb/phy/phy-tahvo\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"phy_tahvo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [63 x i8] c"phy_tahvo.author=Juha Yrj\C3\B6l\C3\A4, Tony Lindgren, and Timo Ter\C3\A4s\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [54 x i8] c"phy_tahvo.author=Aaro Koskinen <aaro.koskinen@iki.fi>\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tahvo-usb\00", [22 x i8] zeroinitializer }, align 32
@tahvo_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @tahvo_group, ptr null], [24 x i8] zeroinitializer }, align 32
@tahvo_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tu->serialize\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"usb_l4_ick\00", [21 x i8] zeroinitializer }, align 32
@tahvo_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@tahvo_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tahvo_usb_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/phy/phy-tahvo.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tahvo_usb_probe._entry_ptr = internal global ptr @tahvo_usb_probe._entry, section ".printk_index", align 4
@tahvo_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 363, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register extcon device: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tahvo_usb_probe._entry_ptr.10 = internal global ptr @tahvo_usb_probe._entry.8, section ".printk_index", align 4
@tahvo_usb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 386, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot register USB transceiver: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tahvo_usb_probe._entry_ptr.13 = internal global ptr @tahvo_usb_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tahvo-vbus\00", [21 x i8] zeroinitializer }, align 32
@tahvo_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 400, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not register tahvo-vbus irq: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tahvo_usb_probe._entry_ptr.17 = internal global ptr @tahvo_usb_probe._entry.15, section ".printk_index", align 4
@tahvo_usb_set_suspend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_tahvo\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tahvo_usb_set_suspend\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@check_vbus_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 95, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"USB cable connected\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_vbus_state\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@check_vbus_state._entry_ptr = internal global ptr @check_vbus_state._entry, section ".printk_index", align 4
@check_vbus_state._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.5, i32 110, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"USB cable disconnected\0A\00", [40 x i8] zeroinitializer }, align 32
@check_vbus_state._entry_ptr.26 = internal global ptr @check_vbus_state._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vbus_state\00", [21 x i8] zeroinitializer }, align 32
@tahvo_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tahvo_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@tahvo_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_vbus, ptr @dev_attr_otg_mode, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_vbus = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vbus_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_otg_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @otg_mode_show, ptr @otg_mode_store }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"otg_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"host\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peripheral\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@otg_mode_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 283, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HOST mode: host controller present\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"otg_mode_store\00", [17 x i8] zeroinitializer }, align 32
@otg_mode_store._entry_ptr = internal global ptr @otg_mode_store._entry, section ".printk_index", align 4
@otg_mode_store._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.5, i32 286, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"HOST mode: no host controller, powering off\0A\00", [51 x i8] zeroinitializer }, align 32
@otg_mode_store._entry_ptr.39 = internal global ptr @otg_mode_store._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"peripheral\00", [21 x i8] zeroinitializer }, align 32
@otg_mode_store._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.5, i32 295, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PERIPHERAL mode: gadget driver present\0A\00", [56 x i8] zeroinitializer }, align 32
@otg_mode_store._entry_ptr.43 = internal global ptr @otg_mode_store._entry.41, section ".printk_index", align 4
@otg_mode_store._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.5, i32 298, ptr @.str.23, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"PERIPHERAL mode: no gadget driver, powering off\0A\00", [47 x i8] zeroinitializer }, align 32
@otg_mode_store._entry_ptr.46 = internal global ptr @otg_mode_store._entry.44, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"tahvo_usb_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 427, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 431, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"tahvo_groups\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 342, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 344, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"tahvo_cable\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 55, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 355, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 362, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 385, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 397, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 399, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 180, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 95, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 110, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 117, i32 45 }
@___asan_gen_.139 = private unnamed_addr constant [12 x i8] c"tahvo_group\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 316, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"tahvo_attrs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 311, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"dev_attr_vbus\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"dev_attr_otg_mode\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 68, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 66, i32 47 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 66, i32 54 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 309, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 262, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 264, i32 23 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 278, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 283, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 286, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 290, i32 41 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 295, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [31 x i8] c"../drivers/usb/phy/phy-tahvo.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 298, i32 4 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_tahvo_usb_driver_exit, ptr @__initcall__kmod_phy_tahvo__294_435_tahvo_usb_driver_init6, ptr @check_vbus_state._entry, ptr @check_vbus_state._entry.24, ptr @check_vbus_state._entry_ptr, ptr @check_vbus_state._entry_ptr.26, ptr @otg_mode_store._entry, ptr @otg_mode_store._entry.37, ptr @otg_mode_store._entry.41, ptr @otg_mode_store._entry.44, ptr @otg_mode_store._entry_ptr, ptr @otg_mode_store._entry_ptr.39, ptr @otg_mode_store._entry_ptr.43, ptr @otg_mode_store._entry_ptr.46, ptr @tahvo_usb_driver_exit, ptr @tahvo_usb_probe._entry, ptr @tahvo_usb_probe._entry.11, ptr @tahvo_usb_probe._entry.15, ptr @tahvo_usb_probe._entry.8, ptr @tahvo_usb_probe._entry_ptr, ptr @tahvo_usb_probe._entry_ptr.10, ptr @tahvo_usb_probe._entry_ptr.13, ptr @tahvo_usb_probe._entry_ptr.17, ptr @tahvo_usb_driver, ptr @.str, ptr @tahvo_groups, ptr @tahvo_usb_probe.__key, ptr @.str.1, ptr @.str.2, ptr @tahvo_cable, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @tahvo_group, ptr @tahvo_attrs, ptr @dev_attr_vbus, ptr @dev_attr_otg_mode, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_usb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_usb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_vbus_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_vbus_state._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tahvo_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vbus to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_otg_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_mode_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_mode_store._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_mode_store._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_mode_store._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tahvo_usb_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tahvo_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tahvo_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 376, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i148 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #8
  %phy = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 1
  %otg = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %otg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i148, ptr %otg, align 4
  %tobool7.not = icmp eq ptr %call.i148, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %call.i, align 4
  %tahvo_mode = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tahvo_mode, align 4
  %serialize = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %serialize, ptr noundef nonnull @.str.1, ptr noundef nonnull @tahvo_usb_probe.__key) #8
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %ick = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %ick to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %ick, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end9.if.end17_crit_edge, label %if.then14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @clk_enable(ptr noundef %call11) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9.if.end17_crit_edge
  %call18 = tail call i32 @retu_read(ptr noundef %3, i8 noundef zeroext 2) #8
  %and = and i32 %call18, 1
  %vbus_state = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %vbus_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %vbus_state, align 4
  %call20 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %dev, ptr noundef nonnull @tahvo_cable) #8
  %extcon = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %extcon to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20, ptr %extcon, align 4
  %cmp.i149 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %10 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extcon, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %err_disable_clk

if.end30:                                         ; preds = %if.end17
  %call33 = tail call i32 @devm_extcon_dev_register(ptr noundef %dev, ptr noundef %call20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call33) #11
  br label %err_disable_clk

if.end40:                                         ; preds = %if.end30
  %13 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extcon, align 4
  %15 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tahvo_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp = icmp eq i32 %16, 0
  %call43 = tail call i32 @extcon_set_state_sync(ptr noundef %14, i32 noundef 2, i1 noundef zeroext %cmp) #8
  %17 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %extcon, align 4
  %19 = ptrtoint ptr %vbus_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vbus_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool46 = icmp ne i32 %20, 0
  %call47 = tail call i32 @extcon_set_state_sync(ptr noundef %18, i32 noundef 1, i1 noundef zeroext %tobool46) #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %otg, align 4
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gadget.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end40.tahvo_usb_power_off.exit_crit_edge, label %if.then.i

if.end40.tahvo_usb_power_off.exit_crit_edge:      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %tahvo_usb_power_off.exit

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef nonnull %30) #8
  br label %tahvo_usb_power_off.exit

tahvo_usb_power_off.exit:                         ; preds = %if.then.i, %if.end40.tahvo_usb_power_off.exit_crit_edge
  %call5.i = tail call i32 @retu_write(ptr noundef %26, i8 noundef zeroext 6, i16 noundef zeroext 0) #8
  %31 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %otg, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state.i, align 4
  %34 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev, ptr %phy, align 4
  %35 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state, align 4
  %label = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str, ptr %label, align 4
  %set_suspend = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 1, i32 26
  %38 = ptrtoint ptr %set_suspend to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tahvo_usb_set_suspend, ptr %set_suspend, align 4
  %39 = load ptr, ptr %otg, align 4
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %phy, ptr %usb_phy, align 4
  %41 = load ptr, ptr %otg, align 4
  %set_host = getelementptr inbounds %struct.usb_otg, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %set_host to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tahvo_usb_set_host, ptr %set_host, align 4
  %43 = load ptr, ptr %otg, align 4
  %set_peripheral = getelementptr inbounds %struct.usb_otg, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %set_peripheral to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @tahvo_usb_set_peripheral, ptr %set_peripheral, align 4
  %call63 = tail call i32 @usb_add_phy(ptr noundef %phy, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end70

do.end68:                                         ; preds = %tahvo_usb_power_off.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call63) #11
  br label %err_disable_clk

if.end70:                                         ; preds = %tahvo_usb_power_off.exit
  %driver_data.i150 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i150 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i150, align 4
  %call72 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.tahvo_usb, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call72, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end70.cleanup_crit_edge, label %if.end75

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %call77 = tail call i32 @request_threaded_irq(i32 noundef %call72, ptr noundef null, ptr noundef nonnull @tahvo_usb_vbus_interrupt, i32 noundef 8192, ptr noundef nonnull @.str.14, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end75.cleanup_crit_edge, label %do.end82

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end82:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call77) #11
  tail call void @usb_remove_phy(ptr noundef %phy) #8
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %do.end82, %do.end68, %do.end38, %do.end26
  %ret.0 = phi i32 [ %12, %do.end26 ], [ %call33, %do.end38 ], [ %call63, %do.end68 ], [ %call77, %do.end82 ]
  %47 = ptrtoint ptr %ick to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ick, align 4
  %cmp.i151 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %err_disable_clk.cleanup_crit_edge, label %if.then88

err_disable_clk.cleanup_crit_edge:                ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then88:                                        ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %48) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %err_disable_clk.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call72, %if.end70.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ], [ %ret.0, %if.then88 ], [ %ret.0, %err_disable_clk.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #8
  %phy = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 1
  tail call void @usb_remove_phy(ptr noundef %phy) #8
  %ick = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ick to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ick, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @retu_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tahvo_usb_power_off(ptr nocapture noundef readonly %tu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tu, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %otg = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg, align 4
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gadget, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef nonnull %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call i32 @retu_write(ptr noundef %5, i8 noundef zeroext 6, i16 noundef zeroext 0) #8
  %10 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_set_suspend(ptr nocapture noundef readonly %dev, i32 noundef %suspend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tahvo_usb_set_suspend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tahvo_usb_set_suspend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tahvo_usb_set_suspend.__UNIQUE_ID_ddebug293, ptr noundef %dev7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @retu_read(ptr noundef %5, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %suspend)
  %tobool9.not = icmp eq i32 %suspend, 0
  %8 = trunc i32 %call8 to i16
  %conv12 = and i16 %8, -3
  %masksel = select i1 %tobool9.not, i16 2, i16 0
  %w.0 = or i16 %conv12, %masksel
  %call16 = tail call i32 @retu_write(ptr noundef %5, i8 noundef zeroext 6, i16 noundef zeroext %w.0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_set_host(ptr nocapture noundef %otg, ptr noundef %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %serialize = getelementptr i8, ptr %1, i32 264
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #8
  %cmp = icmp eq ptr %host, null
  %tahvo_mode = getelementptr i8, ptr %1, i32 364
  %2 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tahvo_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %otg.i = getelementptr i8, ptr %1, i32 20
  %10 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg.i, align 4
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gadget.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then2.tahvo_usb_power_off.exit_crit_edge, label %if.then.i

if.then2.tahvo_usb_power_off.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %tahvo_usb_power_off.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef nonnull %13) #8
  br label %tahvo_usb_power_off.exit

tahvo_usb_power_off.exit:                         ; preds = %if.then.i, %if.then2.tahvo_usb_power_off.exit_crit_edge
  %call5.i = tail call i32 @retu_write(ptr noundef %9, i8 noundef zeroext 6, i16 noundef zeroext 0) #8
  %14 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  br i1 %cmp1, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %host9 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %17 = ptrtoint ptr %host9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %host9, align 4
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %parent.i23 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %parent.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i23, align 8
  %driver_data.i.i24 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i24, align 4
  %extcon.i = getelementptr i8, ptr %1, i32 368
  %24 = ptrtoint ptr %extcon.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extcon.i, align 4
  %call1.i = tail call i32 @extcon_set_state_sync(ptr noundef %25, i32 noundef 2, i1 noundef zeroext true) #8
  %call2.i = tail call i32 @retu_write(ptr noundef %23, i8 noundef zeroext 6, i16 noundef zeroext 58) #8
  %otg.i25 = getelementptr i8, ptr %1, i32 20
  %26 = ptrtoint ptr %otg.i25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %otg.i25, align 4
  %state.i26 = getelementptr inbounds %struct.usb_otg, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %state.i26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 6, ptr %state.i26, align 4
  tail call fastcc void @check_vbus_state(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %tahvo_usb_power_off.exit, %if.then.cleanup_crit_edge
  %host.sink = phi ptr [ null, %tahvo_usb_power_off.exit ], [ null, %if.then.cleanup_crit_edge ], [ %host, %if.then8 ], [ %host, %if.end5.cleanup_crit_edge ]
  %host11 = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 3
  %29 = ptrtoint ptr %host11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %host.sink, ptr %host11, align 4
  tail call void @mutex_unlock(ptr noundef %serialize) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_set_peripheral(ptr nocapture noundef readonly %otg, ptr noundef %gadget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_phy = getelementptr inbounds %struct.usb_otg, ptr %otg, i32 0, i32 2
  %0 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_phy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %serialize = getelementptr i8, ptr %1, i32 264
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %gadget, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %tahvo_mode = getelementptr i8, ptr %1, i32 364
  %2 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tahvo_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %otg.i = getelementptr i8, ptr %1, i32 20
  %10 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %otg.i, align 4
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gadget.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then1.tahvo_usb_power_off.exit_crit_edge, label %if.then.i

if.then1.tahvo_usb_power_off.exit_crit_edge:      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %tahvo_usb_power_off.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef nonnull %13) #8
  br label %tahvo_usb_power_off.exit

tahvo_usb_power_off.exit:                         ; preds = %if.then.i, %if.then1.tahvo_usb_power_off.exit_crit_edge
  %call5.i = tail call i32 @retu_write(ptr noundef %9, i8 noundef zeroext 6, i16 noundef zeroext 0) #8
  %14 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %state.i, align 4
  br label %if.end

if.end:                                           ; preds = %tahvo_usb_power_off.exit, %if.then.if.end_crit_edge
  %otg2 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %otg2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %otg2, align 4
  %gadget3 = getelementptr inbounds %struct.usb_otg, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %gadget3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %gadget3, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %otg7 = getelementptr %struct.usb_phy, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %otg7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %otg7, align 4
  %gadget8 = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %gadget8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %gadget, ptr %gadget8, align 4
  %tahvo_mode9 = getelementptr i8, ptr %1, i32 364
  %23 = ptrtoint ptr %tahvo_mode9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tahvo_mode9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp10 = icmp eq i32 %24, 1
  br i1 %cmp10, label %if.then11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %parent.i23 = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %parent.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i23, align 8
  %driver_data.i.i24 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i24, align 4
  %extcon.i = getelementptr i8, ptr %1, i32 368
  %31 = ptrtoint ptr %extcon.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %extcon.i, align 4
  %call1.i = tail call i32 @extcon_set_state_sync(ptr noundef %32, i32 noundef 2, i1 noundef zeroext false) #8
  %call2.i = tail call i32 @retu_write(ptr noundef %30, i8 noundef zeroext 6, i16 noundef zeroext 294) #8
  %33 = ptrtoint ptr %otg7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %otg7, align 4
  %state.i26 = getelementptr inbounds %struct.usb_otg, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %state.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %state.i26, align 4
  tail call fastcc void @check_vbus_state(ptr noundef %add.ptr) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end5.cleanup_crit_edge, %if.end
  tail call void @mutex_unlock(ptr noundef %serialize) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tahvo_usb_vbus_interrupt(i32 noundef %irq, ptr noundef %_tu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %serialize = getelementptr inbounds %struct.tahvo_usb, ptr %_tu, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #8
  tail call fastcc void @check_vbus_state(ptr noundef %_tu)
  tail call void @mutex_unlock(ptr noundef %serialize) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @retu_write(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tahvo_usb_become_host(ptr noundef %tu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tu, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %extcon = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 7
  %6 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extcon, align 4
  %call1 = tail call i32 @extcon_set_state_sync(ptr noundef %7, i32 noundef 2, i1 noundef zeroext true) #8
  %call2 = tail call i32 @retu_write(ptr noundef %5, i8 noundef zeroext 6, i16 noundef zeroext 58) #8
  %otg = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %state, align 4
  tail call fastcc void @check_vbus_state(ptr noundef %tu)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_vbus_state(ptr noundef %tu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tu, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @retu_read(ptr noundef %5, i8 noundef zeroext 2) #8
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %phy = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 1
  %otg = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then.if.end49_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb14
  ]

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

sw.bb:                                            ; preds = %if.then
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 4
  %11 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gadget, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %sw.bb.if.end_crit_edge, label %if.then5

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @usb_gadget_vbus_connect(ptr noundef nonnull %12) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %sw.bb.if.end_crit_edge
  %13 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %otg, align 4
  %state12 = getelementptr inbounds %struct.usb_otg, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %state12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %state12, align 4
  tail call void @usb_phy_set_event(ptr noundef %phy, i32 noundef 4) #8
  br label %if.end49

sw.bb14:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9, ptr %state, align 4
  br label %if.end49

if.else:                                          ; preds = %entry
  %17 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %9, label %if.else.if.end49_crit_edge [
    i32 3, label %sw.bb23
    i32 9, label %sw.bb38
  ]

if.else.if.end49_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

sw.bb23:                                          ; preds = %if.else
  %gadget26 = getelementptr inbounds %struct.usb_otg, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %gadget26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gadget26, align 4
  %tobool27.not = icmp eq ptr %19, null
  br i1 %tobool27.not, label %sw.bb23.if.end33_crit_edge, label %if.then28

sw.bb23.if.end33_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef nonnull %19) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %sw.bb23.if.end33_crit_edge
  %20 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %otg, align 4
  %state36 = getelementptr inbounds %struct.usb_otg, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %state36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state36, align 4
  tail call void @usb_phy_set_event(ptr noundef %phy, i32 noundef 0) #8
  br label %if.end49

sw.bb38:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %state, align 4
  br label %if.end49

if.end49:                                         ; preds = %sw.bb38, %if.end33, %if.else.if.end49_crit_edge, %sw.bb14, %if.end, %if.then.if.end49_crit_edge
  %.str.25.sink = phi ptr [ @.str.21, %if.end ], [ @.str.21, %sw.bb14 ], [ @.str.21, %if.then.if.end49_crit_edge ], [ @.str.25, %if.end33 ], [ @.str.25, %sw.bb38 ], [ @.str.25, %if.else.if.end49_crit_edge ]
  %24 = ptrtoint ptr %tu to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tu, align 4
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull %.str.25.sink) #11
  %vbus_state = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 2
  %26 = ptrtoint ptr %vbus_state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vbus_state, align 4
  store i32 %and, ptr %vbus_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %and)
  %cmp.not = icmp eq i32 %27, %and
  br i1 %cmp.not, label %if.end49.if.end59_crit_edge, label %if.then53

if.end49.if.end59_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %extcon = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 7
  %28 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %extcon, align 4
  %call56 = tail call i32 @extcon_set_state_sync(ptr noundef %29, i32 noundef 1, i1 noundef zeroext %tobool) #8
  %30 = ptrtoint ptr %tu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tu, align 4
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3
  tail call void @sysfs_notify(ptr noundef %dev58, ptr noundef null, ptr noundef nonnull @.str.27) #8
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.end49.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_vbus_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_phy_set_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tahvo_usb_become_peripheral(ptr noundef %tu) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tu, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %extcon = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 7
  %6 = ptrtoint ptr %extcon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extcon, align 4
  %call1 = tail call i32 @extcon_set_state_sync(ptr noundef %7, i32 noundef 2, i1 noundef zeroext false) #8
  %call2 = tail call i32 @retu_write(ptr noundef %5, i8 noundef zeroext 6, i16 noundef zeroext 294) #8
  %otg = getelementptr inbounds %struct.tahvo_usb, ptr %tu, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otg, align 4
  %state = getelementptr inbounds %struct.usb_otg, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state, align 4
  tail call fastcc void @check_vbus_state(ptr noundef %tu)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vbus_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vbus_state = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vbus_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vbus_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @otg_mode_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tahvo_mode = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tahvo_mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.32, i32 6)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.33, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb2 ], [ 5, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otg_mode_store(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %serialize = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %serialize, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ugt i32 %count, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @.str.34, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.else12

if.then:                                          ; preds = %land.lhs.true
  %tahvo_mode = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tahvo_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp3 = icmp eq i32 %3, 1
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then4:                                         ; preds = %if.then
  %otg.i = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %otg.i, align 4
  %gadget.i = getelementptr inbounds %struct.usb_otg, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gadget.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then4.tahvo_usb_stop_peripheral.exit_crit_edge, label %if.then.i

if.then4.tahvo_usb_stop_peripheral.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %tahvo_usb_stop_peripheral.exit

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @usb_gadget_vbus_disconnect(ptr noundef nonnull %7) #8
  br label %tahvo_usb_stop_peripheral.exit

tahvo_usb_stop_peripheral.exit:                   ; preds = %if.then.i, %if.then4.tahvo_usb_stop_peripheral.exit_crit_edge
  %8 = ptrtoint ptr %otg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %otg.i, align 4
  %state.i = getelementptr inbounds %struct.usb_otg, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %state.i, align 4
  br label %if.end

if.end:                                           ; preds = %tahvo_usb_stop_peripheral.exit, %if.then.if.end_crit_edge
  %11 = ptrtoint ptr %tahvo_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %tahvo_mode, align 4
  %otg = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %otg, align 4
  %host = getelementptr inbounds %struct.usb_otg, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %do.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.35) #11
  tail call fastcc void @tahvo_usb_become_host(ptr noundef %1)
  br label %if.end38.sink.split

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.38) #11
  tail call fastcc void @tahvo_usb_power_off(ptr noundef %1)
  br label %if.end38.sink.split

if.else12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %count)
  %cmp13 = icmp ugt i32 %count, 9
  br i1 %cmp13, label %land.lhs.true14, label %if.else12.if.end38_crit_edge

if.else12.if.end38_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true14:                                  ; preds = %if.else12
  %call15 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(11) @.str.40, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %land.lhs.true14.if.end38_crit_edge

land.lhs.true14.if.end38_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then17:                                        ; preds = %land.lhs.true14
  %tahvo_mode18 = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %tahvo_mode18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tahvo_mode18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then20, label %if.then17.if.end21_crit_edge

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %otg.i61 = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %otg.i61 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %otg.i61, align 4
  %state.i62 = getelementptr inbounds %struct.usb_otg, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %state.i62 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %state.i62, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17.if.end21_crit_edge
  %21 = ptrtoint ptr %tahvo_mode18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %tahvo_mode18, align 4
  %otg24 = getelementptr inbounds %struct.tahvo_usb, ptr %1, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %otg24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %otg24, align 4
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gadget, align 4
  %tobool25.not = icmp eq ptr %25, null
  br i1 %tobool25.not, label %do.end33, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.42) #11
  tail call fastcc void @tahvo_usb_become_peripheral(ptr noundef %1)
  br label %if.end38.sink.split

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.45) #11
  tail call fastcc void @tahvo_usb_power_off(ptr noundef %1)
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %do.end33, %do.end29, %do.end9, %do.end
  %call35 = tail call i32 @strlen(ptr noundef %buf) #12
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %land.lhs.true14.if.end38_crit_edge, %if.else12.if.end38_crit_edge, %entry.if.end38_crit_edge
  %r.0 = phi i32 [ -22, %land.lhs.true14.if.end38_crit_edge ], [ -22, %if.else12.if.end38_crit_edge ], [ -22, %entry.if.end38_crit_edge ], [ %call35, %if.end38.sink.split ]
  tail call void @mutex_unlock(ptr noundef %serialize) #8
  ret i32 %r.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !64, !65, !67, !69, !70, !72, !74, !76, !77, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_phy_tahvo__294_435_tahvo_usb_driver_init6, !1, !"__initcall__kmod_phy_tahvo__294_435_tahvo_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 435, i32 1}
!2 = !{ptr @__exitcall_tahvo_usb_driver_exit, !1, !"__exitcall_tahvo_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 437, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 438, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author298, !9, !"__UNIQUE_ID_author298", i1 false, i1 false}
!9 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 439, i32 1}
!10 = !{ptr @__UNIQUE_ID_author299, !11, !"__UNIQUE_ID_author299", i1 false, i1 false}
!11 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 440, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 431, i32 11}
!14 = !{ptr @tahvo_usb_driver, !15, !"tahvo_usb_driver", i1 false, i1 false}
!15 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 427, i32 31}
!16 = !{ptr @tahvo_usb_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 342, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 344, i32 37}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 355, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tahvo_usb_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @tahvo_usb_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 362, i32 3}
!31 = !{ptr @tahvo_usb_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tahvo_usb_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 385, i32 3}
!35 = !{ptr @tahvo_usb_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tahvo_usb_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 397, i32 8}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 399, i32 3}
!41 = !{ptr @tahvo_usb_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @tahvo_usb_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @tahvo_cable, !44, !"tahvo_cable", i1 false, i1 false}
!44 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 55, i32 27}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 180, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tahvo_usb_set_suspend.__UNIQUE_ID_ddebug293, !46, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 95, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @check_vbus_state._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @check_vbus_state._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 110, i32 3}
!58 = !{ptr @check_vbus_state._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @check_vbus_state._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 117, i32 45}
!62 = !{ptr @tahvo_groups, !63, !"tahvo_groups", i1 false, i1 false}
!63 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 316, i32 1}
!64 = !{ptr @tahvo_group, !63, !"tahvo_group", i1 false, i1 false}
!65 = !{ptr @tahvo_attrs, !66, !"tahvo_attrs", i1 false, i1 false}
!66 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 311, i32 26}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 68, i32 8}
!69 = !{ptr @dev_attr_vbus, !68, !"dev_attr_vbus", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 66, i32 47}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 66, i32 54}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 309, i32 8}
!76 = !{ptr @dev_attr_otg_mode, !75, !"dev_attr_otg_mode", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 262, i32 23}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 264, i32 23}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 278, i32 33}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 283, i32 4}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @otg_mode_store._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @otg_mode_store._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 286, i32 4}
!90 = !{ptr @otg_mode_store._entry.37, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @otg_mode_store._entry_ptr.39, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 290, i32 41}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 295, i32 4}
!96 = !{ptr @otg_mode_store._entry.41, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @otg_mode_store._entry_ptr.43, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/phy/phy-tahvo.c", i32 298, i32 4}
!100 = !{ptr @otg_mode_store._entry.44, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @otg_mode_store._entry_ptr.46, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148161125, i64 2148161130, i64 2148161143, i64 2148161187, i64 2148161221, i64 2148161242}
