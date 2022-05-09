; ModuleID = '/llk/IR_all_yes/drivers/power/supply/twl4030_charger.c_pt.bc'
source_filename = "../drivers/power/supply/twl4030_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.twl4030_bci_platform_data = type { ptr, i32, i32, i32 }
%struct.twl4030_bci = type { ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i32, i32, i32, %struct.delayed_work, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__param_str_allow_usb = internal constant [26 x i8] c"twl4030_charger.allow_usb\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@allow_usb = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_allow_usb = internal constant %struct.kernel_param { ptr @__param_str_allow_usb, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @allow_usb } }, section "__param", align 4
@__UNIQUE_ID_allow_usbtype293 = internal constant [40 x i8] c"twl4030_charger.parmtype=allow_usb:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_allow_usb294 = internal constant [72 x i8] c"twl4030_charger.parm=allow_usb:Allow USB charge drawing default current\00", section ".modinfo", align 1
@__initcall__kmod_twl4030_charger__300_1145_twl4030_bci_driver_init6 = internal global ptr @twl4030_bci_driver_init, section ".initcall6.init", align 4
@twl4030_bci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_bci_probe, ptr @twl4030_bci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_bci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_bci_driver_exit = internal global ptr @twl4030_bci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [42 x i8] c"twl4030_charger.author=Gra\C5\BEvydas Ignotas\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [69 x i8] c"twl4030_charger.description=TWL4030 Battery Charger Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [58 x i8] c"twl4030_charger.file=drivers/power/supply/twl4030_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [28 x i8] c"twl4030_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [43 x i8] c"twl4030_charger.alias=platform:twl4030_bci\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl4030_bci\00", [20 x i8] zeroinitializer }, align 32
@twl_bci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-bci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@twl4030_bci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&bci->work)\00", [34 x i8] zeroinitializer }, align 32
@twl4030_bci_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&bci->current_worker)->work)\00", [47 x i8] zeroinitializer }, align 32
@twl4030_bci_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&bci->current_worker)->timer\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vac\00", [28 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1016, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not request vac iio channel (%d)\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl4030_bci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/twl4030_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr = internal global ptr @twl4030_bci_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,twl4030-usb\00", [17 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.9, i32 1035, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not request transceiver (%d)\00", [61 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.15 = internal global ptr @twl4030_bci_probe._entry.13, section ".printk_index", align 4
@twl4030_bci_ac_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.45, i32 3, ptr null, i32 0, ptr @twl4030_charger_props, i32 5, ptr @twl4030_bci_get_property, ptr @twl4030_bci_set_property, ptr @twl4030_bci_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 1045, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register ac: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.19 = internal global ptr @twl4030_bci_probe._entry.16, section ".printk_index", align 4
@twl4030_bci_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.49, i32 4, ptr null, i32 0, ptr @twl4030_charger_props, i32 5, ptr @twl4030_bci_get_property, ptr @twl4030_bci_set_property, ptr @twl4030_bci_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 1053, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register usb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.22 = internal global ptr @twl4030_bci_probe._entry.20, section ".printk_index", align 4
@twl4030_bci_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.9, i32 1062, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not request irq %d, status %d\0A\00", [59 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.25 = internal global ptr @twl4030_bci_probe._entry.23, section ".printk_index", align 4
@twl4030_bci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.9, i32 1070, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.27 = internal global ptr @twl4030_bci_probe._entry.26, section ".printk_index", align 4
@twl4030_bci_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.9, i32 1080, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to unmask interrupts: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.30 = internal global ptr @twl4030_bci_probe._entry.28, section ".printk_index", align 4
@twl4030_bci_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.9, i32 1088, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.32 = internal global ptr @twl4030_bci_probe._entry.31, section ".printk_index", align 4
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @twl4030_bci_mode_show, ptr @twl4030_bci_mode_store }, [36 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.9, i32 1092, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not create sysfs file\0A\00", [35 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.35 = internal global ptr @twl4030_bci_probe._entry.33, section ".printk_index", align 4
@twl4030_bci_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.8, ptr @.str.9, i32 1094, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@twl4030_bci_probe._entry_ptr.37 = internal global ptr @twl4030_bci_probe._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,bb-uvolt\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,bb-uamp\00", [21 x i8] zeroinitializer }, align 32
@twl4030_current_worker.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.9, ptr @.str.42, i8 0, i8 103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl4030_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl4030_current_worker\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"v=%d cur=%d limit=%d target=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@twl4030_bci_usb_ncb.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.43, ptr @.str.9, ptr @.str.44, i8 0, i8 -89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_bci_usb_ncb\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OTG notify %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"twl4030_ac\00", [21 x i8] zeroinitializer }, align 32
@twl4030_charger_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 12, i32 17, i32 38], [44 x i8] zeroinitializer }, align 32
@twl4030bci_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.9, i32 768, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error reading BCIMSTATEC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl4030bci_state\00", [47 x i8] zeroinitializer }, align 32
@twl4030bci_state._entry_ptr = internal global ptr @twl4030bci_state._entry, section ".printk_index", align 4
@twl4030bci_state.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.47, ptr @.str.9, ptr @.str.48, i8 0, i8 -63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"state: %02x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl4030_usb\00", [20 x i8] zeroinitializer }, align 32
@twl4030_charger_interrupt.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.50, ptr @.str.9, ptr @.str.51, i8 0, i8 -108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"twl4030_charger_interrupt\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CHG_PRES irq\0A\00", [18 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.52, ptr @.str.9, ptr @.str.53, i8 0, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"twl4030_bci_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BCI irq %02x %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.9, i32 632, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"battery temperature out of range\0A\00", [62 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt._entry_ptr = internal global ptr @twl4030_bci_interrupt._entry, section ".printk_index", align 4
@twl4030_bci_interrupt._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.52, ptr @.str.9, i32 635, ptr @.str.57, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"battery disconnected\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt._entry_ptr.58 = internal global ptr @twl4030_bci_interrupt._entry.55, section ".printk_index", align 4
@twl4030_bci_interrupt._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.9, i32 638, ptr @.str.57, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VBAT overvoltage\0A\00", [46 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt._entry_ptr.61 = internal global ptr @twl4030_bci_interrupt._entry.59, section ".printk_index", align 4
@twl4030_bci_interrupt._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.9, i32 641, ptr @.str.57, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VBUS overvoltage\0A\00", [46 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt._entry_ptr.64 = internal global ptr @twl4030_bci_interrupt._entry.62, section ".printk_index", align 4
@twl4030_bci_interrupt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.52, ptr @.str.9, i32 644, ptr @.str.57, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Ac charger overvoltage\0A\00", [40 x i8] zeroinitializer }, align 32
@twl4030_bci_interrupt._entry_ptr.67 = internal global ptr @twl4030_bci_interrupt._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[%s] \00", [26 x i8] zeroinitializer }, align 32
@modes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73], [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"continuous\00", [21 x i8] zeroinitializer }, align 32
@twl4030_charger_enable_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.74, ptr @.str.9, i32 463, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"twl4030_charger_enable_usb\00", [37 x i8] zeroinitializer }, align 32
@twl4030_charger_enable_usb._entry_ptr = internal global ptr @twl4030_charger_enable_usb._entry, section ".printk_index", align 4
@twl4030_charger_enable_usb._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.74, ptr @.str.9, i32 482, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@twl4030_charger_enable_usb._entry_ptr.76 = internal global ptr @twl4030_charger_enable_usb._entry.75, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 12, i64 17, i64 38]
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"allow_usb\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 107, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"twl4030_bci_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1137, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1141, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"twl_bci_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1131, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1007, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1008, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1010, i32 54 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1015, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1024, i32 9 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1034, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"twl4030_bci_ac_desc\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 956, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1045, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"twl4030_bci_usb_desc\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 966, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1053, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1061, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1069, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1080, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1088, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1092, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 1094, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 942, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 944, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 414, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 669, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 957, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant [22 x i8] c"twl4030_charger_props\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 920, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 768, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 772, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 967, i32 11 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 592, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 621, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 632, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 635, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 638, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 641, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 644, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 737, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 730, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 20 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 733, i32 6 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 39 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 152, i32 47 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 461, i32 5 }
@___asan_gen_.303 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.304 = private constant [42 x i8] c"../drivers/power/supply/twl4030_charger.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 480, i32 5 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_allow_usb294, ptr @__UNIQUE_ID_allow_usbtype293, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_twl4030_bci_driver_exit, ptr @__initcall__kmod_twl4030_charger__300_1145_twl4030_bci_driver_init6, ptr @__param_allow_usb, ptr @twl4030_bci_driver_exit, ptr @twl4030_bci_interrupt._entry, ptr @twl4030_bci_interrupt._entry.55, ptr @twl4030_bci_interrupt._entry.59, ptr @twl4030_bci_interrupt._entry.62, ptr @twl4030_bci_interrupt._entry.65, ptr @twl4030_bci_interrupt._entry_ptr, ptr @twl4030_bci_interrupt._entry_ptr.58, ptr @twl4030_bci_interrupt._entry_ptr.61, ptr @twl4030_bci_interrupt._entry_ptr.64, ptr @twl4030_bci_interrupt._entry_ptr.67, ptr @twl4030_bci_probe._entry, ptr @twl4030_bci_probe._entry.13, ptr @twl4030_bci_probe._entry.16, ptr @twl4030_bci_probe._entry.20, ptr @twl4030_bci_probe._entry.23, ptr @twl4030_bci_probe._entry.26, ptr @twl4030_bci_probe._entry.28, ptr @twl4030_bci_probe._entry.31, ptr @twl4030_bci_probe._entry.33, ptr @twl4030_bci_probe._entry.36, ptr @twl4030_bci_probe._entry_ptr, ptr @twl4030_bci_probe._entry_ptr.15, ptr @twl4030_bci_probe._entry_ptr.19, ptr @twl4030_bci_probe._entry_ptr.22, ptr @twl4030_bci_probe._entry_ptr.25, ptr @twl4030_bci_probe._entry_ptr.27, ptr @twl4030_bci_probe._entry_ptr.30, ptr @twl4030_bci_probe._entry_ptr.32, ptr @twl4030_bci_probe._entry_ptr.35, ptr @twl4030_bci_probe._entry_ptr.37, ptr @twl4030_charger_enable_usb._entry, ptr @twl4030_charger_enable_usb._entry.75, ptr @twl4030_charger_enable_usb._entry_ptr, ptr @twl4030_charger_enable_usb._entry_ptr.76, ptr @twl4030bci_state._entry, ptr @twl4030bci_state._entry_ptr, ptr @allow_usb, ptr @twl4030_bci_driver, ptr @.str, ptr @twl_bci_of_match, ptr @twl4030_bci_probe.__key, ptr @.str.1, ptr @twl4030_bci_probe.__key.2, ptr @.str.3, ptr @twl4030_bci_probe.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @twl4030_bci_ac_desc, ptr @.str.17, ptr @.str.18, ptr @twl4030_bci_usb_desc, ptr @.str.21, ptr @.str.24, ptr @.str.29, ptr @dev_attr_mode, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @twl4030_charger_props, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @modes, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allow_usb to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_bci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_ac_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_charger_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030bci_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_interrupt._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_interrupt._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_interrupt._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_bci_interrupt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_charger_enable_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_charger_enable_usb._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_bci_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_bci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_bci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.addr.i306 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %num.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 228, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup190_crit_edge, label %if.end

entry.cleanup190_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup190

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #7
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %num.i, align 4, !annotation !171
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then2.twl4030_bci_parse_dt.exit_crit_edge, label %if.end.i

if.then2.twl4030_bci_parse_dt.exit_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_bci_parse_dt.exit

if.end.i:                                         ; preds = %if.then2
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool1.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.twl4030_bci_parse_dt.exit_crit_edge, label %if.end3.i

if.end.i.twl4030_bci_parse_dt.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_bci_parse_dt.exit

if.end3.i:                                        ; preds = %if.end.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.38, ptr noundef nonnull %num.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end3.i.if.end6.i_crit_edge

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i, align 4
  %bb_uvolt.i = getelementptr inbounds %struct.twl4030_bci_platform_data, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %bb_uvolt.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bb_uvolt.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %call.i.i20.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.39, ptr noundef nonnull %num.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i20.i)
  %cmp8.i = icmp sgt i32 %call.i.i20.i, -1
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.twl4030_bci_parse_dt.exit_crit_edge

if.end6.i.twl4030_bci_parse_dt.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_bci_parse_dt.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num.i, align 4
  %bb_uamp.i = getelementptr inbounds %struct.twl4030_bci_platform_data, ptr %call.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %bb_uamp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bb_uamp.i, align 4
  br label %twl4030_bci_parse_dt.exit

twl4030_bci_parse_dt.exit:                        ; preds = %if.then9.i, %if.end6.i.twl4030_bci_parse_dt.exit_crit_edge, %if.end.i.twl4030_bci_parse_dt.exit_crit_edge, %if.then2.twl4030_bci_parse_dt.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then2.twl4030_bci_parse_dt.exit_crit_edge ], [ null, %if.end.i.twl4030_bci_parse_dt.exit_crit_edge ], [ %call.i.i, %if.then9.i ], [ %call.i.i, %if.end6.i.twl4030_bci_parse_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #7
  br label %if.end5

if.end5:                                          ; preds = %twl4030_bci_parse_dt.exit, %if.end.if.end5_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end.if.end5_crit_edge ], [ %retval.0.i, %twl4030_bci_parse_dt.exit ]
  %ichg_eoc = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %ichg_eoc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 80100, ptr %ichg_eoc, align 4
  %ichg_lo = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %ichg_lo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 241000, ptr %ichg_lo, align 4
  %ichg_hi = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %ichg_hi to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 500000, ptr %ichg_hi, align 4
  %ac_cur = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 13
  %14 = ptrtoint ptr %ac_cur to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 500000, ptr %ac_cur, align 4
  %15 = load i8, ptr @allow_usb, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  %spec.select = select i1 %tobool6.not, i32 100000, i32 500000
  %16 = getelementptr %struct.twl4030_bci, ptr %call.i, i32 0, i32 18
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select, ptr %16, align 4
  %usb_mode = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %usb_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %usb_mode, align 4
  %ac_mode = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 17
  %19 = ptrtoint ptr %ac_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ac_mode, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %call.i, align 4
  %call12 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq_chg = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %irq_chg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call12, ptr %irq_chg, align 4
  %call13 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #7
  %irq_bci = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %irq_bci to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call13, ptr %irq_bci, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %work = getelementptr %struct.twl4030_bci, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %24 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @twl4030_bci_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry17 = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @twl4030_bci_usb_work, ptr %func, align 4
  %current_worker = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 19
  call void @__init_work(ptr noundef %current_worker, i32 noundef 0) #7
  %28 = ptrtoint ptr %current_worker to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %current_worker, align 4
  %lockdep_map29 = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 19, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.3, ptr noundef nonnull @twl4030_bci_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry32 = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 19, i32 0, i32 1
  %29 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i300 = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 19, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i300 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry32, ptr %prev.i300, align 4
  %func35 = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 19, i32 0, i32 2
  %31 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @twl4030_current_worker, ptr %func35, align 4
  %timer = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 19, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.5, ptr noundef nonnull @twl4030_bci_probe.__key.4) #7
  %call45 = call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  %channel_vac = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 14
  %32 = ptrtoint ptr %channel_vac to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call45, ptr %channel_vac, align 4
  %cmp.i301 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then48, label %if.end5.if.end59_crit_edge

if.end5.if.end59_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then48:                                        ; preds = %if.end5
  %cmp51 = icmp eq ptr %call45, inttoptr (i32 -517 to ptr)
  br i1 %cmp51, label %if.then48.cleanup190_crit_edge, label %do.end56

if.then48.cleanup190_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup190

do.end56:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call45 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %33) #10
  %34 = ptrtoint ptr %channel_vac to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %channel_vac, align 4
  br label %if.end59

if.end59:                                         ; preds = %do.end56, %if.end5.if.end59_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %tobool61.not = icmp eq ptr %38, null
  br i1 %tobool61.not, label %if.end59.if.end86_crit_edge, label %if.then62

if.end59.if.end86_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then62:                                        ; preds = %if.end59
  %parent = getelementptr inbounds %struct.device_node, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent, align 4
  %call65 = call ptr @of_get_compatible_child(ptr noundef %40, ptr noundef nonnull @.str.12) #7
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.then62.if.end86_crit_edge, label %if.then67

if.then62.if.end86_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then67:                                        ; preds = %if.then62
  %usb_nb = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %usb_nb to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @twl4030_bci_usb_ncb, ptr %usb_nb, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call70 = call ptr @devm_usb_get_phy_by_node(ptr noundef %43, ptr noundef nonnull %call65, ptr noundef %usb_nb) #7
  %transceiver = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 3
  %44 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call70, ptr %transceiver, align 4
  call void @of_node_put(ptr noundef nonnull %call65) #7
  %45 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %transceiver, align 4
  %cmp.i302 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.then73, label %if.then67.if.end86_crit_edge

if.then67.if.end86_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then73:                                        ; preds = %if.then67
  %cmp76 = icmp eq ptr %46, inttoptr (i32 -517 to ptr)
  br i1 %cmp76, label %if.then73.cleanup190_crit_edge, label %do.end81

if.then73.cleanup190_crit_edge:                   ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup190

do.end81:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %46 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %47) #10
  %48 = ptrtoint ptr %transceiver to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %transceiver, align 4
  br label %if.end86

if.end86:                                         ; preds = %do.end81, %if.then67.if.end86_crit_edge, %if.then62.if.end86_crit_edge, %if.end59.if.end86_crit_edge
  %call88 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @twl4030_bci_ac_desc, ptr noundef null) #7
  %ac = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %ac to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call88, ptr %ac, align 4
  %cmp.i303 = icmp ugt ptr %call88, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then91, label %if.end98

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %call88 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %50) #10
  br label %cleanup190

if.end98:                                         ; preds = %if.end86
  %call100 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @twl4030_bci_usb_desc, ptr noundef null) #7
  %usb = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call100, ptr %usb, align 4
  %cmp.i304 = icmp ugt ptr %call100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i304, label %if.then103, label %if.end110

if.then103:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call100 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %52) #10
  br label %cleanup190

if.end110:                                        ; preds = %if.end98
  %53 = ptrtoint ptr %irq_chg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq_chg, align 4
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %call113 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %54, ptr noundef null, ptr noundef nonnull @twl4030_charger_interrupt, i32 noundef 8192, ptr noundef %56, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end118, label %if.end121

do.end118:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %irq_chg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq_chg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %58, i32 noundef %call113) #10
  br label %cleanup190

if.end121:                                        ; preds = %if.end110
  %59 = ptrtoint ptr %irq_bci to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq_bci, align 4
  %61 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev, align 8
  %call125 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %60, ptr noundef null, ptr noundef nonnull @twl4030_bci_interrupt, i32 noundef 8192, ptr noundef %62, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %do.end130, label %if.end133

do.end130:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %irq_bci to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq_bci, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %64, i32 noundef %call125) #10
  br label %cleanup190

if.end133:                                        ; preds = %if.end121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %65 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 7, ptr %val.addr.i, align 1
  %call.i305 = call i32 @twl_i2c_write(i8 noundef zeroext 15, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp135 = icmp slt i32 %call.i305, 0
  br i1 %cmp135, label %do.end140, label %if.end142

do.end140:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call.i305) #10
  br label %cleanup190

if.end142:                                        ; preds = %if.end133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i306)
  %66 = ptrtoint ptr %val.addr.i306 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -15, ptr %val.addr.i306, align 1
  %call.i307 = call i32 @twl_i2c_write(i8 noundef zeroext 15, ptr noundef nonnull %val.addr.i306, i8 noundef zeroext 3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i306)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %cmp145 = icmp slt i32 %call.i307, 0
  br i1 %cmp145, label %do.end150, label %if.end142.if.end152_crit_edge

if.end142.if.end152_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

do.end150:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call.i307) #10
  br label %if.end152

if.end152:                                        ; preds = %do.end150, %if.end142.if.end152_crit_edge
  call fastcc void @twl4030_charger_update_current(ptr noundef nonnull %call.i)
  %67 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %usb, align 4
  %dev155 = getelementptr inbounds %struct.power_supply, ptr %68, i32 0, i32 7
  %call156 = call i32 @device_create_file(ptr noundef %dev155, ptr noundef nonnull @dev_attr_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end152.if.end163_crit_edge, label %do.end161

if.end152.if.end163_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

do.end161:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %if.end163

if.end163:                                        ; preds = %do.end161, %if.end152.if.end163_crit_edge
  %69 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ac, align 4
  %dev165 = getelementptr inbounds %struct.power_supply, ptr %70, i32 0, i32 7
  %call166 = call i32 @device_create_file(ptr noundef %dev165, ptr noundef nonnull @dev_attr_mode) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.end163.if.end173_crit_edge, label %do.end171

if.end163.if.end173_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

do.end171:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #10
  br label %if.end173

if.end173:                                        ; preds = %do.end171, %if.end163.if.end173_crit_edge
  %call174 = call fastcc i32 @twl4030_charger_enable_ac(ptr noundef nonnull %call.i, i1 noundef zeroext true)
  %transceiver175 = getelementptr inbounds %struct.twl4030_bci, ptr %call.i, i32 0, i32 3
  %71 = ptrtoint ptr %transceiver175 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %transceiver175, align 4
  %tobool.not.i308 = icmp eq ptr %72, null
  %cmp.i309 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i308, %cmp.i309
  br i1 %spec.select.i, label %if.else181, label %if.then177

if.then177:                                       ; preds = %if.end173
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %last_event, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_bci_usb_ncb.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@twl4030_bci_probe, %twl4030_bci_usb_ncb.exit)) #7
          to label %if.then.i [label %twl4030_bci_usb_ncb.exit], !srcloc !173

if.then.i:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_bci_usb_ncb.__UNIQUE_ID_ddebug298, ptr noundef %76, ptr noundef nonnull @.str.44, i32 noundef %74) #7
  br label %twl4030_bci_usb_ncb.exit

twl4030_bci_usb_ncb.exit:                         ; preds = %if.then.i, %if.then177
  %77 = load i8, ptr @allow_usb, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool5.not.i = icmp eq i8 %77, 0
  %spec.select.i310 = select i1 %tobool5.not.i, i32 100000, i32 500000
  %78 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %spec.select.i310, ptr %16, align 4
  %event.i = getelementptr %struct.twl4030_bci, ptr %call.i, i32 0, i32 20
  %79 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %74, ptr %event.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %80 = load ptr, ptr @system_wq, align 4
  %call.i.i.i311 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %80, ptr noundef %work) #7
  br label %if.end183

if.else181:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  %call182 = call fastcc i32 @twl4030_charger_enable_usb(ptr noundef nonnull %call.i, i1 noundef zeroext false)
  br label %if.end183

if.end183:                                        ; preds = %if.else181, %twl4030_bci_usb_ncb.exit
  %tobool184.not = icmp eq ptr %pdata.0, null
  br i1 %tobool184.not, label %if.else187, label %if.then185

if.then185:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  %bb_uvolt = getelementptr inbounds %struct.twl4030_bci_platform_data, ptr %pdata.0, i32 0, i32 2
  %81 = ptrtoint ptr %bb_uvolt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %bb_uvolt, align 4
  %bb_uamp = getelementptr inbounds %struct.twl4030_bci_platform_data, ptr %pdata.0, i32 0, i32 3
  %83 = ptrtoint ptr %bb_uamp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bb_uamp, align 4
  call fastcc void @twl4030_charger_enable_backup(i32 noundef %82, i32 noundef %84)
  br label %cleanup190

if.else187:                                       ; preds = %if.end183
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %85 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i.i312 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %val.i.i, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i312)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i312, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else187.twl4030_charger_enable_backup.exit_crit_edge

if.else187.twl4030_charger_enable_backup.exit_crit_edge: ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_charger_enable_backup.exit

if.end.i.i:                                       ; preds = %if.else187
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %val.i.i, align 1
  %and.i.i = and i8 %87, -17
  store i8 %and.i.i, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  %88 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %and.i.i, ptr %val.addr.i.i.i, align 1
  %call.i12.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  br label %twl4030_charger_enable_backup.exit

twl4030_charger_enable_backup.exit:               ; preds = %if.end.i.i, %if.else187.twl4030_charger_enable_backup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  br label %cleanup190

cleanup190:                                       ; preds = %twl4030_charger_enable_backup.exit, %if.then185, %do.end140, %do.end130, %do.end118, %if.then103, %if.then91, %if.then73.cleanup190_crit_edge, %if.then48.cleanup190_crit_edge, %entry.cleanup190_crit_edge
  %retval.1 = phi i32 [ %50, %if.then91 ], [ %52, %if.then103 ], [ %call113, %do.end118 ], [ %call125, %do.end130 ], [ %call.i305, %do.end140 ], [ -12, %entry.cleanup190_crit_edge ], [ -517, %if.then48.cleanup190_crit_edge ], [ 0, %twl4030_charger_enable_backup.exit ], [ 0, %if.then185 ], [ -517, %if.then73.cleanup190_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %val.addr.i10 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.addr.i.i.i4.i = alloca i8, align 1
  %val.i.i5.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i5.i) #7
  %2 = ptrtoint ptr %val.i.i5.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val.i.i5.i, align 1
  %call.i.i.i6.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i5.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i6.i)
  %tobool.not.i.i7.i = icmp eq i32 %call.i.i.i6.i, 0
  br i1 %tobool.not.i.i7.i, label %if.end.i.i10.i, label %entry.twl4030_charger_enable_ac.exit_crit_edge

entry.twl4030_charger_enable_ac.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_charger_enable_ac.exit

if.end.i.i10.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i.i5.i, align 1
  %and.i.i.i = and i8 %4, -50
  %or11.i.i8.i = or i8 %and.i.i.i, 48
  store i8 %or11.i.i8.i, ptr %val.i.i5.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i4.i) #7
  %5 = ptrtoint ptr %val.addr.i.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or11.i.i8.i, ptr %val.addr.i.i.i4.i, align 1
  %call.i12.i.i9.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i4.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i4.i) #7
  br label %twl4030_charger_enable_ac.exit

twl4030_charger_enable_ac.exit:                   ; preds = %if.end.i.i10.i, %entry.twl4030_charger_enable_ac.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i5.i) #7
  %call2 = call fastcc i32 @twl4030_charger_enable_usb(ptr noundef %1, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %val.i.i, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %twl4030_charger_enable_ac.exit.twl4030_charger_enable_backup.exit_crit_edge

twl4030_charger_enable_ac.exit.twl4030_charger_enable_backup.exit_crit_edge: ; preds = %twl4030_charger_enable_ac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_charger_enable_backup.exit

if.end.i.i:                                       ; preds = %twl4030_charger_enable_ac.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i.i, align 1
  %and.i.i = and i8 %8, -17
  store i8 %and.i.i, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  %9 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and.i.i, ptr %val.addr.i.i.i, align 1
  %call.i12.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  br label %twl4030_charger_enable_backup.exit

twl4030_charger_enable_backup.exit:               ; preds = %if.end.i.i, %twl4030_charger_enable_ac.exit.twl4030_charger_enable_backup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  %usb = getelementptr inbounds %struct.twl4030_bci, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.power_supply, ptr %11, i32 0, i32 7
  call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_mode) #7
  %ac = getelementptr inbounds %struct.twl4030_bci, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ac, align 4
  %dev4 = getelementptr inbounds %struct.power_supply, ptr %13, i32 0, i32 7
  call void @device_remove_file(ptr noundef %dev4, ptr noundef nonnull @dev_attr_mode) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %14 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 15, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i10)
  %15 = ptrtoint ptr %val.addr.i10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %val.addr.i10, align 1
  %call.i11 = call i32 @twl_i2c_write(i8 noundef zeroext 15, ptr noundef nonnull %val.addr.i10, i8 noundef zeroext 3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i10)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_bci_usb_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -28
  %event = getelementptr i8, ptr %data, i32 196
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 3, label %entry.sw.epilog.sink.split_crit_edge5
    i32 0, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge5:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge5
  %.sink = phi i1 [ false, %sw.bb1 ], [ true, %entry.sw.epilog.sink.split_crit_edge ], [ true, %entry.sw.epilog.sink.split_crit_edge5 ]
  %call2 = tail call fastcc i32 @twl4030_charger_enable_usb(ptr noundef %add.ptr, i1 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_current_worker(ptr noundef %data) #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 -124
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val.i, align 1, !annotation !171
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 13, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.twl4030bci_read_adc_val.exit_crit_edge

entry.twl4030bci_read_adc_val.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val.i, align 1
  %call.i.i14.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 12, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool4.not.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.twl4030bci_read_adc_val.exit_crit_edge

if.end.i.twl4030bci_read_adc_val.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = and i8 %2, 3
  %and.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  %conv7.i = zext i8 %5 to i32
  %or.i = or i32 %shl.i, %conv7.i
  br label %twl4030bci_read_adc_val.exit

twl4030bci_read_adc_val.exit:                     ; preds = %if.end6.i, %if.end.i.twl4030bci_read_adc_val.exit_crit_edge, %entry.twl4030bci_read_adc_val.exit_crit_edge
  %retval.0.i51 = phi i32 [ %or.i, %if.end6.i ], [ %call.i.i.i, %entry.twl4030bci_read_adc_val.exit_crit_edge ], [ %call.i.i14.i, %if.end.i.twl4030bci_read_adc_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i51)
  %cmp = icmp slt i32 %retval.0.i51, 0
  %mul = mul i32 %retval.0.i51, 6843
  %v.0 = select i1 %cmp, i32 0, i32 %mul
  %call1 = call fastcc i32 @twl4030_charger_get_current()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_current_worker.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@twl4030_current_worker, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !173

if.then7:                                         ; preds = %twl4030bci_read_adc_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %usb_cur = getelementptr i8, ptr %data, i32 -28
  %8 = ptrtoint ptr %usb_cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_cur, align 4
  %usb_cur_target = getelementptr i8, ptr %data, i32 -4
  %10 = ptrtoint ptr %usb_cur_target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usb_cur_target, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_current_worker.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.42, i32 noundef %v.0, i32 noundef %call1, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %twl4030bci_read_adc_val.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4750000, i32 %v.0)
  %cmp9 = icmp slt i32 %v.0, 4750000
  %usb_cur11 = getelementptr i8, ptr %data, i32 -28
  %12 = ptrtoint ptr %usb_cur11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usb_cur11, align 4
  br i1 %cmp9, label %if.then10, label %if.else18

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999, i32 %13)
  %cmp12 = icmp ugt i32 %13, 19999
  br i1 %cmp12, label %if.then13, label %if.then10.if.end15_crit_edge

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %sub = add i32 %13, -20000
  %14 = ptrtoint ptr %usb_cur11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %usb_cur11, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10.if.end15_crit_edge
  %15 = ptrtoint ptr %usb_cur11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_cur11, align 4
  %usb_cur_target17 = getelementptr i8, ptr %data, i32 -4
  %17 = ptrtoint ptr %usb_cur_target17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %usb_cur_target17, align 4
  br label %if.end31

if.else18:                                        ; preds = %do.end
  %usb_cur_target20 = getelementptr i8, ptr %data, i32 -4
  %18 = ptrtoint ptr %usb_cur_target20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usb_cur_target20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %19)
  %cmp21.not = icmp ult i32 %13, %19
  br i1 %cmp21.not, label %lor.lhs.false, label %if.else18.cleanup_crit_edge

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else18
  %add = add i32 %13, 20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1700000, i32 %add)
  %cmp23 = icmp ugt i32 %add, 1700000
  br i1 %cmp23, label %lor.lhs.false.cleanup_crit_edge, label %if.else25

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else25:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %usb_cur11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %usb_cur11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %data, i32 noundef 10) #7
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.end15
  call fastcc void @twl4030_charger_update_current(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.lhs.false.cleanup_crit_edge, %if.else18.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_usb_ncb(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_bci_usb_ncb.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@twl4030_bci_usb_ncb, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %nb, i32 -16
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_bci_usb_ncb.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %val) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load i8, ptr @allow_usb, align 1, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool5.not, i32 100000, i32 500000
  %3 = getelementptr i8, ptr %nb, i32 104
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select, ptr %3, align 4
  %event = getelementptr i8, ptr %nb, i32 208
  %5 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %val, ptr %event, align 4
  %work = getelementptr i8, ptr %nb, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_charger_interrupt(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_charger_interrupt.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@twl4030_charger_interrupt, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_charger_interrupt.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.51) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ac_cur = getelementptr inbounds %struct.twl4030_bci, ptr %arg, i32 0, i32 13
  %2 = ptrtoint ptr %ac_cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 500000, ptr %ac_cur, align 4
  tail call fastcc void @twl4030_charger_update_current(ptr noundef %arg)
  %ac = getelementptr inbounds %struct.twl4030_bci, ptr %arg, i32 0, i32 1
  %3 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ac, align 4
  tail call void @power_supply_changed(ptr noundef %4) #7
  %usb = getelementptr inbounds %struct.twl4030_bci, ptr %arg, i32 0, i32 2
  %5 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb, align 4
  tail call void @power_supply_changed(ptr noundef %6) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_interrupt(i32 noundef %irq, ptr noundef %arg) #2 align 64 {
entry:
  %irqs1 = alloca i8, align 1
  %irqs2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irqs1) #7
  %0 = ptrtoint ptr %irqs1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %irqs1, align 1, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irqs2) #7
  %1 = ptrtoint ptr %irqs2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %irqs2, align 1, !annotation !171
  %call.i = call i32 @twl_i2c_read(i8 noundef zeroext 15, ptr noundef nonnull %irqs1, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i74 = call i32 @twl_i2c_read(i8 noundef zeroext 15, ptr noundef nonnull %irqs2, i8 noundef zeroext 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp2 = icmp slt i32 %call.i74, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030_bci_interrupt.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@twl4030_bci_interrupt, %do.end)) #7
          to label %if.then9 [label %do.end], !srcloc !173

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %4 = ptrtoint ptr %irqs2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irqs2, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %irqs1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irqs1, align 1
  %conv10 = zext i8 %7 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030_bci_interrupt.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %conv, i32 noundef %conv10) #7
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %8 = ptrtoint ptr %irqs1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irqs1, align 1
  %10 = and i8 %9, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %do.end.if.end15_crit_edge, label %if.then14

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %ac = getelementptr inbounds %struct.twl4030_bci, ptr %arg, i32 0, i32 1
  %11 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ac, align 4
  call void @power_supply_changed(ptr noundef %12) #7
  %usb = getelementptr inbounds %struct.twl4030_bci, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %14) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end.if.end15_crit_edge
  call fastcc void @twl4030_charger_update_current(ptr noundef %arg)
  %15 = ptrtoint ptr %irqs1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %irqs1, align 1
  %17 = and i8 %16, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  br i1 %tobool19.not, label %if.end15.if.end25_crit_edge, label %do.end23

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arg, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.54) #10
  %20 = ptrtoint ptr %irqs1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %.pr = load i8, ptr %irqs1, align 1
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end15.if.end25_crit_edge
  %21 = phi i8 [ %.pr, %do.end23 ], [ %16, %if.end15.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool28.not = icmp sgt i8 %21, -1
  br i1 %tobool28.not, label %if.end25.if.end34_crit_edge, label %do.end32

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arg, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %23, ptr noundef nonnull @.str.56) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %if.end25.if.end34_crit_edge
  %24 = ptrtoint ptr %irqs2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %irqs2, align 1
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not = icmp eq i8 %26, 0
  br i1 %tobool37.not, label %if.end34.if.end43_crit_edge, label %do.end41

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arg, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %28, ptr noundef nonnull @.str.60) #10
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %if.end34.if.end43_crit_edge
  %29 = ptrtoint ptr %irqs2 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %irqs2, align 1
  %31 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool46.not = icmp eq i8 %31, 0
  br i1 %tobool46.not, label %if.end43.if.end52_crit_edge, label %do.end50

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arg, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %33, ptr noundef nonnull @.str.63) #10
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.end43.if.end52_crit_edge
  %34 = ptrtoint ptr %irqs2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %irqs2, align 1
  %36 = and i8 %35, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool55.not = icmp eq i8 %36, 0
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %do.end59

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arg, align 4
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %38, ptr noundef nonnull @.str.66) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.end52.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irqs2) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irqs1) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl4030_charger_update_current(ptr noundef %bci) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i.i42 = alloca i8, align 1
  %val.i.i43 = alloca i8, align 1
  %val.addr.i40 = alloca i8, align 1
  %val.addr.i38 = alloca i8, align 1
  %val.addr.i36 = alloca i8, align 1
  %val.addr.i34 = alloca i8, align 1
  %val.addr.i32 = alloca i8, align 1
  %val.addr.i23 = alloca i8, align 1
  %val.addr.i21 = alloca i8, align 1
  %val.addr.i13 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.i = alloca i32, align 4
  %bcictl1 = alloca i8, align 1
  %oldreg = alloca i8, align 1
  %boot_bci = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcictl1) #7
  %0 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bcictl1, align 1, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %oldreg) #7
  %1 = ptrtoint ptr %oldreg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %oldreg, align 1, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %boot_bci) #7
  %2 = ptrtoint ptr %boot_bci to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %boot_bci, align 1, !annotation !171
  %channel_vac = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 14
  %3 = ptrtoint ptr %channel_vac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel_vac, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !171
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.ac_available.exit.thread_crit_edge, label %if.end.i

entry.ac_available.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac_available.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @iio_read_channel_processed(ptr noundef nonnull %4, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.ac_available.exit.thread_crit_edge, label %ac_available.exit

if.end.i.ac_available.exit.thread_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ac_available.exit.thread

ac_available.exit.thread:                         ; preds = %if.end.i.ac_available.exit.thread_crit_edge, %entry.ac_available.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.else

ac_available.exit:                                ; preds = %if.end.i
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4501, i32 %7)
  %cmp3.i = icmp slt i32 %7, 4501
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br i1 %cmp3.i, label %ac_available.exit.if.else_crit_edge, label %if.then

ac_available.exit.if.else_crit_edge:              ; preds = %ac_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %ac_available.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ac_cur = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 13
  %8 = ptrtoint ptr %ac_cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ac_cur, align 4
  %ac_is_active = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 15
  %10 = ptrtoint ptr %ac_is_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ac_is_active, align 4
  br label %if.end11

if.else:                                          ; preds = %ac_available.exit.if.else_crit_edge, %ac_available.exit.thread
  %usb_cur = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 12
  %11 = ptrtoint ptr %usb_cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_cur, align 4
  %ac_is_active1 = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 15
  %13 = ptrtoint ptr %ac_is_active1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ac_is_active1, align 4
  %usb_cur_target = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 18
  %14 = ptrtoint ptr %usb_cur_target to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_cur_target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp = icmp ugt i32 %12, %15
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %usb_cur to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %usb_cur, align 4
  br label %if.end11

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp6 = icmp ult i32 %12, %15
  br i1 %cmp6, label %if.then7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %current_worker = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %current_worker, i32 noundef 10) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge, %if.end.thread, %if.then
  %cur.1 = phi i32 [ %9, %if.then ], [ %12, %if.then7 ], [ %12, %if.end.if.end11_crit_edge ], [ %15, %if.end.thread ]
  %ichg_eoc = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 9
  %18 = ptrtoint ptr %ichg_eoc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ichg_eoc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 199999, i32 %19)
  %cmp12 = icmp ugt i32 %19, 199999
  %ichg_lo = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 10
  %20 = ptrtoint ptr %ichg_lo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ichg_lo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 399999, i32 %21)
  %cmp15 = icmp ugt i32 %21, 399999
  %ichg_hi = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 11
  %22 = ptrtoint ptr %ichg_hi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ichg_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 819999, i32 %23)
  %cmp18 = icmp ugt i32 %23, 819999
  call void @__sanitizer_cov_trace_const_cmp4(i32 852000, i32 %cur.1)
  %cmp21 = icmp sgt i32 %cur.1, 852000
  %24 = select i1 %cmp21, i1 true, i1 %cmp18
  %25 = select i1 %24, i1 true, i1 %cmp15
  %spec.select = select i1 %25, i1 true, i1 %cmp12
  %call.i.i4 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %bcictl1, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4)
  %cmp25 = icmp slt i32 %call.i.i4, 0
  br i1 %cmp25, label %if.end11.cleanup_crit_edge, label %if.end27

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end11
  %call.i5 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %boot_bci, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp29 = icmp slt i32 %call.i5, 0
  br i1 %cmp29, label %if.then30, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %boot_bci to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %boot_bci, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %27 = ptrtoint ptr %boot_bci to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %boot_bci, align 1
  %29 = and i8 %28, 7
  store i8 %29, ptr %boot_bci, align 1
  %30 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bcictl1, align 1
  %32 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %33 = icmp eq i8 %32, 0
  %cmp42.not = xor i1 %spec.select, %33
  br i1 %cmp42.not, label %if.end31.if.end46_crit_edge, label %if.then44

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %34 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then44.twl4030_clear_set_boot_bci.exit_crit_edge

if.then44.twl4030_clear_set_boot_bci.exit_crit_edge: ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit

if.end.i.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i.i = xor i8 %29, -1
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i.i, align 1
  %and.i.i = and i8 %36, %neg.i.i
  %or11.i.i = or i8 %and.i.i, 48
  store i8 %or11.i.i, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  %37 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %or11.i.i, ptr %val.addr.i.i.i, align 1
  %call.i12.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  br label %twl4030_clear_set_boot_bci.exit

twl4030_clear_set_boot_bci.exit:                  ; preds = %if.end.i.i, %if.then44.twl4030_clear_set_boot_bci.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  br label %if.end46

if.end46:                                         ; preds = %twl4030_clear_set_boot_bci.exit, %if.end31.if.end46_crit_edge
  %38 = ptrtoint ptr %ichg_eoc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ichg_eoc, align 4
  %div.i = sdiv i32 %39, 2
  %spec.select.i = select i1 %spec.select, i32 %div.i, i32 %39
  %mul.i = mul i32 %spec.select.i, 10
  %add.i = add i32 %mul.i, 8500000
  %div1.i = sdiv i32 %add.i, 16618
  %40 = call i32 @llvm.smax.i32(i32 %div1.i, i32 512) #7
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 632)
  %42 = shl nuw nsw i32 %41, 1
  %conv59 = and i32 %42, 240
  %43 = ptrtoint ptr %ichg_lo to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ichg_lo, align 4
  %div.i6 = sdiv i32 %44, 2
  %spec.select.i7 = select i1 %spec.select, i32 %div.i6, i32 %44
  %mul.i8 = mul i32 %spec.select.i7, 10
  %add.i9 = add i32 %mul.i8, 8500000
  %div1.i10 = sdiv i32 %add.i9, 16618
  %45 = call i32 @llvm.smax.i32(i32 %div1.i10, i32 512) #7
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 752)
  %shr71 = lshr i32 %46, 4
  %and72 = and i32 %shr71, 15
  %or = or i32 %and72, %conv59
  %conv74 = trunc i32 %or to i8
  %call.i.i11 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %oldreg, i8 noundef zeroext 29, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp76 = icmp slt i32 %call.i.i11, 0
  br i1 %cmp76, label %if.end46.cleanup_crit_edge, label %if.end79

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %if.end46
  %47 = ptrtoint ptr %oldreg to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %oldreg, align 1
  %conv80 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv80)
  %cmp82.not = icmp eq i32 %or, %conv80
  br i1 %cmp82.not, label %if.end79.if.end91_crit_edge, label %if.then84

if.end79.if.end91_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then84:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %49 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -12, ptr %val.addr.i, align 1
  %call.i12 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp86 = icmp slt i32 %call.i12, 0
  br i1 %cmp86, label %if.then84.cleanup_crit_edge, label %if.end89

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end89:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i13)
  %50 = ptrtoint ptr %val.addr.i13 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv74, ptr %val.addr.i13, align 1
  %call.i14 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i13, i8 noundef zeroext 29, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i13)
  br label %if.end91

if.end91:                                         ; preds = %if.end89, %if.end79.if.end91_crit_edge
  %51 = ptrtoint ptr %ichg_hi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ichg_hi, align 4
  %call.i.i20 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %oldreg, i8 noundef zeroext 30, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20)
  %cmp110 = icmp slt i32 %call.i.i20, 0
  br i1 %cmp110, label %if.end91.cleanup_crit_edge, label %if.end113

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end113:                                        ; preds = %if.end91
  %div.i15 = sdiv i32 %52, 2
  %spec.select.i16 = select i1 %spec.select, i32 %div.i15, i32 %52
  %mul.i17 = mul i32 %spec.select.i16, 10
  %add.i18 = add i32 %mul.i17, 8500000
  %div1.i19 = sdiv i32 %add.i18, 16618
  %53 = call i32 @llvm.smax.i32(i32 %div1.i19, i32 512) #7
  %54 = call i32 @llvm.umin.i32(i32 %53, i32 992)
  %55 = lshr i32 %54, 1
  %conv108 = and i32 %55, 240
  %56 = ptrtoint ptr %oldreg to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %oldreg, align 1
  %conv114 = zext i8 %57 to i32
  %and115 = and i32 %conv114, 240
  call void @__sanitizer_cov_trace_cmp4(i32 %and115, i32 %conv108)
  %cmp117.not = icmp eq i32 %and115, %conv108
  br i1 %cmp117.not, label %if.end113.if.end131_crit_edge, label %if.then119

if.end113.if.end131_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then119:                                       ; preds = %if.end113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i21)
  %58 = ptrtoint ptr %val.addr.i21 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -25, ptr %val.addr.i21, align 1
  %call.i22 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i21, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp126 = icmp slt i32 %call.i22, 0
  br i1 %cmp126, label %if.then119.cleanup_crit_edge, label %if.end129

if.then119.cleanup_crit_edge:                     ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end129:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  %and121 = and i32 %conv114, 15
  %or123 = or i32 %and121, %conv108
  %conv124 = trunc i32 %or123 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i23)
  %59 = ptrtoint ptr %val.addr.i23 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv124, ptr %val.addr.i23, align 1
  %call.i24 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i23, i8 noundef zeroext 30, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i23)
  br label %if.end131

if.end131:                                        ; preds = %if.end129, %if.end113.if.end131_crit_edge
  %div.i25 = sdiv i32 %cur.1, 2
  %spec.select.i26 = select i1 %spec.select, i32 %div.i25, i32 %cur.1
  %mul.i27 = mul i32 %spec.select.i26, 10
  %add.i28 = add i32 %mul.i27, 8500000
  %div1.i29 = sdiv i32 %add.i28, 16618
  %60 = call i32 @llvm.smax.i32(i32 %div1.i29, i32 512) #7
  %61 = call i32 @llvm.umin.i32(i32 %60, i32 1023)
  %call.i.i30 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %oldreg, i8 noundef zeroext 39, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp139 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp139, label %if.end131.cleanup_crit_edge, label %if.end142

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end142:                                        ; preds = %if.end131
  %call.i.i31 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %oldreg, i8 noundef zeroext 40, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %cmp145 = icmp slt i32 %call.i.i31, 0
  br i1 %cmp145, label %if.end142.cleanup_crit_edge, label %if.then155

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then155:                                       ; preds = %if.end142
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i32)
  %62 = ptrtoint ptr %val.addr.i32 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -25, ptr %val.addr.i32, align 1
  %call.i33 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i32, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp157 = icmp slt i32 %call.i33, 0
  br i1 %cmp157, label %if.then155.cleanup_crit_edge, label %if.end160

if.then155.cleanup_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end160:                                        ; preds = %if.then155
  %and161 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  %conv163 = select i1 %tobool162.not, i8 2, i8 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i34)
  %63 = ptrtoint ptr %val.addr.i34 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv163, ptr %val.addr.i34, align 1
  %call.i35 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i34, i8 noundef zeroext 40, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp165 = icmp slt i32 %call.i35, 0
  br i1 %cmp165, label %if.end160.cleanup_crit_edge, label %if.end168

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end168:                                        ; preds = %if.end160
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i36)
  %64 = ptrtoint ptr %val.addr.i36 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -25, ptr %val.addr.i36, align 1
  %call.i37 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i36, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp170 = icmp slt i32 %call.i37, 0
  br i1 %cmp170, label %if.end168.cleanup_crit_edge, label %if.end177

if.end168.cleanup_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end177:                                        ; preds = %if.end168
  %conv175 = trunc i32 %61 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i38)
  %65 = ptrtoint ptr %val.addr.i38 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv175, ptr %val.addr.i38, align 1
  %call.i39 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i38, i8 noundef zeroext 39, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i38)
  %66 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bcictl1, align 1
  %68 = and i8 %67, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %69 = icmp eq i8 %68, 0
  %cmp190.not = xor i1 %spec.select, %69
  br i1 %cmp190.not, label %if.end177.cleanup_crit_edge, label %if.then192

if.end177.cleanup_crit_edge:                      ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then192:                                       ; preds = %if.end177
  %xor = xor i8 %67, 32
  %70 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %xor, ptr %bcictl1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i40)
  %71 = ptrtoint ptr %val.addr.i40 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %xor, ptr %val.addr.i40, align 1
  %call.i41 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i40, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i40)
  %72 = ptrtoint ptr %boot_bci to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %boot_bci, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i43) #7
  %74 = ptrtoint ptr %val.i.i43 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %val.i.i43, align 1
  %call.i.i.i44 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i43, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %call.i.i.i44, 0
  br i1 %tobool.not.i.i45, label %if.end.i.i48, label %if.then192.twl4030_clear_set_boot_bci.exit50_crit_edge

if.then192.twl4030_clear_set_boot_bci.exit50_crit_edge: ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit50

if.end.i.i48:                                     ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %val.i.i43 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val.i.i43, align 1
  %77 = or i8 %73, %76
  %or11.i.i46 = or i8 %77, 48
  store i8 %or11.i.i46, ptr %val.i.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i42) #7
  %78 = ptrtoint ptr %val.addr.i.i.i42 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %or11.i.i46, ptr %val.addr.i.i.i42, align 1
  %call.i12.i.i47 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i42, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i42) #7
  br label %twl4030_clear_set_boot_bci.exit50

twl4030_clear_set_boot_bci.exit50:                ; preds = %if.end.i.i48, %if.then192.twl4030_clear_set_boot_bci.exit50_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i43) #7
  br label %cleanup

cleanup:                                          ; preds = %twl4030_clear_set_boot_bci.exit50, %if.end177.cleanup_crit_edge, %if.end168.cleanup_crit_edge, %if.end160.cleanup_crit_edge, %if.then155.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %if.end131.cleanup_crit_edge, %if.then119.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.then84.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.end11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %boot_bci) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %oldreg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcictl1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_charger_enable_ac(ptr nocapture noundef readonly %bci, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i.i4 = alloca i8, align 1
  %val.i.i5 = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ac_mode = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 17
  %0 = ptrtoint ptr %ac_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ac_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %spec.select = and i1 %cmp, %enable
  br i1 %spec.select, label %if.then1, label %if.else

if.then1:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then1.twl4030_clear_set_boot_bci.exit_crit_edge

if.then1.twl4030_clear_set_boot_bci.exit_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit

if.end.i.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val.i.i, align 1
  %or11.i.i = or i8 %4, 49
  store i8 %or11.i.i, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  %5 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %or11.i.i, ptr %val.addr.i.i.i, align 1
  %call.i12.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  br label %twl4030_clear_set_boot_bci.exit

twl4030_clear_set_boot_bci.exit:                  ; preds = %if.end.i.i, %if.then1.twl4030_clear_set_boot_bci.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i12.i.i, %if.end.i.i ], [ %call.i.i.i, %if.then1.twl4030_clear_set_boot_bci.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i5) #7
  %6 = ptrtoint ptr %val.i.i5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i5, align 1
  %call.i.i.i6 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i5, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %call.i.i.i6, 0
  br i1 %tobool.not.i.i7, label %if.end.i.i10, label %if.else.twl4030_clear_set_boot_bci.exit12_crit_edge

if.else.twl4030_clear_set_boot_bci.exit12_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit12

if.end.i.i10:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i.i5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i.i5, align 1
  %and.i.i = and i8 %8, -50
  %or11.i.i8 = or i8 %and.i.i, 48
  store i8 %or11.i.i8, ptr %val.i.i5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i4) #7
  %9 = ptrtoint ptr %val.addr.i.i.i4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or11.i.i8, ptr %val.addr.i.i.i4, align 1
  %call.i12.i.i9 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i4, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i4) #7
  br label %twl4030_clear_set_boot_bci.exit12

twl4030_clear_set_boot_bci.exit12:                ; preds = %if.end.i.i10, %if.else.twl4030_clear_set_boot_bci.exit12_crit_edge
  %retval.0.i.i11 = phi i32 [ %call.i12.i.i9, %if.end.i.i10 ], [ %call.i.i.i6, %if.else.twl4030_clear_set_boot_bci.exit12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i5) #7
  br label %if.end3

if.end3:                                          ; preds = %twl4030_clear_set_boot_bci.exit12, %twl4030_clear_set_boot_bci.exit
  %ret.0 = phi i32 [ %retval.0.i.i, %twl4030_clear_set_boot_bci.exit ], [ %retval.0.i.i11, %twl4030_clear_set_boot_bci.exit12 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_charger_enable_usb(ptr noundef %bci, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  %val.addr.i114 = alloca i8, align 1
  %val.addr.i.i.i104 = alloca i8, align 1
  %val.i.i105 = alloca i8, align 1
  %val.addr.i102 = alloca i8, align 1
  %val.addr.i100 = alloca i8, align 1
  %val.addr.i98 = alloca i8, align 1
  %val.addr.i96 = alloca i8, align 1
  %val.addr.i94 = alloca i8, align 1
  %val.addr.i92 = alloca i8, align 1
  %val.addr.i.i.i83 = alloca i8, align 1
  %val.i.i84 = alloca i8, align 1
  %val.addr.i81 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_mode = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 16
  %0 = ptrtoint ptr %usb_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %spec.select = and i1 %cmp, %enable
  br i1 %spec.select, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %transceiver = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 3
  %2 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transceiver, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %land.lhs.true.if.else_crit_edge, label %if.then1

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then1:                                         ; preds = %land.lhs.true
  tail call fastcc void @twl4030_charger_update_current(ptr noundef %bci)
  %usb_enabled = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 8
  %4 = ptrtoint ptr %usb_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then4, label %if.then1.if.end8_crit_edge

if.then1.if.end8_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %transceiver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transceiver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #7
  %10 = ptrtoint ptr %usb_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %usb_enabled, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.then1.if.end8_crit_edge
  %11 = ptrtoint ptr %usb_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %usb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp10 = icmp eq i32 %12, 1
  br i1 %cmp10, label %if.then11, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %13 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 7, ptr %val.addr.i, align 1
  %call.i79 = call i32 @twl_i2c_write(i8 noundef zeroext 15, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp13 = icmp slt i32 %call.i79, 0
  br i1 %cmp13, label %do.end, label %if.end17

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bci, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef %call.i79) #10
  br label %cleanup

if.end17:                                         ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %val.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end17.twl4030_clear_set_boot_bci.exit_crit_edge

if.end17.twl4030_clear_set_boot_bci.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %val.i.i, align 1
  %or11.i.i = or i8 %18, 50
  store i8 %or11.i.i, ptr %val.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  %19 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %or11.i.i, ptr %val.addr.i.i.i, align 1
  %call.i12.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #7
  br label %twl4030_clear_set_boot_bci.exit

twl4030_clear_set_boot_bci.exit:                  ; preds = %if.end.i.i, %if.end17.twl4030_clear_set_boot_bci.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  br label %if.end19

if.end19:                                         ; preds = %twl4030_clear_set_boot_bci.exit, %if.end8.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %val.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i80 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i80, label %if.end.i, label %if.end19.twl4030_clear_set.exit_crit_edge

if.end19.twl4030_clear_set.exit_crit_edge:        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i, align 1
  %or11.i = or i8 %22, 4
  store i8 %or11.i, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  %23 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or11.i, ptr %val.addr.i.i, align 1
  %call.i12.i = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 16, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  br label %twl4030_clear_set.exit

twl4030_clear_set.exit:                           ; preds = %if.end.i, %if.end19.twl4030_clear_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i12.i, %if.end.i ], [ %call.i.i, %if.end19.twl4030_clear_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  %24 = ptrtoint ptr %usb_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %usb_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp22 = icmp eq i32 %25, 2
  br i1 %cmp22, label %if.then24, label %twl4030_clear_set.exit.cleanup_crit_edge

twl4030_clear_set.exit.cleanup_crit_edge:         ; preds = %twl4030_clear_set.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %twl4030_clear_set.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i81)
  %26 = ptrtoint ptr %val.addr.i81 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 23, ptr %val.addr.i81, align 1
  %call.i82 = call i32 @twl_i2c_write(i8 noundef zeroext 15, ptr noundef nonnull %val.addr.i81, i8 noundef zeroext 2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp27 = icmp slt i32 %call.i82, 0
  br i1 %cmp27, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %bci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bci, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.29, i32 noundef %call.i82) #10
  br label %cleanup

if.end34:                                         ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i84) #7
  %29 = ptrtoint ptr %val.i.i84 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %val.i.i84, align 1
  %call.i.i.i85 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i84, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i85)
  %tobool.not.i.i86 = icmp eq i32 %call.i.i.i85, 0
  br i1 %tobool.not.i.i86, label %if.end.i.i89, label %if.end34.twl4030_clear_set_boot_bci.exit91_crit_edge

if.end34.twl4030_clear_set_boot_bci.exit91_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit91

if.end.i.i89:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %val.i.i84 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %val.i.i84, align 1
  %and.i.i = and i8 %31, -54
  %or11.i.i87 = or i8 %and.i.i, 48
  store i8 %or11.i.i87, ptr %val.i.i84, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i83) #7
  %32 = ptrtoint ptr %val.addr.i.i.i83 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or11.i.i87, ptr %val.addr.i.i.i83, align 1
  %call.i12.i.i88 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i83, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i83) #7
  br label %twl4030_clear_set_boot_bci.exit91

twl4030_clear_set_boot_bci.exit91:                ; preds = %if.end.i.i89, %if.end34.twl4030_clear_set_boot_bci.exit91_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i84) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i92)
  %33 = ptrtoint ptr %val.addr.i92 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 51, ptr %val.addr.i92, align 1
  %call.i93 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i92, i8 noundef zeroext 33, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i92)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i94)
  %34 = ptrtoint ptr %val.addr.i94 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 42, ptr %val.addr.i94, align 1
  %call.i95 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i94, i8 noundef zeroext 1, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i94)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i96)
  %35 = ptrtoint ptr %val.addr.i96 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 38, ptr %val.addr.i96, align 1
  %call.i97 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i96, i8 noundef zeroext 1, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i96)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i98)
  %36 = ptrtoint ptr %val.addr.i98 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -13, ptr %val.addr.i98, align 1
  %call.i99 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i98, i8 noundef zeroext 33, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i98)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i100)
  %37 = ptrtoint ptr %val.addr.i100 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -100, ptr %val.addr.i100, align 1
  %call.i101 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i100, i8 noundef zeroext 17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i100)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i102)
  %38 = ptrtoint ptr %val.addr.i102 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -16, ptr %val.addr.i102, align 1
  %call.i103 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i102, i8 noundef zeroext 20, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i102)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i105) #7
  %39 = ptrtoint ptr %val.i.i105 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %val.i.i105, align 1
  %call.i.i.i106 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i105, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %call.i.i.i106, 0
  br i1 %tobool.not.i.i107, label %if.end.i.i111, label %if.else.twl4030_clear_set_boot_bci.exit113_crit_edge

if.else.twl4030_clear_set_boot_bci.exit113_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set_boot_bci.exit113

if.end.i.i111:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %val.i.i105 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %val.i.i105, align 1
  %and.i.i108 = and i8 %41, -51
  %or11.i.i109 = or i8 %and.i.i108, 48
  store i8 %or11.i.i109, ptr %val.i.i105, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i104) #7
  %42 = ptrtoint ptr %val.addr.i.i.i104 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %or11.i.i109, ptr %val.addr.i.i.i104, align 1
  %call.i12.i.i110 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i104, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i104) #7
  br label %twl4030_clear_set_boot_bci.exit113

twl4030_clear_set_boot_bci.exit113:               ; preds = %if.end.i.i111, %if.else.twl4030_clear_set_boot_bci.exit113_crit_edge
  %retval.0.i.i112 = phi i32 [ %call.i12.i.i110, %if.end.i.i111 ], [ %call.i.i.i106, %if.else.twl4030_clear_set_boot_bci.exit113_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i105) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i114)
  %43 = ptrtoint ptr %val.addr.i114 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 42, ptr %val.addr.i114, align 1
  %call.i115 = call i32 @twl_i2c_write(i8 noundef zeroext 2, ptr noundef nonnull %val.addr.i114, i8 noundef zeroext 1, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i114)
  %or = or i32 %call.i115, %retval.0.i.i112
  %usb_enabled45 = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 8
  %44 = ptrtoint ptr %usb_enabled45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usb_enabled45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool46.not = icmp eq i32 %45, 0
  br i1 %tobool46.not, label %twl4030_clear_set_boot_bci.exit113.if.end54_crit_edge, label %if.then47

twl4030_clear_set_boot_bci.exit113.if.end54_crit_edge: ; preds = %twl4030_clear_set_boot_bci.exit113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then47:                                        ; preds = %twl4030_clear_set_boot_bci.exit113
  call void @__sanitizer_cov_trace_pc() #9
  %transceiver48 = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 3
  %46 = ptrtoint ptr %transceiver48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %transceiver48, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %call.i116 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 12, i32 22
  %50 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store volatile i64 %call.i116, ptr %last_busy.i, align 8
  %51 = ptrtoint ptr %transceiver48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transceiver48, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i117 = call i32 @__pm_runtime_suspend(ptr noundef %54, i32 noundef 13) #7
  %55 = ptrtoint ptr %usb_enabled45 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %usb_enabled45, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %twl4030_clear_set_boot_bci.exit113.if.end54_crit_edge
  %usb_cur = getelementptr inbounds %struct.twl4030_bci, ptr %bci, i32 0, i32 12
  %56 = ptrtoint ptr %usb_cur to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %usb_cur, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %twl4030_clear_set_boot_bci.exit91, %do.end32, %twl4030_clear_set.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i79, %do.end ], [ %call.i82, %do.end32 ], [ %or, %if.end54 ], [ %call.i103, %twl4030_clear_set_boot_bci.exit91 ], [ %retval.0.i, %twl4030_clear_set.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @twl4030_charger_enable_backup(i32 noundef %uvolt, i32 noundef %uamp) unnamed_addr #2 align 64 {
entry:
  %val.addr.i.i1 = alloca i8, align 1
  %val.i2 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %uvolt)
  %cmp = icmp slt i32 %uvolt, 2500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %uamp)
  %cmp1 = icmp slt i32 %uamp, 25
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %val.i, align 1
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %val.i, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.twl4030_clear_set.exit_crit_edge

if.then.twl4030_clear_set.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val.i, align 1
  %and.i = and i8 %2, -17
  store i8 %and.i, ptr %val.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  %3 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and.i, ptr %val.addr.i.i, align 1
  %call.i12.i = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #7
  br label %twl4030_clear_set.exit

twl4030_clear_set.exit:                           ; preds = %if.end.i, %if.then.twl4030_clear_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3199999, i32 %uvolt)
  %cmp2 = icmp ugt i32 %uvolt, 3199999
  br i1 %cmp2, label %if.end.if.end24_crit_edge, label %if.else

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3099999, i32 %uvolt)
  %cmp5 = icmp ugt i32 %uvolt, 3099999
  br i1 %cmp5, label %if.else.if.end24_crit_edge, label %if.else11

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999999, i32 %uvolt)
  %cmp12 = icmp ugt i32 %uvolt, 2999999
  %. = select i1 %cmp12, i8 20, i8 16
  br label %if.end24

if.end24:                                         ; preds = %if.else11, %if.else.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %flags.0 = phi i8 [ 28, %if.end.if.end24_crit_edge ], [ 24, %if.else.if.end24_crit_edge ], [ %., %if.else11 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %uamp)
  %cmp25 = icmp ugt i32 %uamp, 999
  br i1 %cmp25, label %if.end24.if.end51_crit_edge, label %if.else31

if.end24.if.end51_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.else31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %uamp)
  %cmp32 = icmp ugt i32 %uamp, 499
  br i1 %cmp32, label %if.else31.if.end51_crit_edge, label %if.else38

if.else31.if.end51_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.else38:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 149, i32 %uamp)
  %cmp39 = icmp ugt i32 %uamp, 149
  %4 = zext i1 %cmp39 to i8
  br label %if.end51

if.end51:                                         ; preds = %if.else38, %if.else31.if.end51_crit_edge, %if.end24.if.end51_crit_edge
  %.sink = phi i8 [ %4, %if.else38 ], [ 3, %if.end24.if.end51_crit_edge ], [ 2, %if.else31.if.end51_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i2) #7
  %5 = ptrtoint ptr %val.i2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %val.i2, align 1
  %call.i.i3 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %val.i2, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i3)
  %tobool.not.i4 = icmp eq i32 %call.i.i3, 0
  br i1 %tobool.not.i4, label %if.end.i7, label %if.end51.twl4030_clear_set.exit9_crit_edge

if.end51.twl4030_clear_set.exit9_crit_edge:       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_clear_set.exit9

if.end.i7:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = or i8 %flags.0, %.sink
  %6 = ptrtoint ptr %val.i2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i2, align 1
  %and.i5 = and i8 %7, -32
  %or11.i = or i8 %and.i5, %spec.select
  store i8 %or11.i, ptr %val.i2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i1) #7
  %8 = ptrtoint ptr %val.addr.i.i1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or11.i, ptr %val.addr.i.i1, align 1
  %call.i12.i6 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %val.addr.i.i1, i8 noundef zeroext 18, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i1) #7
  br label %twl4030_clear_set.exit9

twl4030_clear_set.exit9:                          ; preds = %if.end.i7, %if.end51.twl4030_clear_set.exit9_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i2) #7
  br label %cleanup

cleanup:                                          ; preds = %twl4030_clear_set.exit9, %twl4030_clear_set.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @twl4030_charger_get_current() unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i8, align 1
  %bcictl1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcictl1) #7
  %0 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bcictl1, align 1, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !171
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 9, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.twl4030bci_read_adc_val.exit_crit_edge

entry.twl4030bci_read_adc_val.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 1
  %call.i.i14.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 8, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool4.not.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool4.not.i, label %twl4030bci_read_adc_val.exit.thread, label %if.end.i.twl4030bci_read_adc_val.exit_crit_edge

if.end.i.twl4030bci_read_adc_val.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit

twl4030bci_read_adc_val.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = and i8 %3, 3
  %and.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %and.i, 8
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val.i, align 1
  %conv7.i = zext i8 %6 to i32
  %or.i = or i32 %shl.i, %conv7.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %if.end

twl4030bci_read_adc_val.exit:                     ; preds = %if.end.i.twl4030bci_read_adc_val.exit_crit_edge, %entry.twl4030bci_read_adc_val.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %entry.twl4030bci_read_adc_val.exit_crit_edge ], [ %call.i.i14.i, %if.end.i.twl4030bci_read_adc_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %twl4030bci_read_adc_val.exit.cleanup_crit_edge, label %twl4030bci_read_adc_val.exit.if.end_crit_edge

twl4030bci_read_adc_val.exit.if.end_crit_edge:    ; preds = %twl4030bci_read_adc_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

twl4030bci_read_adc_val.exit.cleanup_crit_edge:   ; preds = %twl4030bci_read_adc_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %twl4030bci_read_adc_val.exit.if.end_crit_edge, %twl4030bci_read_adc_val.exit.thread
  %retval.0.i13 = phi i32 [ %or.i, %twl4030bci_read_adc_val.exit.thread ], [ %retval.0.i, %twl4030bci_read_adc_val.exit.if.end_crit_edge ]
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %bcictl1, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bcictl1, align 1
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %mul.i = mul i32 %retval.0.i13, 16618
  %sub.i = add i32 %mul.i, -8500000
  %..i = select i1 %tobool4.not, i32 10, i32 5
  %div3.i = sdiv i32 %sub.i, %..i
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %twl4030bci_read_adc_val.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %div3.i, %if.end3 ], [ %retval.0.i, %twl4030bci_read_adc_val.exit.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcictl1) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_get_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef %val) #2 align 64 {
entry:
  %val.i175 = alloca i8, align 1
  %val.i156 = alloca i8, align 1
  %val.i = alloca i8, align 1
  %state.i = alloca i8, align 1
  %s = alloca i8, align 1
  %bcictl1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state.i) #7
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %state.i, align 1, !annotation !171
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %state.i, i8 noundef zeroext 2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.body1.i, label %twl4030bci_state.exit

do.body1.i:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @twl4030bci_state.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@twl4030_bci_get_property, %twl4030bci_state.exit.thread)) #7
          to label %if.then7.i [label %twl4030bci_state.exit.thread], !srcloc !173

if.then7.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state.i, align 1
  %conv.i = zext i8 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @twl4030bci_state.__UNIQUE_ID_ddebug299, ptr noundef %6, ptr noundef nonnull @.str.48, i32 noundef %conv.i) #7
  br label %twl4030bci_state.exit.thread

twl4030bci_state.exit.thread:                     ; preds = %if.then7.i, %do.body1.i
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state.i, align 1
  %conv12.i = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #7
  br label %if.end

twl4030bci_state.exit:                            ; preds = %entry
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.46) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %twl4030bci_state.exit.cleanup101_crit_edge, label %twl4030bci_state.exit.if.end_crit_edge

twl4030bci_state.exit.if.end_crit_edge:           ; preds = %twl4030bci_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

twl4030bci_state.exit.cleanup101_crit_edge:       ; preds = %twl4030bci_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end:                                           ; preds = %twl4030bci_state.exit.if.end_crit_edge, %twl4030bci_state.exit.thread
  %retval.0.i191 = phi i32 [ %conv12.i, %twl4030bci_state.exit.thread ], [ %call.i.i.i, %twl4030bci_state.exit.if.end_crit_edge ]
  %13 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %psy, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp2 = icmp eq i32 %16, 4
  %is_charging.0.v = select i1 %cmp2, i32 16, i32 32
  %is_charging.0 = and i32 %is_charging.0.v, %retval.0.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_charging.0)
  %tobool.not = icmp eq i32 %is_charging.0, 0
  br i1 %tobool.not, label %if.then6, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %s) #7
  %17 = ptrtoint ptr %s to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %s, align 1, !annotation !171
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %s, i8 noundef zeroext 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8 = icmp slt i32 %call.i.i, 0
  br i1 %cmp8, label %cleanup.thread, label %if.end10

cleanup.thread:                                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %s) #7
  br label %cleanup101

if.end10:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %psy, align 8
  %type12 = getelementptr inbounds %struct.power_supply_desc, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp13 = icmp eq i32 %21, 4
  %22 = ptrtoint ptr %s to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %s, align 1
  %. = select i1 %cmp13, i8 1, i8 2
  %24 = and i8 %23, %.
  %is_charging.1 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool20.not = icmp eq i8 %24, 0
  %spec.select = select i1 %tobool20.not, i32 %retval.0.i191, i32 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %s) #7
  br label %if.end23

if.end23:                                         ; preds = %if.end10, %if.end.if.end23_crit_edge
  %is_charging.3 = phi i32 [ %is_charging.0, %if.end.if.end23_crit_edge ], [ %is_charging.1, %if.end10 ]
  %state.2 = phi i32 [ %retval.0.i191, %if.end.if.end23_crit_edge ], [ %spec.select, %if.end10 ]
  %25 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %psp, label %if.end23.cleanup101_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb29
    i32 17, label %sw.bb51
    i32 4, label %sw.bb60
    i32 38, label %sw.bb65
  ]

if.end23.cleanup101_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_charging.3)
  %tobool24.not = icmp eq i32 %is_charging.3, 0
  br i1 %tobool24.not, label %if.else27, label %if.then25

if.then25:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %state.2, 15
  %26 = add nsw i32 %and.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %27 = icmp ult i32 %26, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %and.i)
  %cmp2.i = icmp ult i32 %and.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp4.not.i = icmp eq i32 %and.i, 15
  %or.cond11.i = or i1 %cmp2.i, %cmp4.not.i
  %spec.select.i = select i1 %or.cond11.i, i32 3, i32 4
  %retval.0.i151 = select i1 %27, i32 1, i32 %spec.select.i
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i151, ptr %val, align 4
  br label %cleanup101

if.else27:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %val, align 4
  br label %cleanup101

sw.bb29:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_charging.3)
  %tobool30.not = icmp eq i32 %is_charging.3, 0
  br i1 %tobool30.not, label %sw.bb29.cleanup101_crit_edge, label %if.end32

sw.bb29.cleanup101_crit_edge:                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end32:                                         ; preds = %sw.bb29
  %30 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %psy, align 8
  %type34 = getelementptr inbounds %struct.power_supply_desc, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %type34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp35 = icmp eq i32 %33, 4
  br i1 %cmp35, label %if.then37, label %if.else43

if.then37:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %val.i, align 1, !annotation !171
  %call.i.i.i152 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 13, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i152)
  %tobool.not.i153 = icmp eq i32 %call.i.i.i152, 0
  br i1 %tobool.not.i153, label %if.end.i, label %if.then37.twl4030bci_read_adc_val.exit_crit_edge

if.then37.twl4030bci_read_adc_val.exit_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit

if.end.i:                                         ; preds = %if.then37
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i, align 1
  %call.i.i14.i = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i, i8 noundef zeroext 12, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool4.not.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool4.not.i, label %twl4030bci_read_adc_val.exit.thread, label %if.end.i.twl4030bci_read_adc_val.exit_crit_edge

if.end.i.twl4030bci_read_adc_val.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit

twl4030bci_read_adc_val.exit.thread:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = and i8 %36, 3
  %and.i154 = zext i8 %37 to i32
  %shl.i = shl nuw nsw i32 %and.i154, 8
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %val.i, align 1
  %conv7.i = zext i8 %39 to i32
  %or.i = or i32 %shl.i, %conv7.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  br label %if.end42

twl4030bci_read_adc_val.exit:                     ; preds = %if.end.i.twl4030bci_read_adc_val.exit_crit_edge, %if.then37.twl4030bci_read_adc_val.exit_crit_edge
  %retval.0.i155 = phi i32 [ %call.i.i.i152, %if.then37.twl4030bci_read_adc_val.exit_crit_edge ], [ %call.i.i14.i, %if.end.i.twl4030bci_read_adc_val.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i155)
  %cmp39 = icmp slt i32 %retval.0.i155, 0
  br i1 %cmp39, label %twl4030bci_read_adc_val.exit.cleanup101_crit_edge, label %twl4030bci_read_adc_val.exit.if.end42_crit_edge

twl4030bci_read_adc_val.exit.if.end42_crit_edge:  ; preds = %twl4030bci_read_adc_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

twl4030bci_read_adc_val.exit.cleanup101_crit_edge: ; preds = %twl4030bci_read_adc_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end42:                                         ; preds = %twl4030bci_read_adc_val.exit.if.end42_crit_edge, %twl4030bci_read_adc_val.exit.thread
  %retval.0.i155196 = phi i32 [ %or.i, %twl4030bci_read_adc_val.exit.thread ], [ %retval.0.i155, %twl4030bci_read_adc_val.exit.if.end42_crit_edge ]
  %mul = mul i32 %retval.0.i155196, 6843
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %val, align 4
  br label %cleanup101

if.else43:                                        ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i156) #7
  %41 = ptrtoint ptr %val.i156 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %val.i156, align 1, !annotation !171
  %call.i.i.i157 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i156, i8 noundef zeroext 11, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i157)
  %tobool.not.i158 = icmp eq i32 %call.i.i.i157, 0
  br i1 %tobool.not.i158, label %if.end.i161, label %if.else43.twl4030bci_read_adc_val.exit168_crit_edge

if.else43.twl4030bci_read_adc_val.exit168_crit_edge: ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit168

if.end.i161:                                      ; preds = %if.else43
  %42 = ptrtoint ptr %val.i156 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i156, align 1
  %call.i.i14.i159 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i156, i8 noundef zeroext 10, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i159)
  %tobool4.not.i160 = icmp eq i32 %call.i.i14.i159, 0
  br i1 %tobool4.not.i160, label %twl4030bci_read_adc_val.exit168.thread, label %if.end.i161.twl4030bci_read_adc_val.exit168_crit_edge

if.end.i161.twl4030bci_read_adc_val.exit168_crit_edge: ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit168

twl4030bci_read_adc_val.exit168.thread:           ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #9
  %44 = and i8 %43, 3
  %and.i162 = zext i8 %44 to i32
  %shl.i163 = shl nuw nsw i32 %and.i162, 8
  %45 = ptrtoint ptr %val.i156 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %val.i156, align 1
  %conv7.i164 = zext i8 %46 to i32
  %or.i165 = or i32 %shl.i163, %conv7.i164
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i156) #7
  br label %if.end48

twl4030bci_read_adc_val.exit168:                  ; preds = %if.end.i161.twl4030bci_read_adc_val.exit168_crit_edge, %if.else43.twl4030bci_read_adc_val.exit168_crit_edge
  %retval.0.i167 = phi i32 [ %call.i.i.i157, %if.else43.twl4030bci_read_adc_val.exit168_crit_edge ], [ %call.i.i14.i159, %if.end.i161.twl4030bci_read_adc_val.exit168_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i167)
  %cmp45 = icmp slt i32 %retval.0.i167, 0
  br i1 %cmp45, label %twl4030bci_read_adc_val.exit168.cleanup101_crit_edge, label %twl4030bci_read_adc_val.exit168.if.end48_crit_edge

twl4030bci_read_adc_val.exit168.if.end48_crit_edge: ; preds = %twl4030bci_read_adc_val.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

twl4030bci_read_adc_val.exit168.cleanup101_crit_edge: ; preds = %twl4030bci_read_adc_val.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end48:                                         ; preds = %twl4030bci_read_adc_val.exit168.if.end48_crit_edge, %twl4030bci_read_adc_val.exit168.thread
  %retval.0.i167199 = phi i32 [ %or.i165, %twl4030bci_read_adc_val.exit168.thread ], [ %retval.0.i167, %twl4030bci_read_adc_val.exit168.if.end48_crit_edge ]
  %mul49 = mul i32 %retval.0.i167199, 9775
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul49, ptr %val, align 4
  br label %cleanup101

sw.bb51:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_charging.3)
  %tobool52.not = icmp eq i32 %is_charging.3, 0
  br i1 %tobool52.not, label %sw.bb51.cleanup101_crit_edge, label %if.end54

sw.bb51.cleanup101_crit_edge:                     ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end54:                                         ; preds = %sw.bb51
  %call55 = call fastcc i32 @twl4030_charger_get_current()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end54.cleanup101_crit_edge, label %if.end59

if.end54.cleanup101_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call55, ptr %val, align 4
  br label %cleanup101

sw.bb60:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_charging.3)
  %tobool61.not = icmp eq i32 %is_charging.3, 0
  br i1 %tobool61.not, label %sw.bb60.land.end_crit_edge, label %land.rhs

sw.bb60.land.end_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  %and.i169 = and i32 %state.2, 15
  %49 = add nsw i32 %and.i169, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %50 = icmp ult i32 %49, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and.i169)
  %cmp2.i170 = icmp ugt i32 %and.i169, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i169)
  %cmp4.not.i171 = icmp ne i32 %and.i169, 15
  %not.or.cond11.i172 = and i1 %cmp2.i170, %cmp4.not.i171
  %cmp63 = or i1 %50, %not.or.cond11.i172
  %phi.cast = zext i1 %cmp63 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb60.land.end_crit_edge
  %51 = phi i32 [ 0, %sw.bb60.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val, align 4
  br label %cleanup101

sw.bb65:                                          ; preds = %if.end23
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %val, align 4
  %54 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %psy, align 8
  %type67 = getelementptr inbounds %struct.power_supply_desc, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %type67 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %57)
  %cmp68.not = icmp eq i32 %57, 4
  %ac_is_active75 = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 15
  %58 = ptrtoint ptr %ac_is_active75 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %ac_is_active75, align 4, !range !172
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool76.not = icmp eq i8 %59, 0
  br i1 %cmp68.not, label %if.else74, label %if.then70

if.then70:                                        ; preds = %sw.bb65
  br i1 %tobool76.not, label %if.then72, label %if.then70.if.end79thread-pre-split_crit_edge

if.then70.if.end79thread-pre-split_crit_edge:     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79thread-pre-split

if.then72:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %ac_cur = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 13
  %60 = ptrtoint ptr %ac_cur to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ac_cur, align 4
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %val, align 4
  br label %if.end79

if.else74:                                        ; preds = %sw.bb65
  br i1 %tobool76.not, label %if.else74.if.end79thread-pre-split_crit_edge, label %if.then77

if.else74.if.end79thread-pre-split_crit_edge:     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79thread-pre-split

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  %usb_cur_target = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 18
  %63 = ptrtoint ptr %usb_cur_target to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_cur_target, align 4
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %val, align 4
  br label %if.end79

if.end79thread-pre-split:                         ; preds = %if.else74.if.end79thread-pre-split_crit_edge, %if.then70.if.end79thread-pre-split_crit_edge
  %66 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr = load i32, ptr %val, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.end79thread-pre-split, %if.then77, %if.then72
  %67 = phi i32 [ %.pr, %if.end79thread-pre-split ], [ %64, %if.then77 ], [ %61, %if.then72 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp80 = icmp slt i32 %67, 0
  br i1 %cmp80, label %if.then82, label %if.end79.cleanup101_crit_edge

if.end79.cleanup101_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.then82:                                        ; preds = %if.end79
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bcictl1) #7
  %68 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %bcictl1, align 1, !annotation !171
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i175) #7
  %69 = ptrtoint ptr %val.i175 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %val.i175, align 1, !annotation !171
  %call.i.i.i176 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i175, i8 noundef zeroext 40, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i176)
  %tobool.not.i177 = icmp eq i32 %call.i.i.i176, 0
  br i1 %tobool.not.i177, label %if.end.i180, label %if.then82.twl4030bci_read_adc_val.exit187_crit_edge

if.then82.twl4030bci_read_adc_val.exit187_crit_edge: ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit187

if.end.i180:                                      ; preds = %if.then82
  %70 = ptrtoint ptr %val.i175 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %val.i175, align 1
  %call.i.i14.i178 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %val.i175, i8 noundef zeroext 39, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i178)
  %tobool4.not.i179 = icmp eq i32 %call.i.i14.i178, 0
  br i1 %tobool4.not.i179, label %twl4030bci_read_adc_val.exit187.thread, label %if.end.i180.twl4030bci_read_adc_val.exit187_crit_edge

if.end.i180.twl4030bci_read_adc_val.exit187_crit_edge: ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030bci_read_adc_val.exit187

twl4030bci_read_adc_val.exit187.thread:           ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #9
  %72 = and i8 %71, 3
  %and.i181 = zext i8 %72 to i32
  %shl.i182 = shl nuw nsw i32 %and.i181, 8
  %73 = ptrtoint ptr %val.i175 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %val.i175, align 1
  %conv7.i183 = zext i8 %74 to i32
  %or.i184 = or i32 %shl.i182, %conv7.i183
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i175) #7
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i184, ptr %val, align 4
  br label %if.end87

twl4030bci_read_adc_val.exit187:                  ; preds = %if.end.i180.twl4030bci_read_adc_val.exit187_crit_edge, %if.then82.twl4030bci_read_adc_val.exit187_crit_edge
  %retval.0.i186 = phi i32 [ %call.i.i.i176, %if.then82.twl4030bci_read_adc_val.exit187_crit_edge ], [ %call.i.i14.i178, %if.end.i180.twl4030bci_read_adc_val.exit187_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i175) #7
  %76 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i186, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i186)
  %cmp84 = icmp slt i32 %retval.0.i186, 0
  br i1 %cmp84, label %twl4030bci_read_adc_val.exit187.cleanup97.thread_crit_edge, label %twl4030bci_read_adc_val.exit187.if.end87_crit_edge

twl4030bci_read_adc_val.exit187.if.end87_crit_edge: ; preds = %twl4030bci_read_adc_val.exit187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

twl4030bci_read_adc_val.exit187.cleanup97.thread_crit_edge: ; preds = %twl4030bci_read_adc_val.exit187
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97.thread

if.end87:                                         ; preds = %twl4030bci_read_adc_val.exit187.if.end87_crit_edge, %twl4030bci_read_adc_val.exit187.thread
  %call.i.i188 = call i32 @twl_i2c_read(i8 noundef zeroext 2, ptr noundef nonnull %bcictl1, i8 noundef zeroext 35, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i188)
  %cmp89 = icmp slt i32 %call.i.i188, 0
  br i1 %cmp89, label %if.end87.cleanup97.thread_crit_edge, label %cleanup97

if.end87.cleanup97.thread_crit_edge:              ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup97.thread

cleanup97.thread:                                 ; preds = %if.end87.cleanup97.thread_crit_edge, %twl4030bci_read_adc_val.exit187.cleanup97.thread_crit_edge
  %retval.2.ph = phi i32 [ %call.i.i188, %if.end87.cleanup97.thread_crit_edge ], [ %retval.0.i186, %twl4030bci_read_adc_val.exit187.cleanup97.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcictl1) #7
  br label %cleanup101

cleanup97:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val, align 4
  %79 = ptrtoint ptr %bcictl1 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %bcictl1, align 1
  %81 = and i8 %80, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool95.not = icmp eq i8 %81, 0
  %mul.i = mul i32 %78, 16618
  %sub.i = add i32 %mul.i, -8500000
  %..i = select i1 %tobool95.not, i32 10, i32 5
  %div3.i = sdiv i32 %sub.i, %..i
  %82 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div3.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bcictl1) #7
  br label %cleanup101

cleanup101:                                       ; preds = %cleanup97, %cleanup97.thread, %if.end79.cleanup101_crit_edge, %land.end, %if.end59, %if.end54.cleanup101_crit_edge, %sw.bb51.cleanup101_crit_edge, %if.end48, %twl4030bci_read_adc_val.exit168.cleanup101_crit_edge, %if.end42, %twl4030bci_read_adc_val.exit.cleanup101_crit_edge, %sw.bb29.cleanup101_crit_edge, %if.else27, %if.then25, %if.end23.cleanup101_crit_edge, %cleanup.thread, %twl4030bci_state.exit.cleanup101_crit_edge
  %retval.3 = phi i32 [ %call.i.i.i, %twl4030bci_state.exit.cleanup101_crit_edge ], [ -61, %sw.bb29.cleanup101_crit_edge ], [ %retval.0.i155, %twl4030bci_read_adc_val.exit.cleanup101_crit_edge ], [ %retval.0.i167, %twl4030bci_read_adc_val.exit168.cleanup101_crit_edge ], [ -61, %sw.bb51.cleanup101_crit_edge ], [ %call55, %if.end54.cleanup101_crit_edge ], [ -22, %if.end23.cleanup101_crit_edge ], [ %call.i.i, %cleanup.thread ], [ %retval.2.ph, %cleanup97.thread ], [ 0, %cleanup97 ], [ 0, %if.end79.cleanup101_crit_edge ], [ 0, %if.end42 ], [ 0, %if.end48 ], [ 0, %if.then25 ], [ 0, %if.else27 ], [ 0, %land.end ], [ 0, %if.end59 ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_set_property(ptr nocapture noundef readonly %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.power_supply, ptr %psy, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psy, align 8
  %type = getelementptr inbounds %struct.power_supply_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp eq i32 %7, 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %ac_cur = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 13
  %usb_cur_target = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 18
  %ac_cur.sink = select i1 %cmp, ptr %usb_cur_target, ptr %ac_cur
  %10 = ptrtoint ptr %ac_cur.sink to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ac_cur.sink, align 4
  tail call fastcc void @twl4030_charger_update_current(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_bci_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_mode_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %usb_mode = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 16
  %ac = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac, align 4
  %dev1 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 7
  %cmp = icmp eq ptr %dev1, %dev
  %ac_mode = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 17
  %spec.select = select i1 %cmp, ptr %ac_mode, ptr %usb_mode
  %6 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %6)
  %mode.0 = load i32, ptr %spec.select, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.0)
  %cmp3 = icmp eq i32 %mode.0, 0
  %7 = load ptr, ptr @modes, align 4
  br i1 %cmp3, label %for.inc.thread, label %for.inc

for.inc.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.69, ptr noundef %7) #7
  br label %for.inc.1

for.inc:                                          ; preds = %entry
  %call9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.70, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode.0)
  %cmp3.1 = icmp eq i32 %mode.0, 1
  br i1 %cmp3.1, label %for.inc.1.thread, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1.thread:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call9
  %sub.1 = sub i32 4096, %call9
  %8 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @modes, i32 0, i32 1), align 4
  %call5.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.69, ptr noundef %8) #7
  %len.1.139 = add i32 %call5.1, %call9
  br label %for.inc.2

for.inc.1:                                        ; preds = %for.inc.for.inc.1_crit_edge, %for.inc.thread
  %call5.pn36 = phi i32 [ %call5, %for.inc.thread ], [ %call9, %for.inc.for.inc.1_crit_edge ]
  %add.ptr6.1 = getelementptr i8, ptr %buf, i32 %call5.pn36
  %sub7.1 = sub i32 4096, %call5.pn36
  %9 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @modes, i32 0, i32 1), align 4
  %call9.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr6.1, i32 noundef %sub7.1, ptr noundef nonnull @.str.70, ptr noundef %9) #7
  %len.1.1 = add i32 %call9.1, %call5.pn36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode.0)
  %cmp3.2 = icmp eq i32 %mode.0, 2
  %spec.select44 = select i1 %cmp3.2, ptr @.str.69, ptr @.str.70
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1, %for.inc.1.thread
  %len.1.1.sink43 = phi i32 [ %len.1.139, %for.inc.1.thread ], [ %len.1.1, %for.inc.1 ]
  %.str.69.sink = phi ptr [ @.str.70, %for.inc.1.thread ], [ %spec.select44, %for.inc.1 ]
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %len.1.1.sink43
  %sub.2 = sub i32 4096, %len.1.1.sink43
  %10 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @modes, i32 0, i32 2), align 4
  %call5.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull %.str.69.sink, ptr noundef %10) #7
  %len.1.2 = add i32 %call5.2, %len.1.1.sink43
  %sub12 = add i32 %len.1.2, -1
  %arrayidx13 = getelementptr i8, ptr %buf, i32 %sub12
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %arrayidx13, align 1
  ret i32 %len.1.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_bci_mode_store(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %n) #2 align 64 {
entry:
  %val.addr.i.i.i4.i = alloca i8, align 1
  %val.i.i5.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @__sysfs_match_string(ptr noundef nonnull @modes, i32 noundef 3, ptr noundef %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ac, align 4
  %dev2 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 7
  %cmp3 = icmp eq ptr %dev2, %dev
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp5 = icmp eq i32 %call1, 2
  br i1 %cmp5, label %if.then4.cleanup_crit_edge, label %if.end7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then4
  %ac_mode.i = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i5.i) #7
  %6 = ptrtoint ptr %val.i.i5.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %val.i.i5.i, align 1
  %call.i.i.i6.i = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %val.i.i5.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i6.i)
  %tobool.not.i.i7.i = icmp eq i32 %call.i.i.i6.i, 0
  br i1 %tobool.not.i.i7.i, label %if.end.i.i10.i, label %if.end7.twl4030_charger_enable_ac.exit_crit_edge

if.end7.twl4030_charger_enable_ac.exit_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %twl4030_charger_enable_ac.exit

if.end.i.i10.i:                                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val.i.i5.i, align 1
  %and.i.i.i = and i8 %8, -50
  %or11.i.i8.i = or i8 %and.i.i.i, 48
  store i8 %or11.i.i8.i, ptr %val.i.i5.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i4.i) #7
  %9 = ptrtoint ptr %val.addr.i.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %or11.i.i8.i, ptr %val.addr.i.i.i4.i, align 1
  %call.i12.i.i9.i = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %val.addr.i.i.i4.i, i8 noundef zeroext 7, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i4.i) #7
  br label %twl4030_charger_enable_ac.exit

twl4030_charger_enable_ac.exit:                   ; preds = %if.end.i.i10.i, %if.end7.twl4030_charger_enable_ac.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i5.i) #7
  %10 = ptrtoint ptr %ac_mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call1, ptr %ac_mode.i, align 4
  %call9 = call fastcc i32 @twl4030_charger_enable_ac(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call fastcc i32 @twl4030_charger_enable_usb(ptr noundef %3, i1 noundef zeroext false)
  %usb_mode = getelementptr inbounds %struct.twl4030_bci, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %usb_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1, ptr %usb_mode, align 4
  %call11 = tail call fastcc i32 @twl4030_charger_enable_usb(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %twl4030_charger_enable_ac.exit
  %status.0 = phi i32 [ %call9, %twl4030_charger_enable_ac.exit ], [ %call11, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp13 = icmp eq i32 %status.0, 0
  %n.status.0 = select i1 %cmp13, i32 %n, i32 %status.0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n.status.0, %if.end12 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !100, !101, !102, !104, !105, !107, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !159, !160}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167, !168, !169}
!llvm.ident = !{!170}

!0 = !{ptr @__param_allow_usb, !1, !"__param_allow_usb", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/twl4030_charger.c", i32 108, i32 1}
!2 = !{ptr @__UNIQUE_ID_allow_usbtype293, !1, !"__UNIQUE_ID_allow_usbtype293", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_allow_usb294, !4, !"__UNIQUE_ID_allow_usb294", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/twl4030_charger.c", i32 109, i32 1}
!5 = !{ptr @__initcall__kmod_twl4030_charger__300_1145_twl4030_bci_driver_init6, !6, !"__initcall__kmod_twl4030_charger__300_1145_twl4030_bci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1145, i32 1}
!7 = !{ptr @__exitcall_twl4030_bci_driver_exit, !6, !"__exitcall_twl4030_bci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author301, !9, !"__UNIQUE_ID_author301", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1147, i32 1}
!10 = !{ptr @__UNIQUE_ID_description302, !11, !"__UNIQUE_ID_description302", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1148, i32 1}
!12 = !{ptr @__UNIQUE_ID_file303, !13, !"__UNIQUE_ID_file303", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1149, i32 1}
!14 = !{ptr @__UNIQUE_ID_license304, !13, !"__UNIQUE_ID_license304", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias305, !16, !"__UNIQUE_ID_alias305", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1150, i32 1}
!17 = !{ptr @allow_usb, !18, !"allow_usb", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/twl4030_charger.c", i32 107, i32 13}
!19 = !{ptr @__param_str_allow_usb, !1, !"__param_str_allow_usb", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1141, i32 11}
!22 = !{ptr @twl4030_bci_driver, !23, !"twl4030_bci_driver", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1137, i32 31}
!24 = !{ptr @twl4030_bci_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1007, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @twl4030_bci_probe.__key.2, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1008, i32 2}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @twl4030_bci_probe.__key.4, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1010, i32 54}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1015, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @twl4030_bci_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @twl4030_bci_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1024, i32 9}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1034, i32 5}
!46 = !{ptr @twl4030_bci_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @twl4030_bci_probe._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1045, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @twl4030_bci_probe._entry.16, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @twl4030_bci_probe._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1053, i32 3}
!55 = !{ptr @twl4030_bci_probe._entry.20, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @twl4030_bci_probe._entry_ptr.22, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1061, i32 3}
!59 = !{ptr @twl4030_bci_probe._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @twl4030_bci_probe._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @twl4030_bci_probe._entry.26, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1069, i32 3}
!63 = !{ptr @twl4030_bci_probe._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1080, i32 3}
!66 = !{ptr @twl4030_bci_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @twl4030_bci_probe._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @twl4030_bci_probe._entry.31, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1088, i32 3}
!70 = !{ptr @twl4030_bci_probe._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1092, i32 3}
!73 = !{ptr @twl4030_bci_probe._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @twl4030_bci_probe._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @twl4030_bci_probe._entry.36, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1094, i32 3}
!77 = !{ptr @twl4030_bci_probe._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/twl4030_charger.c", i32 942, i32 31}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/twl4030_charger.c", i32 944, i32 31}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/twl4030_charger.c", i32 414, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @twl4030_current_worker.__UNIQUE_ID_ddebug295, !83, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/twl4030_charger.c", i32 669, i32 2}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @twl4030_bci_usb_ncb.__UNIQUE_ID_ddebug298, !88, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/twl4030_charger.c", i32 957, i32 11}
!93 = !{ptr @twl4030_bci_ac_desc, !94, !"twl4030_bci_ac_desc", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/twl4030_charger.c", i32 956, i32 39}
!95 = !{ptr @twl4030_charger_props, !96, !"twl4030_charger_props", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/twl4030_charger.c", i32 920, i32 35}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/twl4030_charger.c", i32 768, i32 3}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @twl4030bci_state._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @twl4030bci_state._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/twl4030_charger.c", i32 772, i32 2}
!104 = !{ptr @twl4030bci_state.__UNIQUE_ID_ddebug299, !103, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/twl4030_charger.c", i32 967, i32 11}
!107 = !{ptr @twl4030_bci_usb_desc, !108, !"twl4030_bci_usb_desc", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/twl4030_charger.c", i32 966, i32 39}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/twl4030_charger.c", i32 592, i32 2}
!111 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @twl4030_charger_interrupt.__UNIQUE_ID_ddebug296, !110, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/twl4030_charger.c", i32 621, i32 2}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @twl4030_bci_interrupt.__UNIQUE_ID_ddebug297, !114, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/twl4030_charger.c", i32 632, i32 3}
!119 = !{ptr @twl4030_bci_interrupt._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @twl4030_bci_interrupt._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/twl4030_charger.c", i32 635, i32 3}
!123 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @twl4030_bci_interrupt._entry.55, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @twl4030_bci_interrupt._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/twl4030_charger.c", i32 638, i32 3}
!128 = !{ptr @twl4030_bci_interrupt._entry.59, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @twl4030_bci_interrupt._entry_ptr.61, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/twl4030_charger.c", i32 641, i32 3}
!132 = !{ptr @twl4030_bci_interrupt._entry.62, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @twl4030_bci_interrupt._entry_ptr.64, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/twl4030_charger.c", i32 644, i32 3}
!136 = !{ptr @twl4030_bci_interrupt._entry.65, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @twl4030_bci_interrupt._entry_ptr.67, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/twl4030_charger.c", i32 737, i32 8}
!140 = !{ptr @dev_attr_mode, !139, !"dev_attr_mode", i1 false, i1 false}
!141 = !{ptr @.str.69, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/twl4030_charger.c", i32 730, i32 6}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/twl4030_charger.c", i32 733, i32 6}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/twl4030_charger.c", i32 152, i32 32}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/twl4030_charger.c", i32 152, i32 39}
!149 = !{ptr @.str.73, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/power/supply/twl4030_charger.c", i32 152, i32 47}
!151 = !{ptr @modes, !152, !"modes", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/twl4030_charger.c", i32 152, i32 20}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/twl4030_charger.c", i32 461, i32 5}
!155 = !{ptr @twl4030_charger_enable_usb._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @twl4030_charger_enable_usb._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @twl4030_charger_enable_usb._entry.75, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/twl4030_charger.c", i32 480, i32 5}
!159 = !{ptr @twl4030_charger_enable_usb._entry_ptr.76, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @twl_bci_of_match, !161, !"twl_bci_of_match", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/twl4030_charger.c", i32 1131, i32 34}
!162 = !{i32 1, !"wchar_size", i32 2}
!163 = !{i32 1, !"min_enum_size", i32 4}
!164 = !{i32 8, !"branch-target-enforcement", i32 0}
!165 = !{i32 8, !"sign-return-address", i32 0}
!166 = !{i32 8, !"sign-return-address-all", i32 0}
!167 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!168 = !{i32 7, !"uwtable", i32 1}
!169 = !{i32 7, !"frame-pointer", i32 2}
!170 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!171 = !{!"auto-init"}
!172 = !{i8 0, i8 2}
!173 = !{i64 2148981279, i64 2148981284, i64 2148981297, i64 2148981341, i64 2148981375, i64 2148981396}
